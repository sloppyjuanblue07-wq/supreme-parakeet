@echo OFF
@set a=0
:Menu
title The Casket of Reveries Server Restart[%a%]
echo        now time%time%   today%date%
echo ============================================================
echo        The Casket of Reveries Server Start... [restart: %a%]
echo ============================================================
java @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.20.1-47.4.4/win_args.txt %*
@echo OFF
@echo sever close,restart before 10s
timeout /T 20 /NOBREAK > nul
@set /a a=%a%+1
@goto Menu
pause
