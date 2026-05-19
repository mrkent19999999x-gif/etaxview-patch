# iTaxViewer Reverse Engineering Skill for Opencode

This skill provides specialized knowledge and workflows for reverse engineering iTaxViewer - the Vietnamese tax declaration XML viewer.

## Overview

- **App:** iTaxViewer 2.7.3 by Tổng cục Thuế (GDT)
- **Type:** Java 8 / SWT Windows desktop app
- **Location:** `/root/etaxview-patch/`
- **Main Code:** `extracted/app/itaxviewer.jar`
- **Bundled JRE:** Java 8 in `extracted/app/jre/`

## Workflow

### 1. Decompile with JADX
```bash
jadx -d reports/jadx-output/itaxviewer extracted/app/itaxviewer.jar
jadx -d reports/jadx-output/updater extracted/app/update/updater.jar
```

### 2. Analyze Key Packages
Look for:
- `itaxviewer.*` - Main application packages
- License/registration related classes
- XML signature verification
- Network communication (HTTP/HTTPS)
- XSLT processing
- Update mechanism

### 3. Start Frida Session (on Windows)
```bash
frida -l scripts/frida/ssl-unpin.js iTaxViewer.exe
frida -l scripts/frida/crypto-trace.js iTaxViewer.exe
```

### 4. Document Findings
Use the `reports/` directory for analysis reports.

## Key Observations

1. The app bundles Java 8 with JavaFX support
2. Uses SWT (not JavaFX) for UI
3. Bouncy Castle for crypto operations
4. pd4ml for PDF conversion
5. 40+ XSLT versions for tax form rendering
6. Has auto-update mechanism via `updater.jar`

## MCP Integration

Two MCP servers configured:
- `jadx-mcp`: For static Java decompilation
- `fridora-mcp`: For dynamic instrumentation
