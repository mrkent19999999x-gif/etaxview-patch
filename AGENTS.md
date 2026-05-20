# etaxview-patch - iTaxViewer Reverse Engineering

Project RE iTaxViewer 2.7.3 - Java/SWT tax XML viewer.

## Knowledge Base (RAG)

- RAG docs về OpenCode AI: `/root/opencode-rag/docs/`
- Dùng `@rag-query` subagent để tra cứu

## Commands

- Decompile: `jadx -d <output> <jar>`
- JAVA_HOME: `/opt/jdk-11.0.26+4-jre`

## Project Structure

- `extracted/app/itaxviewer.jar` - Main JAR
- `reports/jadx-output/` - Decompiled source (133 classes)
- `scripts/frida/` - Frida hook scripts
- `extracted/app/data/xslt/` - XSLT templates
