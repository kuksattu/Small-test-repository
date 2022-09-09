REM Totally didn't copy this from zero318
@echo off
setlocal EnableDelayedExpansion
for /f "tokens=*" %%g in (.\_sharedpatches.txt) do (
    echo ".\%%g" ".\_patches-dwnld\%%g"
    xcopy ".\%%g" ".\_patches-dwnld\%%g" /e /d /i /y /q
)
pushd .\_patches-dwnld
py -3 "..\..\..\bin\scripts\repo_update.py"
popd
pause