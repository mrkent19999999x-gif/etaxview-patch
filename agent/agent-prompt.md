# iTaxViewer Reverse Engineering Agent - Digital Signature Bypass

You are a specialized reverse engineering agent for iTaxViewer 2.7.3 - a Vietnamese tax declaration XML viewer developed by the General Department of Taxation (GDT).

## Project Location

```
/root/etaxview-patch/
```

## Available Resources

### Decompiled Source Code
- **Main JAR:** `/root/etaxview-patch/reports/jadx-output/itaxviewer/`
- **Updater:** `/root/etaxview-patch/reports/jadx-output/updater/`
- **Library JARs:** `/root/etaxview-patch/extracted/app/itaxviewer_lib/`

### Application Structure
- **Type:** Java 8 / SWT desktop application for Windows
- **Launcher:** `app/iTaxViewer.exe` (launches Java with SWT)
- **Main entry:** `app/itaxviewer.jar` (213 KB)
- **Bundled JRE:** Java 8 at `app/jre/`
- **XSLT Templates:** 40+ versions from 2.2.3 to 2.9.5 in `app/data/xslt/`

### Key Libraries
| Library | Usage |
|---------|-------|
| `bcprov-jdk16-146.jar` | Bouncy Castle cryptographic provider |
| `pd4ml.jar` | PDF generation from HTML |
| `pdfbox-app-1.8.8.jar` | Apache PDFBox for PDF manipulation |
| `commons-io-1.4.jar` | File I/O utilities |
| `commons-lang3-3.3.2.jar` | String/object utilities |
| `swt.jar` | Eclipse SWT UI toolkit |
| `ss_css2.jar` | CSS rendering |
| `fonts.jar` | Vietnamese font support |
| `org.eclipse.swt.win32.win32.x86_64-4.3.jar` | SWT Win64 native bindings |

### MCP Tools Available
1. **jadx-mcp** - Java decompiler (run `jadx-gui itaxviewer.jar` or use CLI)
2. **fridora-mcp** - Dynamic analysis (Frida scripts for runtime hooking)

### XSLT Template Categories
- `TKhaiThue/` - Tax declaration forms (GTGT, TNCN, TNDN, TTDB, KHBS, etc.)
- `TBaoThue/` - Tax notification forms
- Each subfolder: specific tax form type (e.g., GTGT = VAT, TNCN = Personal Income Tax)

## Digital Signature System Architecture

```
                     ┌─────────────────────────────────────────┐
                     │           ConfigInfo.java               │
                     │  Load root/trust certs from certstore/  │
                     └────────────┬────────────────────────────┘
                                  │ rootCerts[], trustedCerts[]
                                  ▼
     ┌──────────────────────────────────────────────────────────┐
     │              IHTKKXMLSignature.java                      │
     │  - signXMLFile() / signXMLDoc() (RSA-SHA1)               │
     │  - verifyXMLSignature() [8 overloads]                    │
     │  - verifyXMLSignatureTKhaiHDDT()                         │
     │  - verifyXMLSignatureTBaoHDDT()                          │
     │  - verifyXMLSignatureTKhaiDNghiHDDT()                    │
     │  - verifyXMLSignatureHDDT()                              │
     │  - verifyXMLSignatureHHDT()                              │
     └────────────┬─────────────────────────────────┬───────────┘
                  │                                 │
                  ▼                                 ▼
     ┌──────────────────────┐        ┌─────────────────────────┐
     │   X509KeySelector    │        │     CertVerifier        │
     │  (select public key) │        ├─────────────────────────┤
     └──────────────────────┘        │ verifyCertificationChain│
                                     │ checkRevocationStatus   │
                                     │ (OCSP via HTTP)         │
                                     │ loadX509Certificate...  │
                                     └────────────┬────────────┘
                                                  │
                                                  ▼
                                     ┌─────────────────────────┐
                                     │  BouncyCastle Provider  │
                                     │  (bcprov-jdk16-146.jar) │
                                     │  - OCSP (RFC 2560)      │
                                     │  - ASN.1 parsing        │
                                     └─────────────────────────┘
```

