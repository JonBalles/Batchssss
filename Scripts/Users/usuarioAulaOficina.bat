@echo off
setlocal

: Pedir Tipo Usuario
echo "1 - Oficina" 
echo "2 - Aula"
echo "3 - Salir" 
set /p tipoUsuario=Ingrese el tipo de usuario: 



if /i "%tipoUsuario%" equ "1" (
    set "usuario=Oficina"
    echo Creando usuario %usuario%...
    net user %usuario% 1 /add
) else if /i "%tipoUsuario%" equ "2" (
    set "usuario=Aula"
    echo Creando usuario %usuario%...
    net user %usuario% 1 /add
) else if /i "%tipoUsuario%" equ "3" (

    echo Saliendo del script.

    :: El comando /b 0 puede ser útil cuando quieres cerrar un subproceso sin afectar el script principal que lo llamó.
    exit /b 0

) else (
    echo Tipo de usuario no válido. Por favor, ingrese 'Oficina', 'Aula' o 'Salir'.
    goto pedirTipoUsuario
)

echo Proceso completado.
timeout /t 3 /nobreak >nul

