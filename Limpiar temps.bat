@echo off
setlocal enabledelayedexpansion

set "tempLocal=C:\Windows\Temp"
set "tempUser=%TEMP%"

echo Eliminando archivos en tempLocal

cd /d "%tempLocal%" || (
    echo No se pudo acceder a la carpeta temp.
    exit /b 1
)

for %%F in (*) do (
    del /f "%%F" 2>nul
    if errorlevel 1 (
        echo No se pudo borrar el archivo: %%F
    ) else (
        echo Se eliminó correctamente: %%F
    )
)

echo Eliminando archivos en tempUser

cd /d "%tempUser%" || (
    echo No se pudo acceder a la carpeta temp.
    exit /b 1
)

for %%F in (*) do (
    del /f "%%F" 2>nul
    if errorlevel 1 (
        echo No se pudo borrar el archivo: %%F
    ) else (
        echo Se eliminó correctamente: %%F
    )
)

echo Proceso completado.
pause
endlocal
eof
