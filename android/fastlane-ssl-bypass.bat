@echo off
REM fastlane-ssl-bypass.bat
REM Wrapper script to run fastlane with SSL verification disabled

echo 🔧 Setting up SSL bypass environment for fastlane...

REM Set SSL environment variables
set SSL_VERIFY_MODE=none
set DISABLE_SSL_VERIFICATION=true
set OPENSSL_CONF=
set HTTPS_CA_DIR=
set HTTPS_CA_FILE=
set CURL_CA_BUNDLE=
set SSL_CERT_FILE=
set SSL_CERT_DIR=

REM Disable Ruby SSL warnings
set RUBYOPT=-W0

echo ✅ SSL bypass environment configured
echo 🚀 Running fastlane android firebase_distribution...

REM Run fastlane with SSL disabled
fastlane android firebase_distribution

echo 🏁 Fastlane execution completed
pause