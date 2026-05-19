#!/bin/bash
# Script to download latest iTaxViewer from various sources
# Usage: ./download-itaxview.sh [version]

set -e

VERSION=${1:-"2.7.4"}
OUTPUT_DIR="/root/etaxview-patch/source"
mkdir -p "$OUTPUT_DIR"

echo "[*] Downloading iTaxViewer $VERSION..."

# Try multiple sources
SOURCES=(
  "https://cdn.thuvienphapluat.vn/Uploads/danluat/FileAttack/TT/20976/iTaxViewer2.7.3%20(2).zip"
  "https://download.dantaichinh.com/2026/itaxtiewer2.7.0.zip"
  "http://ihtkkresource.gdt.gov.vn/ihtkk_nnt_resource/resources/iHTKK/iTaxViewer.rar"
)

DOWNLOADED=false
for url in "${SOURCES[@]}"; do
  echo "[*] Trying: $url"
  if wget -q --show-progress -O "$OUTPUT_DIR/iTaxViewer_${VERSION}.zip" "$url" 2>/dev/null; then
    echo "[+] Downloaded successfully!"
    DOWNLOADED=true
    break
  fi
done

if [ "$DOWNLOADED" = false ]; then
  echo "[!] Please download manually from:"
  echo "    https://dichvucong.gdt.gov.vn -> Trợ giúp -> iTaxViewer"
  exit 1
fi

echo "[*] Extracting..."
mkdir -p "$OUTPUT_DIR/../extracted"

# Determine file type
FILE_TYPE=$(file "$OUTPUT_DIR/iTaxViewer_${VERSION}.zip")
if echo "$FILE_TYPE" | grep -q "Zip"; then
  unzip -o "$OUTPUT_DIR/iTaxViewer_${VERSION}.zip" -d "$OUTPUT_DIR/../extracted/"
elif echo "$FILE_TYPE" | grep -q "RAR"; then
  unrar x "$OUTPUT_DIR/iTaxViewer_${VERSION}.zip" "$OUTPUT_DIR/../extracted/"
fi

# If extracted .exe is Inno Setup, extract further
EXE_FILE=$(find "$OUTPUT_DIR/../extracted/" -name "*.exe" 2>/dev/null | head -1)
if [ -n "$EXE_FILE" ] && command -v innoextract &>/dev/null; then
  echo "[*] Extracting Inno Setup installer: $EXE_FILE"
  mkdir -p "$OUTPUT_DIR/../extracted/app"
  innoextract -d "$OUTPUT_DIR/../extracted/" "$EXE_FILE"
fi

echo "[+] Done! Extracted to: $OUTPUT_DIR/../extracted/"
ls -la "$OUTPUT_DIR/../extracted/"
