@echo off
ECHO =================
ECHO Memulai instalasi Laravel
ECHO =================
composer create-project laravel/laravel="5.8"
start env.bat
@PAUSE