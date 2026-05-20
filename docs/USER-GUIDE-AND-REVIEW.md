# etaxview-patch - Hướng dẫn chi tiết & Code Review

## Phần 1: Project này là gì?

### 1.1 iTaxViewer - Ứng dụng gốc

**iTaxViewer 2.7.3** là phần mềm xem hồ sơ khai thuế điện tử của Việt Nam,
phát triển bởi **Tổng cục Thuế (GDT)**.

| Thuộc tính | Giá trị |
|---|---|
| Ngôn ngữ | Java 8 |
| UI Framework | Eclipse SWT (Windows native) |
| Nền tảng | Windows desktop |
| File cài đặt | `iTaxViewer2.7.3.exe` (Inno Setup installer) |
| Main JAR | `itaxviewer.jar` (213 KB) |
| Developer | Seatech IT / Tổng cục Thuế |

### 1.2 Ứng dụng làm gì?

iTaxViewer cho phép người dùng:

1. **Mở file XML hồ sơ thuế** - Các file `.xml` đã ký điện tử
2. **Hiển thị form thuế** - Render qua XSLT transformation thành HTML
3. **Xác minh chữ ký điện tử** - Kiểm tra XML Signature (RSA-SHA1) + certificate chain + OCSP revocation
4. **In hồ sơ** - Chuyển đổi sang PDF qua PD4ML
5. **Auto-update** - Tự động tải bản mới từ `ihtkkresource.gdt.gov.vn`

### 1.3 Các loại hồ sơ thuế hỗ trợ

| Loại | Mô tả |
|---|---|
| **TKhaiThue** | Tờ khai thuế (GTGT/VAT, TNCN, TNDN, TTDB, KHBS...) |
| **TBaoThue** | Thông báo thuế |
| **DKyThue** | Đăng ký thuế |
| **HquanForm** | Hóa đơn form |
| **TBaoKDTT** | Thông báo kê khai thương mại điện tử |
| **TBaoNtdt** | Thông báo người nộp thuế điện tử |

### 1.4 Project etaxview-patch là gì?

Đây là **project reverse engineering** để:
- Phân tích cách iTaxViewer hoạt động
- **Bypass xác minh chữ ký điện tử** (đã hoàn thành ✅)
- Cung cấp công cụ để chạy iTaxViewer mà không cần validate signature

---

## Phần 2: Cấu trúc project

