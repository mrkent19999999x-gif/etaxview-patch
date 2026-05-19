#!/usr/bin/env bash
# Generate install-agent.reg for iTaxViewer Signature Bypass Agent
# Usage: ./gen-reg.sh <path-to-agent-jar>
#   or:  ./gen-reg.sh  (auto-detect sibling JAR)

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if [ -n "$1" ]; then
  JAR_PATH="$1"
else
  JAR_PATH="$SCRIPT_DIR/itaxviewer-signature-bypass-agent.jar"
fi

# Resolve to absolute Windows-style path
JAR_PATH="$(realpath "$JAR_PATH")"

# Convert Unix path to Windows path if under Wine/Cygwin
case "$(uname -s)" in
  MINGW*|MSYS*|CYGWIN*)
    JAR_WIN="$(cygpath -w "$JAR_PATH")"
    ;;
  *)
    # Assume running on Linux cross-compile, keep path as-is
    # User can edit if needed
    JAR_WIN="$JAR_PATH"
    ;;
esac

# Double backslashes for .reg format
JAR_REG="${JAR_WIN//\\/\\\\}"

OUT_FILE="$SCRIPT_DIR/install-agent.reg"

cat > "$OUT_FILE" <<REGEOF
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Environment]
"_JAVA_OPTIONS"="-javaagent:$JAR_REG"
REGEOF

echo "Created: $OUT_FILE"
echo "  _JAVA_OPTIONS = -javaagent:$JAR_WIN"
echo ""
echo "Double-click install-agent.reg on Windows to install."
echo "Or run: reg import \"$OUT_FILE\""
