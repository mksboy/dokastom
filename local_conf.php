<?php

// Включаем режим разработки для отображения ошибок
define('DEVELOPMENT', true);
//define('DEBUG_MODE', true);

// Включаем отображение SMARTY- и PHP-ошибок на экране
error_reporting(E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', true);

$config['tweaks']['disable_block_cache'] = true;

// $config['db_host'] = '%DB_HOST%';
// $config['db_name'] = '%DB_NAME%';
// $config['db_user'] = '%DB_USER%';
// $config['db_password'] = '%DB_PASSWORD%';

// $config['http_host'] = '%HTTP_HOST%';
// $config['http_path'] = '%HOST_DIR%';

// $config['https_host'] = '%HTTPS_HOST%';
// $config['https_path'] = '%HOST_DIR%';