```
etaxview-patch/
│
├── source/                          # File gốc
│   └── iTaxViewer2.7.3.exe          # Installer gốc (gitignored)
│
├── extracted/                       # Đã giải nén từ Inno Setup
│   ├── app/
│   │   ├── itaxviewer.jar           # Main application (213 KB)
│   │   ├── itaxviewer_lib/          # Third-party libraries
│   │   │   ├── bcprov-jdk16-146.jar    # Bouncy Castle (crypto)
│   │   │   ├── pd4ml.jar               # PDF generation
│   │   │   ├── pdfbox-app-1.8.8.jar    # PDF manipulation
│   │   │   ├── swt.jar                 # Eclipse SWT UI
│   │   │   ├── ss_css2.jar             # CSS rendering
│   │   │   ├── commons-io-1.4.jar      # File I/O utils
│   │   │   ├── commons-lang3-3.3.2.jar # String utils
│   │   │   └── fonts.jar               # Vietnamese fonts
│   │   ├── data/xslt/               # 40+ XSLT templates
│   │   ├── certstore/               # Root & trust certificates
│   │   ├── image/                   # Icons, images
│   │   ├── infor/                   # Homepage HTML
│   │   └── update/                  # Auto-update mechanism
│   └── pf/                          # PrimeFaces libs
│
├── reports/jadx-output/             # Decompiled source (133 classes)
│   ├── itaxviewer/sources/          # Main app decompiled
│   │   └── seatechit/ihtkk/tool/
│   │       ├── TaxViewer.java       # Entry point + UI
│   │       ├── ConfigInfo.java      # Configuration + cert loading
│   │       ├── signature/           # Digital signature system
│   │       │   ├── IHTKKXMLSignature.java      # Core verify (831 lines)
│   │       │   ├── IHTKKXMLTemSignature.java   # Legacy verify (416 lines)
│   │       │   ├── CertVerifier.java           # Cert chain + OCSP (291 lines)
│   │       │   ├── XMLSignatureValidationResult.java
│   │       │   ├── X509KeySelector.java
│   │       │   └── X500PrincipalHelper.java
│   │       ├── taxview/             # Viewer components
│   │       │   ├── TaxViewer.java   # Main window
│   │       │   ├── HSoThueViewer.java
│   │       │   ├── SignatureList.java
│   │       │   └── CertSelect.java
│   │       ├── taxdoc/              # Tax document models
│   │       ├── taxreturn/           # Tax return models
│   │       ├── taxmessage/          # Tax message models
│   │       ├── autoupdate/          # Auto-update
│   │       └── utils/               # Utilities
│   └── updater/sources/             # Updater JAR decompiled
│       └── com/seatech/tct/autoupdate/
│
├── agent/java-agent/                # Java Agent bypass
│   ├── src/
│   │   ├── Agent.java               # Agent entry + installer
│   │   └── SignatureBypassTransformer.java  # ASM bytecode transformer
│   ├── build.sh                     # Build script
│   ├── itaxviewer-signature-bypass-agent.jar  # Built agent (127 KB)
│   └── test/                        # E2E tests
│
├── scripts/frida/                   # Frida hook scripts
│   ├── signature-bypass.js          # Runtime signature bypass
│   ├── ssl-unpin.js                 # SSL pinning bypass
│   └── crypto-trace.js              # Crypto operation tracing
│
├── scripts/
│   ├── setup.sh                     # Environment setup
│   ├── launch-bypass.bat            # Windows launcher with bypass
│   └── run-e2e-test.bat             # End-to-end test
│
├── mcp/                             # MCP server configs
│   ├── jadx-mcp.json                # JADX decompiler MCP
│   └── fridora-mcp.json             # Frida instrumentation MCP
│
├── skill/SKILL.md                   # Opencode skill definition
├── agent/agent-prompt.md            # RE agent instructions
├── opencode.json                    # Opencode project config
└── AGENTS.md                        # Project rules
```

---

## Phần 3: Cách sử dụng

### 3.1 Setup môi trường

```bash
cd /root/etaxview-patch
bash scripts/setup.sh
```

Script sẽ cài:
- `jadx` - Java decompiler
- `frida-tools` - Dynamic instrumentation
- `innoextract` - Inno Setup extractor
- `unzip`, `p7zip-full`

### 3.2 Decompile JAR

```bash
export JAVA_HOME=/opt/jdk-11.0.26+4-jre
jadx -d reports/jadx-output/itaxviewer extracted/app/itaxviewer.jar
```

### 3.3 Chạy với Bypass (2 cách)

#### Cách 1: Java Agent (recommended)

```bash
# Trên Windows, copy agent JAR vào thư mục iTaxViewer
# Sau đó chạy:
jre\bin\javaw.exe -javaagent:itaxviewer-signature-bypass-agent.jar -jar itaxviewer.jar

# Hoặc dùng script có sẵn:
launch-bypass.bat
```

**Hoặc cài permanent qua Windows Registry:**
```bash
java -jar itaxviewer-signature-bypass-agent.jar
# -> Tạo install-agent.reg -> mở Registry Editor -> Click Yes
# -> Sau đó chạy iTaxViewer bình thường, bypass tự động active
```

#### Cách 2: Frida Hook (runtime, không cần modify gì)

```bash
frida -n iTaxViewer.exe -l scripts/frida/signature-bypass.js --no-pause
```

### 3.4 Các Frida scripts khác

```bash
# Bypass SSL pinning - xem network traffic
frida -n iTaxViewer.exe -l scripts/frida/ssl-unpin.js --no-pause

# Trace crypto operations
frida -n iTaxViewer.exe -l scripts/frida/crypto-trace.js --no-pause
```

### 3.5 Build lại Agent

```bash
cd agent/java-agent
bash build.sh
```

### 3.6 Search decompiled code

```bash
grep -r "verifyXMLSignature" reports/jadx-output/
grep -r "password" reports/jadx-output/
grep -r "http" reports/jadx-output/
```

---

## Phần 4: Kiến trúc ứng dụng

### 4.1 Luồng hoạt động chính

