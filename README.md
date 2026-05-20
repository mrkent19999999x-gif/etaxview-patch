# etaxview-patch

Reverse engineering project for **iTaxViewer 2.7.3** - Vietnamese tax declaration XML viewer by General Department of Taxation (GDT Vietnam).

## Overview

| Item | Value |
|------|-------|
| **App** | iTaxViewer 2.7.3 |
| **Type** | Java 8 / SWT Windows desktop |
| **Developer** | Tổng cục Thuế (GDT Vietnam) |
| **Main JAR** | `extracted/app/itaxviewer.jar` (213 KB) |
| **Decompiled** | 133 classes, 164 Java files |
| **Bypass Status** | ✅ XML Signature + Certificate + OCSP |

## What is iTaxViewer?

iTaxViewer is the official desktop application for viewing electronically-signed tax declaration XML files in Vietnam. It supports:

- **Tax declarations** (GTGT/VAT, TNCN, TNDN, TTDB, KHBS...)
- **Tax notifications** from tax authorities
- **Tax registration** documents
- **Electronic invoice** forms
- **Digital signature verification** (XML Signature, RSA-SHA1, X.509, OCSP)

## What is etaxview-patch?

This project provides tools to **bypass the digital signature verification** in iTaxViewer, allowing signed XML files to be viewed without requiring valid certificates or network access to OCSP servers.

Two bypass methods are available:
1. **Java Agent** - Bytecode transformation at class load time (recommended)
2. **Frida** - Runtime hooking without any file modification

## Quick Start

### 1. Setup Environment

```bash
cd /root/etaxview-patch
bash scripts/setup.sh
```

### 2. Decompile JAR

```bash
export JAVA_HOME=/opt/jdk-11.0.26+4-jre
jadx -d reports/jadx-output/itaxviewer extracted/app/itaxviewer.jar
jadx -d reports/jadx-output/updater extracted/app/update/updater.jar
```

### 3. Run with Bypass

#### Option A: Java Agent (Recommended)

```bash
# Copy agent JAR to iTaxViewer install directory on Windows
# Then run:
jre\bin\javaw.exe -javaagent:itaxviewer-signature-bypass-agent.jar -jar itaxviewer.jar

# Or use the provided batch script:
launch-bypass.bat
```

**Permanent install via Windows Registry:**
```bash
java -jar itaxviewer-signature-bypass-agent.jar
# Creates install-agent.reg -> click Yes in Registry Editor
# iTaxViewer will auto-bypass on every launch
```

#### Option B: Frida (Runtime)

```bash
frida -n iTaxViewer.exe -l scripts/frida/signature-bypass.js --no-pause
```

## Architecture

### Application Flow

```
iTaxViewer.exe (Inno Setup launcher)
    └── jre\bin\javaw.exe -jar itaxviewer.jar
            └── TaxViewer.main()
                    ├── ConfigInfo → Load catalogs + certificates
                    ├── createMenuToolbar() → SWT UI
                    ├── viewFile() → HSoThueViewer → XSLT transform
                    └── checkVersion() → AutoUpdate from gdt.gov.vn
```

### Signature Verification System

```
Open signed XML file
    │
    ▼
HSoThueViewer.loadAndDisplay()
    │
    ▼
IHTKKXMLSignature.verifyXMLSignature()
    │
    ├── 1. XML Crypto Signature (RSA-SHA1, C14N)
    ├── 2. Certificate Chain Validation (against root/trust stores)
    └── 3. OCSP Revocation Check (HTTP request)

ALL pass → SIG_STATUS_GOOD (green)
ANY fail → SIG_STATUS_ERROR (red)
```

### Bypass Mechanism

The agent targets **6 methods** across **3 classes**:

| Class | Method | Purpose |
|-------|--------|---------|
| `IHTKKXMLSignature` | `verifyXMLSignature(XMLSignature, DOMValidateContext)` | XML crypto signature |
| `IHTKKXMLTemSignature` | `verifyXMLSignature(XMLSignature, DOMValidateContext)` | Legacy template signature |
| `CertVerifier` | `verifyCertificationChain(Date, X509Cert, X509Cert[])` | Certificate chain |
| `CertVerifier` | `verifyCertificate(X509Certificate)` | Single cert validation |
| `CertVerifier` | `checkRevocationStatus(X509Cert, X509Cert[])` | OCSP revocation (array) |
| `CertVerifier` | `checkRevocationStatus(X509Cert, X509Cert)` | OCSP revocation (single) |

## Project Structure

