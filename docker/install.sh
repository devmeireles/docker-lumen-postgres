apt update
apt install -y git
apt install -y zip
apt install -y sqlite
apt install -y php8.1-pgsql && php-common
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
mv composer.phar /usr/local/bin/composer
composer create-project -n --prefer-dist laravel/lumen /src/admin-api
php -S 0.0.0.0:8000 -t /src/admin-api/public
