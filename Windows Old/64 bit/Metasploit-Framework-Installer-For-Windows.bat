@echo off

git clone https://github.com/471D38UNNUX/Wincurl C:\Users\%username%\Downloads\Wincurl
C:\Users\%username%\Downloads\Wincurl\64\bin\curl http://windows.metasploit.com/metasploitframework-latest.msi -o C:\Users\%username%\Downloads\metasploitframework-latest.msi
msiexec /i "C:\Users\%username%\Downloads\metasploitframework-latest.msi" INSTALLDIR="C:\metasploit-framework" /qr /norestart 
del C:\Users\%username%\Downloads\metasploitframework-latest.msi
del C:\Users\%username%\Downloads\Wincurl

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