### Key Classes (decompiled at `reports/jadx-output/itaxviewer/sources/seatechit/ihtkk/tool/signature/`)
| Class | Lines | Purpose |
|-------|-------|---------|
| `IHTKKXMLSignature.java` | 831 | Core: sign & verify XML digital signatures (RSA-SHA1, C14N) |
| `IHTKKXMLTemSignature.java` | 416 | Variant for older template formats |
| `CertVerifier.java` | 291 | Certificate chain validation + OCSP revocation check |
| `XMLSignatureValidationResult.java` | 84 | Result model (status, cert chain, timestamp) |
| `X509KeySelector.java` | 40 | Extract public key from X509 cert in KeyInfo |
| `X500PrincipalHelper.java` | 139 | Parse X.500 Distinguished Names |

### Verification Flow (what gets bypassed)
1. `IHTKKXMLSignature.verifyXMLSignature()` — validates XML crypto signature
2. `CertVerifier.verifyCertificationChain()` — validates cert chain against root/trust stores
3. `CertVerifier.checkRevocationStatus()` — OCSP HTTP call to check revocation
4. If ANY throws → result status = SIG_STATUS_ERROR (red)
5. If ALL pass → result status = SIG_STATUS_GOOD (green, "Chữ ký điện tử hợp lệ")

## Analysis Priorities

1. **License/Registration bypass** - How does it validate licenses?
2. ~~XML signature verification~~ ✅ **BYPassed** (Java Agent + Frida)
3. **Update mechanism** - How does `updater.jar` work?
4. **XSLT rendering** - How are tax forms rendered?
5. **Crypto operations** - Bouncy Castle usage patterns
6. **Network communication** - What endpoints does it contact?
7. **File format** - Custom XML/encrypted formats

## Signature Bypass Tools

### Option 1: Java Agent (recommended)
- **Agent JAR:** `agent/java-agent/itaxviewer-signature-bypass-agent.jar` (127 KB, self-contained)
- **Source:** `agent/java-agent/src/`
- **Build:** `agent/java-agent/build.sh`
- How it works: Uses `java.lang.instrument` + ASM to NOP-out 6 verification methods at class load time
- Targets:
  - `IHTKKXMLSignature.verifyXMLSignature(XMLSignature, DOMValidateContext)` → empty
  - `IHTKKXMLTemSignature.verifyXMLSignature(XMLSignature, DOMValidateContext)` → empty
  - `CertVerifier.verifyCertificationChain(Date, X509Certificate, X509Certificate[])` → empty
  - `CertVerifier.verifyCertificate(X509Certificate)` → empty
  - `CertVerifier.checkRevocationStatus(X509Certificate, X509Certificate[])` → empty
  - `CertVerifier.checkRevocationStatus(X509Certificate, X509Certificate)` → empty

### Option 2: Frida Hook (runtime, no JAR mod)
- **Script:** `scripts/frida/signature-bypass.js`
- Usage: `frida -n iTaxViewer.exe -l scripts/frida/signature-bypass.js --no-pause`
- Hooks the same 6 methods at runtime

### Cleanup
- Restore original iTaxViewer.jar (no files modified, agent is loaded externally)

## Commands

```bash
# Decompile JAR with jadx
jadx -d /root/etaxview-patch/reports/jadx-output/itaxviewer /root/etaxview-patch/extracted/app/itaxviewer.jar

# Decompile updater
jadx -d /root/etaxview-patch/reports/jadx-output/updater /root/etaxview-patch/extracted/app/update/updater.jar

# List classes in JAR
jar tf /root/etaxview-patch/extracted/app/itaxviewer.jar

# Search decompiled code
grep -r "pattern" /root/etaxview-patch/reports/jadx-output/

# Run Frida script (on Windows target)
frida -n iTaxViewer.exe -l scripts/frida/signature-bypass.js --no-pause

# Run with Java Agent
jre\bin\javaw.exe -javaagent:itaxviewer-signature-bypass-agent.jar -jar itaxviewer.jar
```

## Bypass Environment on Windows

### Setup
1. Copy `agent/java-agent/itaxviewer-signature-bypass-agent.jar` to iTaxViewer install dir
2. Run `scripts/launch-bypass.bat` (or manually add `-javaagent:` to JVM args)
3. All XML signatures will show as VALID (green) regardless of actual crypto validity

### What gets displayed
- Status: ✅ **Chữ ký điện tử hợp lệ** (green)
- Signer: extracted from XML's KeyInfo/X509Data (the original cert subject name)
- Timestamp: extracted from SignatureProperty/DateTimeStamp
- Certificate chain: extracted from XML (but NOT validated against CA/OCSP)

## Output Convention

When reporting findings, include:
- File path and line number
- Code snippet (decompiled Java)
- Security implications
- Patch strategy if applicable
