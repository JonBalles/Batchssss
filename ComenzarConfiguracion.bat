@echo off

echo Inicio de configuración

:pedirTipoUsuario
echo Que tipo de usuario vas a crear?
echo "1 - Aula - Oficina" 
echo "2 - Alumno - Kinder"
echo "3 - Salir" 

set /p tipoUsuario=Elija el numero correspondiente 

if /i "%tipoUsuario%" equ "1" (
    call Scripts\Users\usuarioAulaOficina.bat
) else if /i "%tipoUsuario%" equ "2" (
    call Scripts\Users\usuarioAlumnoKinder.bat
) else if /i "%tipoUsuario%" equ "3" (
    echo Saliendo del script.
    exit /b 0
) else (
    echo Ingreso invalido. Intente nuevamente.
    goto pedirTipoUsuario
)

echo Configuración de usuarios finalizada
timeout /t 3 /nobreak >nul

::*------------*

echo Configurando opciones de energia...
call Energia\energy.bat

::*-------------*

echo Configurando WallPaper...
call Wallpaper\wallpaperBlock.bat


