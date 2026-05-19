#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
AGENT_DIR="$SCRIPT_DIR/.."
TEST_DIR="$SCRIPT_DIR"
MOCK_DIR="$TEST_DIR/mock"
CLASSES_DIR="$TEST_DIR/classes"
AGENT_JAR="$AGENT_DIR/itaxviewer-signature-bypass-agent.jar"

JAVA_HOME=${JAVA_HOME:-/opt/jdk-11.0.26+4}
JAVAC="$JAVA_HOME/bin/javac"
JAVA="$JAVA_HOME/bin/java"

rm -rf "$CLASSES_DIR"
mkdir -p "$CLASSES_DIR"

echo "=== Compiling mock classes ==="
"$JAVAC" -d "$CLASSES_DIR" \
  "$MOCK_DIR/seatechit/ihtkk/tool/signature/IHTKKXMLSignature.java" \
  "$MOCK_DIR/seatechit/ihtkk/tool/signature/IHTKKXMLTemSignature.java" \
  "$MOCK_DIR/seatechit/ihtkk/tool/signature/CertVerifier.java" \
  "$MOCK_DIR/NonTargetClass.java"

echo ""
echo "=== Compiling test runner ==="
"$JAVAC" -d "$CLASSES_DIR" -cp "$CLASSES_DIR" "$TEST_DIR/TestRunner.java"

echo ""
echo "=========================================="
echo " TEST 1: WITHOUT agent (should all fail)"
echo "=========================================="
"$JAVA" -cp "$CLASSES_DIR" TestRunner
echo ""

echo "=========================================="
echo " TEST 2: WITH agent (should all pass)"
echo "=========================================="
"$JAVA" -javaagent:"$AGENT_JAR" -cp "$CLASSES_DIR" TestRunner -agent
echo ""

echo "=== Done ==="
