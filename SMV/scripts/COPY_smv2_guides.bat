@echo off

echo.
echo ---downloading guides
echo.

set fromdir=/var/www/html/smokebot/manuals
set login=%username%@blaze.nist.gov

cd "%userprofile%
if not exist "Google Drive" (
  mkdir "Google Drive"
)
cd "Google Drive"

if not exist "FDS-SMV Newest Manuals" (
  mkdir "FDS-SMV Newest Manuals"
)
cd "FDS-SMV Newest Manuals"


pscp %login%:%fromdir%/SMV_Technical_Reference_Guide.pdf .
pscp %login%:%fromdir%/SMV_User_Guide.pdf .
pscp %login%:%fromdir%/SMV_Verification_Guide.pdf .

pause