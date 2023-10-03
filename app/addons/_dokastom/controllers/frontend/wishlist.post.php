<?php

use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }


if ($mode == 'add') {
//    fn_print_die($_REQUEST);


//Tygh::$app['view']->assign('wishlist_count', 555);
//Tygh::$app['view']->display('addons/ds_main_menu/blocks/ds_topmenu_dropdown.tpl');

    Tygh::$app['view']->assign('wishlist_count', fn_wishlist_get_count());
//    Registry::get('view')->assign('wishlist_count', fn_wishlist_get_count());
    Tygh::$app['view']->display('addons/_dokastom/blocks/static_templates/abt__ut2__top_buttons.tpl');
    exit;
}