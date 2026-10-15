@echo off
title Copiador de archivos PDF
color 0A

echo ========================================
echo       COPIADOR DE ARCHIVOS PDF
echo ========================================
echo.

:: Crear carpeta de destino
if not exist "D:\copi" mkdir "D:\copi"

:: Definir carpeta de origen
set "ORIGEN=%USERPROFILE%\Documents"

echo Carpeta de origen: %ORIGEN%
echo Carpeta de destino: D:\copi
echo.
echo Copiando archivos PDF...
echo.

:: Copiar todos los PDF de la carpeta de origen
:: y sus subcarpetas, conservando la estructura
robocopy "%ORIGEN%" "D:\copi" *.pdf /S /R:1 /W:1 /COPY:DAT

echo.
echo ========================================
echo Proceso finalizado.
echo Los archivos se encuentran en D:\copi
echo ========================================
pause