<?php

if (!defined('BOOTSTRAP')) { die('Access denied'); }

// Создаём функцию, которая подключится к хуку.
function fn_ds_private_order_get_shippings($fields, $conditions, $lang_code) {
    fn_print_die($fields);
}