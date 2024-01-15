@echo off

:: Importar la configuración de energía desde el archivo
powercfg /import "%~dp0\Energia\Aula.pow"

:: Establecer la configuración de energía recién importada
powercfg /setactive 7447bb5f-f653-4306-9fc7-4a7603de5266

echo Configuración de energía cambiada.
pause
