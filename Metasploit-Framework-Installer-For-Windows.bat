@echo off

echo Checking for Antivirus... && timeout /t 3 /nobreak >nul
curl https://secure.eicar.org/eicar_com.zip -o C:\Users\%username%\Downloads\eicar_com.zip -s
if not exist C:\Users\%username%\Downloads\eicar_com.zip ( echo Antivirus was detected. Your system has not been modified. To install this tool at a later time, please run this installer again. && pause && exit )

curl http://windows.metasploit.com/metasploitframework-latest.msi -o C:\Users\%username%\Downloads\metasploitframework-latest.msi
start /wait msiexec /i "C:\Users\%username%\Downloads\metasploitframework-latest.msi" /norestart
del C:\Users\%username%\Downloads\metasploitframework-latest.msi

echo You can now launch Metasploit.
echo Run msfconsole for start Metasploit.

echo Ready for launch.
echo = && timeout /t 1 /nobreak >nul
echo == && timeout /t 1 /nobreak >nul
echo === && timeout /t 1 /nobreak >nul
echo ==== && timeout /t 1 /nobreak >nul
echo ===== && timeout /t 1 /nobreak >nul
echo ====== && timeout /t 1 /nobreak >nul
echo ======= && timeout /t 1 /nobreak >nul
echo ======== && timeout /t 1 /nobreak >nul
echo ========= && timeout /t 1 /nobreak >nul
echo ========== && timeout /t 1 /nobreak >nul
echo =========== && timeout /t 1 /nobreak >nul
echo ============ && timeout /t 1 /nobreak >nul
echo ============= && timeout /t 1 /nobreak >nul
echo ============== && timeout /t 1 /nobreak >nul
echo =============== && timeout /t 1 /nobreak >nul
echo ================ && timeout /t 1 /nobreak >nul
echo ================= && timeout /t 1 /nobreak >nul
echo ================== && timeout /t 1 /nobreak >nul
echo =================== && timeout /t 1 /nobreak >nul
echo ==================== && timeout /t 1 /nobreak >nul
echo ===================== && timeout /t 1 /nobreak >nul
echo ====================== && timeout /t 1 /nobreak >nul
echo ======================= && timeout /t 1 /nobreak >nul
echo ======================== && timeout /t 1 /nobreak >nul
echo ========================= && timeout /t 1 /nobreak >nul
echo ========================== && timeout /t 1 /nobreak >nul
echo =========================== && timeout /t 1 /nobreak >nul
echo ============================ && timeout /t 1 /nobreak >nul
echo ============================= && timeout /t 1 /nobreak >nul
echo ============================== && timeout /t 1 /nobreak >nul
echo =============================== && timeout /t 1 /nobreak >nul
echo ================================ && timeout /t 1 /nobreak >nul
echo ================================= && timeout /t 1 /nobreak >nul
echo ================================== && timeout /t 1 /nobreak >nul
echo =================================== && timeout /t 1 /nobreak >nul
echo ==================================== && timeout /t 1 /nobreak >nul
echo ===================================== && timeout /t 1 /nobreak >nul
echo ====================================== && timeout /t 1 /nobreak >nul
echo ======================================= && timeout /t 1 /nobreak >nul
echo ======================================== && timeout /t 1 /nobreak >nul
echo ========================================= && timeout /t 1 /nobreak >nul
echo ========================================== && timeout /t 1 /nobreak >nul
echo =========================================== && timeout /t 1 /nobreak >nul
echo ============================================ && timeout /t 1 /nobreak >nul
echo ============================================= && timeout /t 1 /nobreak >nul
echo ============================================== && timeout /t 1 /nobreak >nul
echo =============================================== && timeout /t 1 /nobreak >nul
echo ================================================ && timeout /t 1 /nobreak >nul
echo ================================================= && timeout /t 1 /nobreak >nul
echo ================================================== && timeout /t 1 /nobreak >nul
echo =================================================== && timeout /t 1 /nobreak >nul
echo ==================================================== && timeout /t 1 /nobreak >nul
echo ===================================================== && timeout /t 1 /nobreak >nul
echo ====================================================== && timeout /t 1 /nobreak >nul
echo ======================================================= && timeout /t 1 /nobreak >nul
echo ======================================================== && timeout /t 1 /nobreak >nul
echo ========================================================= && timeout /t 1 /nobreak >nul
echo ========================================================== && timeout /t 1 /nobreak >nul
echo =========================================================== && timeout /t 1 /nobreak >nul
echo ============================================================ && timeout /t 1 /nobreak >nul
echo ============================================================= && timeout /t 1 /nobreak >nul
echo ============================================================== && timeout /t 1 /nobreak >nul
echo =============================================================== && timeout /t 1 /nobreak >nul
echo ================================================================ && timeout /t 1 /nobreak >nul
echo ================================================================= && timeout /t 1 /nobreak >nul
echo ================================================================== && timeout /t 1 /nobreak >nul
echo =================================================================== && timeout /t 1 /nobreak >nul
echo ==================================================================== && timeout /t 1 /nobreak >nul
echo ===================================================================== && timeout /t 1 /nobreak >nul
echo ====================================================================== && timeout /t 1 /nobreak >nul
echo ======================================================================= && timeout /t 1 /nobreak >nul
echo ======================================================================== && timeout /t 1 /nobreak >nul
echo ========================================================================= && timeout /t 1 /nobreak >nul
echo ========================================================================== && timeout /t 1 /nobreak >nul
echo =========================================================================== && timeout /t 1 /nobreak >nul
echo ============================================================================ && timeout /t 1 /nobreak >nul
echo ============================================================================= && timeout /t 1 /nobreak >nul
echo ============================================================================== && timeout /t 1 /nobreak >nul
echo =============================================================================== && timeout /t 1 /nobreak >nul

msfdb init
msfconsole
