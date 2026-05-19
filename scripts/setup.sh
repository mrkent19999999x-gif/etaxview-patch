#!/bin/bash
# etaxview-patch - Complete Environment Setup
# This script installs all dependencies and configures the project

set -e

echo "=========================================="
echo "  etaxview-patch Environment Setup"
echo "  iTaxViewer Reverse Engineering Toolkit"
echo "=========================================="

PROJECT_DIR="/root/etaxview-patch"

echo "[*] Installing system dependencies..."

# Install Java decompiler (jadx)
if ! command -v jadx &>/dev/null; then
    echo "[*] Installing jadx..."
    apt-get install -y -qq jadx 2>/dev/null || {
        echo "[!] jadx not in repos, installing from GitHub..."
        wget -q "https://github.com/skylot/jadx/releases/download/v1.5.1/jadx-1.5.1.zip" -O /tmp/jadx.zip
        unzip -q /tmp/jadx.zip -d /opt/jadx
        ln -sf /opt/jadx/bin/jadx /usr/local/bin/jadx
        ln -sf /opt/jadx/bin/jadx-gui /usr/local/bin/jadx-gui
    }
fi

# Install Frida
if ! command -v frida &>/dev/null; then
    echo "[*] Installing frida..."
    pip3 install frida-tools 2>/dev/null || pip install frida-tools 2>/dev/null || true
fi

# Install InnoExtract (already done)
if ! command -v innoextract &>/dev/null; then
    apt-get install -y -qq innoextract
fi

# Install other tools
apt-get install -y -qq unzip p7zip-full openjdk-17-jdk-headless 2>/dev/null || true

echo "[*] Verifying installation..."
for tool in jadx innoextract unzip; do
    if command -v $tool &>/dev/null; then
        echo "  [+] $tool: $(which $tool)"
    else
        echo "  [-] $tool: NOT FOUND"
    fi
done

echo ""
echo "[*] Project structure:"
find "$PROJECT_DIR" -maxdepth 2 -type f | sort

echo ""
echo "[*] To decompile the JAR:"
echo "    jadx -d $PROJECT_DIR/reports/jadx-output/itaxviewer $PROJECT_DIR/extracted/app/itaxviewer.jar"
echo ""
echo "[*] To view decompiled code in GUI:"
echo "    jadx-gui $PROJECT_DIR/extracted/app/itaxviewer.jar"
echo ""
echo "[*] Setup complete!"
