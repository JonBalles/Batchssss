@echo off
setlocal

:pedirTipoUsuario
set /p tipoUsuario=Ingrese el tipo de usuario (Oficina/Aula): 

if /i "%tipoUsuario%" equ "Oficina" (
    set "usuario=Oficina"
) else if /i "%tipoUsuario%" equ "Aula" (
    set "usuario=Aula"
) else if /i "%tipoUsuario%" equ "Salir" (
    echo Saliendo del script.
    exit /b 0
) else (
    echo Tipo de usuario no válido. Por favor, ingrese 'Oficina', 'Aula' o 'Salir'.
    goto pedirTipoUsuario
)

rem Verificar si el usuario ya existe

net user %usuario% >nul 2>nul
if %errorlevel% neq 0 (
    echo Creando usuario %usuario%...
    net user %usuario% 1 /add
    echo Usuario creado con éxito.
) else (
    echo El usuario %usuario% ya existe. Saliendo del script.
)

echo Proceso completado.
pause

