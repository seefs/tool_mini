@echo off

echo >z_file.txt
DIR %~dp0\..\make\K220_*.mak /B >> z_file.txt
start z_file.txt

pause