```
iTaxViewer.exe (launcher)
    │
    ▼
jre\bin\javaw.exe -jar itaxviewer.jar
    │
    ▼
TaxViewer.main()
    ├── init() → new ConfigInfo()
    │               ├── Load DMuc* catalogs (XML)
    │               ├── Load root/trust certificates
    │               └── Set homepage URL
    │
    ├── start()
    │       ├── createMenuToolbar()
    │       ├── createLayout()
    │       ├── openHomePage()  hoặc  viewFile(fileName)
    │       └── checkVersion() → AutoUpdate
    │
    └── Event loop (SWT readAndDispatch)
```

### 4.2 Hệ thống xác minh chữ ký

```
Mở file XML
    │
    ▼
HSoThueViewer.loadAndDisplay()
    │
    ▼
IHTKKXMLSignature.verifyXMLSignature()
    │
    ├── 1. XML Crypto Signature (RSA-SHA1, C14N)
    │       └── javax.xml.crypto.dsig.XMLSignature.validate()
    │
    ├── 2. Certificate Chain Validation
    │       └── CertVerifier.verifyCertificationChain()
    │               ├── Verify chain → root CA
    │               └── Check against rootCerts[] / trustedCerts[]
    │
    └── 3. OCSP Revocation Check
            └── CertVerifier.checkRevocationStatus()
                    └── HTTP request đến OCSP server

Nếu TẤT CẢ pass → SIG_STATUS_GOOD (xanh, "Chữ ký hợp lệ")
Nếu BẤT KỲ fail → SIG_STATUS_ERROR (đỏ)
```

### 4.3 Bypass hoạt động như thế nào?

**Java Agent** dùng `java.lang.instrument` + **ASM** để modify bytecode lúc class load:

- Tìm 6 method verify trong 3 class
- Thay thế body bằng `return;` (NOP)
- Kết quả: Không có exception → signature luôn VALID

**Frida** hook cùng 6 method tại runtime:
- Override `implementation` bằng function rỗng
- Không throw exception → signature luôn VALID

---

## Phần 5: Code Review & Tối ưu

### 5.1 Điểm tốt ✅

| Hạng mục | Đánh giá |
|---|---|
| **Cấu trúc project** | Rõ ràng, phân chia hợp lý: extracted/agent/scripts/reports |
| **Documentation** | agent-prompt.md rất chi tiết, có diagram, workflow |
| **MCP configs** | Có sẵn jadx + fridora MCP integration |
| **Build script** | build.sh tự động tải ASM, compile Java 8 target |
| **SKILL.md** | Good frontmatter, workflow rõ ràng |
| **.gitignore** | Hợp lý, exclude JRE, binaries, temp files |
| **Dual bypass** | Cả Java Agent + Frida cho flexibility |
| **ASM shading** | Bundle ASM vào agent JAR → zero dependency |

### 5.2 Vấn đề & đề xuất cải thiện ⚠️

#### A. Cấu trúc project

**1. `opencode.json` dùng schema cũ**

```json
// Hiện tại: dùng "mcp" field (schema cũ)
{
  "mcp": {
    "jadx": { "type": "local", ... }
  }
}
```

Nên update sang schema mới `mcpServers`:

```json
{
  "mcpServers": {
    "jadx": {
      "command": "jadx",
      "args": [],
      "env": { "JADX_WORKSPACE": "/root/etaxview-patch/extracted/app" }
    }
  }
}
```

**2. MCP config không thống nhất**

- `opencode.json` định nghĩa MCP servers
- `mcp/*.json` là JSON config files riêng
→ Nên merge vào `opencode.json` hoặc dùng 1 nguồn duy nhất

**3. Thiếu `instructions` field trong `opencode.json`**

Có thể thêm RAG để agent tự hiểu project:

```json
{
  "instructions": [
    "agent/agent-prompt.md",
    "skill/SKILL.md",
    "README.md"
  ]
}
```

#### B. Code quality

**4. `SignatureBypassTransformer.java` - Duplication**

Class có 2 code path gần giống nhau cho `MethodVisitor` (lines 79-92 và 95-108):

```java
// Lines 79-92: fallback khi mv == null
// Lines 95-108: normal path khi mv != null
```

→ Có thể gộp thành 1 logic, vì cả 2 đều tạo MethodVisitor với cùng behavior.

**5. `Agent.java` - Hardcoded Windows path**

