@echo off
:: Show popup message
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Foloseste configurile din folder.','Atentie')"

:: Run the Chris Titus script
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm 'https://christitus.com/win' | iex"

pause
