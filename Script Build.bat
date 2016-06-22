@echo off
call BuildVariables.cmd

echo Bundling scripts.........
XCOPY "%SCRIPTS%" "%PACKEDSCRIPTS%" /S/Y
echo Success.
pause