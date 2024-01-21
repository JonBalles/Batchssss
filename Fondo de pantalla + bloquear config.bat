@echo off

set "regkey=HKEY_CURRENT_USER\Control Panel\Desktop"

::Ruta de la imagen predeterminada
set "wallpaperPath=%~dp0\Wallpaper\fondo.jpg"
set "wpName=fondo.jpg"

::Copiar imagen a carpeta usuario
set "userPictureFolder=%USERPROFILE%\Pictures"

copy "%WalpapaerPath%" "%userPictureFolder%" "wpName"

:: Establecer el fondo de pantalla
reg add "%regkey%" /v Wallpaper /t REG_SZ /d "%userPictureFolder%\%wpName%" /f 

::Configurar el bloqueo de WP
reg add "%regkey%" /v WallpaperStyle /t REG_SZ /d 0 /fondo


echo Reiniciar para aplicar cambios
eof