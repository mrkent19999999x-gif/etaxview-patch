@echo off
REM =============================================
REM iTaxViewer Signature Bypass Agent - E2E Test
REM =============================================
echo === iTaxViewer Signature Bypass Agent E2E Test ===
echo.

REM Check if agent jar exists
if not exist "itaxviewer-signature-bypass-agent.jar" (
    echo [FAIL] agent jar not found in current directory
    echo        Copy agent JAR first, then run this test
    pause
    exit /b 1
)
echo [OK] Found itaxviewer-signature-bypass-agent.jar

REM Check if JAVA_HOME or JRE exists
set JAVACMD=
if not "%JAVA_HOME%"=="" (
    set JAVACMD=%JAVA_HOME%\bin\java
) else (
    where java >nul 2>&1
    if %ERRORLEVEL% equ 0 (
        set JAVACMD=java
    )
)
if "%JAVACMD%"=="" (
    echo [WARN] No Java found. Agent install will use setx directly.
    echo        Install test cannot run without Java.
) else (
    echo [OK] Found Java: %JAVACMD%
)

echo.
echo === [TEST 1] Agent JAR is valid (has MANIFEST) ===
%JAVACMD% -jar itaxviewer-signature-bypass-agent.jar 2>&1 | findstr /C:"iTaxViewer-Agent"
if %ERRORLEVEL% equ 0 (
    echo [PASS] JAR is valid and executable
) else (
    echo [FAIL] JAR is not executable
)

echo.
echo === [TEST 2] Agent loads as javaagent ===
echo public class TestAgentLoad { public static void main(String[] a) { System.out.println(\"OK\"); } } > TestAgentLoad.java
%JAVACMD% -cp . TestAgentLoad.java 2>&1
%JAVACMD% -javaagent:itaxviewer-signature-bypass-agent.jar -cp . TestAgentLoad 2>&1 | findstr /C:"Signature bypass agent loaded"
if %ERRORLEVEL% equ 0 (
    echo [PASS] Agent loads and transforms correctly
    del TestAgentLoad.java TestAgentLoad.class 2>nul
) else (
    echo [FAIL] Agent failed to load
)

echo.
echo === [TEST 3] _JAVA_OPTIONS .reg file generation ===
echo.
echo Run: java -jar itaxviewer-signature-bypass-agent.jar
echo   -> Creates install-agent.reg in same folder
echo   -> Opens Registry Editor (click Yes to import)
echo.
echo Or if no Java installed:
echo   Double-click install-agent.reg directly
echo.
echo Verify after install:
echo   reg query HKCU\Environment /v _JAVA_OPTIONS
echo.
echo Uninstall:
echo   reg delete HKCU\Environment /v _JAVA_OPTIONS /f
echo.

echo.
echo === [TEST 4] Real iTaxViewer (manual) ===
echo.
echo Steps:
echo   1. Copy agent JAR to C:\iTaxViewer\
echo   2. java -jar itaxviewer-signature-bypass-agent.jar
echo      -> creates install-agent.reg -> click Yes
echo   3. Double-click iTaxViewer shortcut
echo   4. Open any signed XML -> should show "Chu ky dien tu hop le" (green)
echo.

echo === Done ===
echo.
pause
