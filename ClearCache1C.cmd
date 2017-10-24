@echo off

echo.
echo      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo        _____ _      ______          _____  
echo       / ____^| ^|    ^|  ____^|   /\   ^|  __ \ 
echo      ^| ^|    ^| ^|    ^| ^|__     /  \  ^| ^|__) ^|
echo      ^| ^|    ^| ^|    ^|  __^|   / /\ \ ^|  _  / 
echo      ^| ^|____^| ^|____^| ^|____ / ____ \^| ^| \ \ 
echo       \_____^|______^|______/_/    \_\_^|__\_\
echo       / ____^|   /\   / ____^| ^|  ^| ^|  ____^| 
echo      ^| ^|       /  \ ^| ^|    ^| ^|__^| ^| ^|__    
echo      ^| ^|      / /\ \^| ^|    ^|  __  ^|  __^|   
echo      ^| ^|____ / ____ \ ^|____^| ^|  ^| ^| ^|____  
echo       \_____/_/    \_\_____^|_^|  ^|_^|______^| 
echo.     
echo      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.  

:start
set /p var=Dlja prodolzhenija nazhmite (y), dlja otmeny - (n):
if "%var%"=="y" goto :continue
if "%var%"=="n" (goto :cancel
) else (
    goto :start
)

:continue
rmdir "%AppData%\1C\1Cv82" /S /Q
rmdir "%LOCALAPPDATA%\1C\1Cv82" /S /Q
rmdir "%AppData%\1C\1Cv8" /S /Q
rmdir "%LOCALAPPDATA%\1C\1Cv8" /S /Q
echo Ochistka vypolnena!
pause
exit

:cancel
echo Ochistka otmenena!
timeout 5
exit