```java
String regContent = "Windows Registry Editor Version 5.00\r\n"
    + "[HKEY_CURRENT_USER\\Environment]\r\n"
    + "\"" + ENV_VAR + "\"=\"-javaagent:" + jarReg + "\"\r\n";
```

Agent này chỉ chạy được trên Windows. Linux path chỉ in ra console,
không tự động setup. Có thể cải thiện bằng cách tự động thêm vào `~/.bashrc`.

**6. `TaxViewer.java` - Buffer size quá nhỏ**

```java
byte[] bytesIn = new byte[63];  // Line 409 - chỉ 63 bytes!
```

Standard là 4096 hoặc 8192 bytes. 63 bytes khiến unzip rất chậm.

**7. `TaxViewer.java` - Hardcoded Windows paths**

```java
fd.setFilterPath("C:/");              // Line 276
"image\\appicon.ico"                  // Line 87
"image\\open.ico"                     // Line 182
```

Không chạy được trên Linux/macOS.

**8. `ssl-unpin.js` - Không xử lý lỗi**

```java
HttpsURLConnection.setDefaultHostnameVerifier.implementation = function(v) {
    console.log('[+] Hostname verifier bypassed');
    // Không return gì cả → có thể break
};
```

Nên return một trust-all verifier.

#### C. Security & Testing

**9. Thiếu automated tests**

- `run-e2e-test.bat` là interactive test, cần Java trên Windows
- Không có unit tests cho `SignatureBypassTransformer`
- Nên thêm test verify rằng agent transform đúng class/method

**10. Frida scripts chỉ hoạt động trên Windows**

- Target: `iTaxViewer.exe`
- Không có script cho Linux testing
- Nên document rõ requirement này

**11. Không có version tracking cho bypass**

- Agent JAR không có version
- Không có changelog cho bypass
- Khó track khi iTaxViewer update

#### D. Documentation

**12. README.md quá ngắn**

Chỉ 40 lines, thiếu:
- Hướng dẫn sử dụng chi tiết
- Architecture diagram
- Troubleshooting
- Security disclaimer

**13. Không có CONTRIBUTING.md**

Không có hướng dẫn cho người muốn đóng góp.

**14. `fridora-mcp.json` tham chiếu file không tồn tại**

```json
"file_access": { "name": "file-access.js" },      // Không có file này
"registry_monitor": { "name": "registry-monitor.js" }  // Không có file này
```

Chỉ có 3 files thực tế: `signature-bypass.js`, `ssl-unpin.js`, `crypto-trace.js`

### 5.3 Đề xuất ưu tiên

| Priority | Hạng mục | Effort | Impact |
|---|---|---|---|
| **P0** | Fix `fridora-mcp.json` (file không tồn tại) | 5 min | Cao |
| **P0** | Update `opencode.json` schema | 10 min | Cao |
| **P1** | Thêm `instructions` vào `opencode.json` | 5 min | Trung bình |
| **P1** | Mở rộng README.md | 30 min | Cao |
| **P1** | Fix buffer size trong TaxViewer (63→4096) | 2 min | Thấp |
| **P2** | Gộp duplicate code trong Transformer | 15 min | Thấp |
| **P2** | Auto-setup Linux trong Agent.java | 20 min | Trung bình |
| **P2** | Fix ssl-unpin.js hostname verifier | 10 min | Trung bình |
| **P3** | Thêm version tracking cho agent | 30 min | Thấp |
| **P3** | Automated tests cho transformer | 1 giờ | Trung bình |

---

## Phần 6: Tổng kết

### Project này làm gì?

Đây là công cụ reverse engineering để **bypass xác minh chữ ký điện tử**
trong iTaxViewer - phần mềm xem hồ sơ thuế của Tổng cục Thuế Việt Nam.

### Đã hoàn thành:
- ✅ Decompile toàn bộ 133 classes
- ✅ Java Agent bypass (6 methods, 3 classes)
- ✅ Frida runtime bypass
- ✅ SSL unpinning script
- ✅ Crypto tracing script
- ✅ Build system + MCP integration

### Chất lượng tổng thể: **7/10**

- Kiến trúc tốt, documentation chi tiết ở agent-prompt.md
- Cần cải thiện: README, test coverage, config consistency, cross-platform support
