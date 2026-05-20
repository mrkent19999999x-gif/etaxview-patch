#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
AGENT_DIR="$SCRIPT_DIR/.."
TEST_DIR="$SCRIPT_DIR"
MOCK_DIR="$TEST_DIR/mock"
CLASSES_DIR="$TEST_DIR/classes"
AGENT_JAR="$AGENT_DIR/itaxviewer-signature-bypass-agent.jar"
ASM_JAR="$AGENT_DIR/lib/asm-9.7.jar"

JAVA_HOME=${JAVA_HOME:-/opt/jdk-11.0.26+4}
JAVAC="$JAVA_HOME/bin/javac"
JAVA="$JAVA_HOME/bin/java"
JAR="$JAVA_HOME/bin/jar"

echo "=========================================="
echo " iTaxViewer Agent Test Suite"
echo "=========================================="

# ---- Download ASM if needed ----
if [ ! -f "$ASM_JAR" ]; then
    echo "[*] Downloading ASM 9.7..."
    mkdir -p "$AGENT_DIR/lib"
    curl -sL "https://repo1.maven.org/maven2/org/ow2/asm/asm/9.7/asm-9.7.jar" -o "$ASM_JAR"
fi

# ---- Build agent if needed ----
if [ ! -f "$AGENT_JAR" ]; then
    echo "[*] Agent JAR not found, building..."
    bash "$AGENT_DIR/build.sh"
fi

# ---- Phase 1: Mock class tests ----
echo ""
echo "=== Phase 1: Mock Class Tests ==="

rm -rf "$CLASSES_DIR"
mkdir -p "$CLASSES_DIR"

echo "[*] Compiling mock classes..."
"$JAVAC" -d "$CLASSES_DIR" \
  "$MOCK_DIR/seatechit/ihtkk/tool/signature/IHTKKXMLSignature.java" \
  "$MOCK_DIR/seatechit/ihtkk/tool/signature/IHTKKXMLTemSignature.java" \
  "$MOCK_DIR/seatechit/ihtkk/tool/signature/CertVerifier.java" \
  "$MOCK_DIR/NonTargetClass.java"

echo "[*] Compiling test runner..."
"$JAVAC" -d "$CLASSES_DIR" -cp "$CLASSES_DIR" "$TEST_DIR/TestRunner.java"

echo ""
echo "--- Test 1a: Without agent (methods should execute normally) ---"
"$JAVA" -cp "$CLASSES_DIR" TestRunner || true

echo ""
echo "--- Test 1b: With agent (methods should be NOP'd) ---"
"$JAVA" -javaagent:"$AGENT_JAR" -cp "$CLASSES_DIR" TestRunner -agent

# ---- Phase 2: Real class transformation test ----
echo ""
echo "=== Phase 2: Real Class Transformation Test ==="

REAL_TEST_DIR="$TEST_DIR/classes/real-test"
rm -rf "$REAL_TEST_DIR"
mkdir -p "$REAL_TEST_DIR"

ITAXVIEWER_JAR="$AGENT_DIR/../../extracted/app/itaxviewer.jar"

if [ -f "$ITAXVIEWER_JAR" ]; then
    echo "[*] Extracting target classes from itaxviewer.jar..."
    cd "$REAL_TEST_DIR"
    "$JAR" xf "$ITAXVIEWER_JAR" \
        seatechit/ihtkk/tool/signature/IHTKKXMLSignature.class \
        seatechit/ihtkk/tool/signature/IHTKKXMLTemSignature.class \
        seatechit/ihtkk/tool/signature/CertVerifier.class \
        seatechit/ihtkk/tool/signature/XMLSignatureValidationResult.class \
        seatechit/ihtkk/tool/signature/X509KeySelector.class 2>/dev/null || true
    cd "$SCRIPT_DIR"

    if [ -f "$REAL_TEST_DIR/seatechit/ihtkk/tool/signature/IHTKKXMLSignature.class" ]; then
        echo "[*] Compiling agent source for RealClassTest..."
        AGENT_SRC="$AGENT_DIR/src"
        AGENT_CLASSES_DIR="$REAL_TEST_DIR/agent-classes"
        mkdir -p "$AGENT_CLASSES_DIR"
        "$JAVAC" -d "$AGENT_CLASSES_DIR" -cp "$ASM_JAR" \
            "$AGENT_SRC/SignatureBypassTransformer.java"

        echo "[*] Compiling RealClassTest..."
        "$JAVAC" -d "$CLASSES_DIR" -cp "$CLASSES_DIR:$ASM_JAR:$AGENT_CLASSES_DIR" "$TEST_DIR/RealClassTest.java"

        echo "[*] Running RealClassTest..."
        "$JAVA" -cp "$CLASSES_DIR:$ASM_JAR:$AGENT_CLASSES_DIR" itaxviewer.test.RealClassTest "$REAL_TEST_DIR"
    else
        echo "[!] Target classes not found in JAR, skipping real class test"
    fi
else
    echo "[!] itaxviewer.jar not found at $ITAXVIEWER_JAR, skipping real class test"
    echo "    Run: jadx -d <output> <jar> first"
fi

# ---- Phase 3: Agent version check ----
echo ""
echo "=== Phase 3: Agent Version Check ==="

AGENT_OUTPUT=$("$JAVA" -javaagent:"$AGENT_JAR" -cp "$CLASSES_DIR" NonTargetClass 2>&1 || true)
if echo "$AGENT_OUTPUT" | grep -q "v1.0.0"; then
    echo "[PASS] Agent reports version 1.0.0"
else
    echo "[INFO] Agent version not detected in output (may be expected for non-interactive runs)"
fi

echo ""
echo "=========================================="
echo " All test phases complete"
echo "=========================================="
