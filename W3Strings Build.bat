@echo off
call BuildVariables.cmd

echo Encoding localization w3strings.........

cd /d "%W3STRINGSENCODER%"
call w3strings --encode %STRINGS%\locale.en.csv --id-space %W3STRINGSIDSPACE%
call w3strings --encode %STRINGS%\locale.fr.csv --id-space %W3STRINGSIDSPACE%

echo Removing debug Witcher Script files.........
del %STRINGS%\locale.en.csv.w3strings.ws
del %STRINGS%\locale.fr.csv.w3strings.ws

echo Renaming to proper language names...........
ren %STRINGS%\locale.en.csv.w3strings en.w3strings
ren %STRINGS%\locale.fr.csv.w3strings fr.w3strings

echo Generating other languages from English.....
copy %STRINGS%\en.w3strings %PACKED%\ar.w3strings
copy %STRINGS%\en.w3strings %PACKED%\br.w3strings
copy %STRINGS%\en.w3strings %PACKED%\cz.w3strings
copy %STRINGS%\en.w3strings %PACKED%\de.w3strings
copy %STRINGS%\en.w3strings %PACKED%\en.w3strings
copy %STRINGS%\en.w3strings %PACKED%\es.w3strings
copy %STRINGS%\en.w3strings %PACKED%\esmx.w3strings
copy %STRINGS%\fr.w3strings %PACKED%\fr.w3strings
copy %STRINGS%\en.w3strings %PACKED%\hu.w3strings
copy %STRINGS%\en.w3strings %PACKED%\it.w3strings
copy %STRINGS%\en.w3strings %PACKED%\jp.w3strings
copy %STRINGS%\en.w3strings %PACKED%\kr.w3strings
copy %STRINGS%\en.w3strings %PACKED%\pl.w3strings
copy %STRINGS%\en.w3strings %PACKED%\ru.w3strings
copy %STRINGS%\en.w3strings %PACKED%\zh.w3strings
del %STRINGS%\en.w3strings
del %STRINGS%\fr.w3strings


echo W3Strings generation success.
XCOPY "%PACKED%" "%GAMEPATH%\Mods\%NAME%\content" /S/Y
pause