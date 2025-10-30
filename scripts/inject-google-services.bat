@echo off
REM inject-google-services.bat
REM Windows batch script to inject google-services.json from environment variable for CI/CD

setlocal EnableDelayedExpansion

set "GOOGLE_SERVICES_PATH=android\app\google-services.json"

if "%GOOGLE_SERVICES_JSON%"=="" (
    echo ❌ Error: GOOGLE_SERVICES_JSON environment variable is not set
    echo Please set it to the base64 encoded content of google-services.json
    echo To encode in PowerShell: [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes((Get-Content "android/app/google-services.json" -Raw)))
    exit /b 1
)

echo 🔧 Injecting google-services.json from environment variable...

REM Decode base64 and write to file (PowerShell method)
powershell -Command "[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('%GOOGLE_SERVICES_JSON%')) | Out-File -FilePath '%GOOGLE_SERVICES_PATH%' -Encoding UTF8"

if exist "%GOOGLE_SERVICES_PATH%" (
    echo ✅ Successfully injected google-services.json
    echo 📍 File location: %GOOGLE_SERVICES_PATH%
) else (
    echo ❌ Error: Failed to create google-services.json
    exit /b 1
)