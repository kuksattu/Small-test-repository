REM Totally didn't copy this from zero318
setlocal EnableDelayedExpansion
for /f "tokens=*" %%g in (.\_sharedpatches.txt) do (
    echo ".\%%g" ".\_patches-dwnld\%%g"
    xcopy ".\%%g" ".\_patches-dwnld\%%g" /e /d /i /y /q
)
@REM pushd .\_patches-dwnld
@REM py -3 "..\..\..\bin\scripts\repo_update.py"
@REM popd
pause