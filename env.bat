@echo off
ECHO =================
ECHO Copy env
ECHO =================
copy .env laravel\.env
cd laravel

ECHO =================
ECHO Membuat database
ECHO =================
type $null >> database/database.sqlite

ECHO =================
ECHO Auth scaffolding
ECHO =================
php artisan make:auth

ECHO =================
ECHO Migrasi tabel
ECHO =================
php artisan migrate

ECHO =================
ECHO instalasi selesai
@PAUSE