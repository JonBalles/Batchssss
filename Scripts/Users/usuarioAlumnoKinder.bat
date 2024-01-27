@echo off
setlocal

set "usuarioAlumno=Alumno"
set "usuarioKinder=Kinder"

:: Verificar si el usuario Alumno existe
net user %usuarioAlumno% >nul 2>nul
if %errorlevel% neq 0 (
    echo Creando usuario %usuarioAlumno%...
    net user %usuarioAlumno% 1 /add
) else (
    echo El usuario %usuarioAlumno% ya existe.
)

:: Verificar si el usuario Kinder existe
net user %usuarioKinder% >nul 2>nul
if %errorlevel% neq 0 (
    echo Creando usuario %usuarioKinder%...
    net user %usuarioKinder% 2 /add
) else (
    echo El usuario %usuarioKinder% ya existe.
)

echo Proceso completado.
pause
eof
