ECHO @OFF
ECHO "Memulai instalasi Laravel"
composer create-project laravel/laravel="5.8"

ECHO "================="
ECHO "Copy env"
cd laravel
copy .env.example .env

ECHO "================="
ECHO "Membuat database"
type nul > database/database.sqlite

ECHO "================="
ECHO "Auth scaffolding"
php artisan make:auth

ECHO "================="
ECHO "Migrasi tabel"
php artisan migrate

ECHO "================="
ECHO "instalasi selesai"