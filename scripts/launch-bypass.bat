@echo off
REM ============================================================================
REM iTaxViewer - Launcher with Signature Bypass Java Agent
REM ============================================================================
REM
REM Place this script in the iTaxViewer installation directory (where
REM itaxviewer.jar is located).
REM
REM Make sure itaxviewer-signature-bypass-agent.jar is also in the same
REM directory (or adjust the -javaagent path below).
REM ============================================================================

set AGENT_JAR=itaxviewer-signature-bypass-agent.jar

if not exist "%AGENT_JAR%" (
    echo ERROR: %AGENT_JAR% not found in current directory.
    echo Please copy the agent JAR to this folder or update the path.
    pause
    exit /b 1
)

echo [iTaxViewer] Starting with signature bypass agent...
echo [iTaxViewer] Agent: %AGENT_JAR%

start "" jre\bin\javaw.exe ^
    -javaagent:%AGENT_JAR% ^
    -jar itaxviewer.jar

echo [iTaxViewer] Launched.
