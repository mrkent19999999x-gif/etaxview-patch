# etaxview-patch

Reverse engineering project for iTaxViewer - Vietnamese tax declaration XML viewer by General Department of Taxation (GDT).

## Info

| Item | Value |
|------|-------|
| **App** | iTaxViewer 2.7.3 |
| **Type** | Java 8 / SWT Windows desktop |
| **Developer** | Tổng cục Thuế (GDT Vietnam) |
| **Main JAR** | `extracted/app/itaxviewer.jar` (213 KB) |
| **Decompiled** | 133 classes, 164 Java files |

## Structure

```
etaxview-patch/
├── extracted/          # App extracted from Inno Setup
│   └── app/
│       ├── itaxviewer.jar          # Main Java app
│       ├── itaxviewer_lib/        # Third-party JARs
│       └── data/xslt/             # XSLT templates (40+ versions)
├── mcp/                # MCP server configs (jadx, fridora)
├── agent/              # RE agent prompt
├── skill/              # Opencode skill
├── scripts/            # Frida hooks, automation
└── reports/            # Decompiled source, analysis
```

## Quick Start

```bash
# Decompile
export JAVA_HOME=/opt/jdk-11.0.26+4-jre
jadx -d reports/jadx-output/itaxviewer extracted/app/itaxviewer.jar

# Search decompiled code
grep -r "pattern" reports/jadx-output/
```
