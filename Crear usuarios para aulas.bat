@echo off
setlocal

set "usuarioAlumno=Alumno"
set "usuarioJardin=Jardin"

:: Verificar si el usuario Alumno existe
net user %usuarioAlumno% >nul 2>nul
if %errorlevel% neq 0 (
    echo Creando usuario %usuarioAlumno%...
    net user %usuarioAlumno% 1 /add
) else (
    echo El usuario %usuarioAlumno% ya existe.
)

:: Verificar si el usuario Jardin existe
net user %usuarioJardin% >nul 2>nul
if %errorlevel% neq 0 (
    echo Creando usuario %usuarioJardin%...
    net user %usuarioJardin% 2 /add
) else (
    echo El usuario %usuarioJardin% ya existe.
)

echo Proceso completado.
pause
eof
