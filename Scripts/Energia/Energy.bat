@echo off
rem
rem PowerSetting
rem @created: 2024 Ene 26
rem @modified: 
rem @by: JonBalles
rem

echo Configurando energia

set id=7447bb5f-f653-4306-9fc7-4a7603de5266

:: Importar la configuración de energía desde el archivo
powercfg /import "%~dp0\setup.pow"

:: Establecer la configuración de energía recién importada
powercfg /setactive %id%

echo Configuración de energía terminada.
timeout /t 3 /nobreak >nul