```
etaxview-patch/
├── source/                          # Original installer
│   └── iTaxViewer2.7.3.exe
│
├── extracted/                       # Extracted from Inno Setup
│   ├── app/
│   │   ├── itaxviewer.jar           # Main application (213 KB)
│   │   ├── itaxviewer_lib/          # Third-party libraries
│   │   │   ├── bcprov-jdk16-146.jar    # Bouncy Castle crypto
│   │   │   ├── pd4ml.jar               # HTML to PDF
│   │   │   ├── pdfbox-app-1.8.8.jar    # PDF manipulation
│   │   │   ├── swt.jar                 # Eclipse SWT UI
│   │   │   ├── ss_css2.jar             # CSS rendering
│   │   │   ├── commons-io-1.4.jar      # File I/O
│   │   │   ├── commons-lang3-3.3.2.jar # String utils
│   │   │   └── fonts.jar               # Vietnamese fonts
│   │   ├── data/xslt/               # 40+ XSLT templates
│   │   ├── certstore/               # Root & trust certificates
│   │   ├── image/                   # Icons
│   │   ├── infor/                   # Homepage
│   │   └── update/                  # Auto-update
│   └── pf/                          # PrimeFaces libs
│
├── reports/jadx-output/             # Decompiled source
│   ├── itaxviewer/sources/seatechit/ihtkk/tool/
│   │   ├── TaxViewer.java           # Entry point
│   │   ├── ConfigInfo.java          # Configuration
│   │   ├── signature/               # Signature system
│   │   │   ├── IHTKKXMLSignature.java      (831 lines)
│   │   │   ├── IHTKKXMLTemSignature.java   (416 lines)
│   │   │   ├── CertVerifier.java           (291 lines)
│   │   │   ├── XMLSignatureValidationResult.java
│   │   │   ├── X509KeySelector.java
│   │   │   └── X500PrincipalHelper.java
│   │   ├── taxview/                 # Viewer components
│   │   ├── taxdoc/                  # Tax document models
│   │   ├── taxreturn/               # Tax return models
│   │   ├── taxmessage/              # Tax messages
│   │   ├── autoupdate/              # Auto-update
│   │   └── utils/                   # Utilities
│   └── updater/sources/             # Updater JAR
│
├── agent/java-agent/                # Java Agent bypass
│   ├── src/
│   │   ├── Agent.java               # Agent entry + installer
│   │   └── SignatureBypassTransformer.java  # ASM transformer
│   ├── build.sh                     # Build script
│   ├── itaxviewer-signature-bypass-agent.jar  # Built agent (127 KB)
│   └── test/                        # E2E tests
│
├── scripts/frida/                   # Frida hook scripts
│   ├── signature-bypass.js          # Signature bypass
│   ├── ssl-unpin.js                 # SSL pinning bypass
│   └── crypto-trace.js              # Crypto tracing
│
├── scripts/
│   ├── setup.sh                     # Environment setup
│   ├── launch-bypass.bat            # Windows launcher
│   └── run-e2e-test.bat             # E2E test
│
├── mcp/                             # MCP server configs
│   ├── jadx-mcp.json                # JADX decompiler
│   └── fridora-mcp.json             # Frida instrumentation
│
├── docs/
│   └── USER-GUIDE-AND-REVIEW.md     # Detailed guide + code review
│
├── skill/SKILL.md                   # Opencode skill
├── agent/agent-prompt.md            # RE agent instructions
├── opencode.json                    # Opencode project config
└── AGENTS.md                        # Project rules
```

## Supported Tax Forms

| Category | Forms |
|----------|-------|
| **TKhaiThue** | GTGT (VAT), TNCN (Personal Income), TNDN (Corporate), TTDB, KHBS |
| **TBaoThue** | Tax notifications from authorities |
| **DKyThue** | Tax registration documents |
| **HquanForm** | Electronic invoice forms |
| **TBaoKDTT** | E-commerce tax notifications |
| **TBaoNtdt** | Electronic taxpayer notifications |

## Key Libraries

| Library | Purpose |
|---------|---------|
| Bouncy Castle (bcprov) | Cryptographic operations, OCSP |
| PD4ML | HTML to PDF conversion |
| PDFBox | PDF manipulation |
| Eclipse SWT | Native Windows UI |
| Apache Commons IO | File I/O utilities |
| Apache Commons Lang3 | String/object utilities |

## Development

### Build Agent

```bash
cd agent/java-agent
bash build.sh
```

### Search Decompiled Code

```bash
grep -r "verifyXMLSignature" reports/jadx-output/
grep -r "password" reports/jadx-output/
grep -r "http" reports/jadx-output/
```

### Run Tests

```bash
# On Windows, in iTaxViewer directory:
run-e2e-test.bat
```

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Agent JAR not found | Run `build.sh` first |
| Java not found | Set `JAVA_HOME=/opt/jdk-11.0.26+4-jre` |
| Frida can't find process | Make sure iTaxViewer is running |
| SSL unpin not working | App may not use standard JSSE |
| Signature still fails | Try Frida method instead of agent |

## Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0.0 | 2026-05 | Initial release: Java Agent + Frida bypass |

## Disclaimer

This project is for **educational and research purposes only**. Use at your own risk.
