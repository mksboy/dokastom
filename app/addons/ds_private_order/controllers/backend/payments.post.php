<?php
///**В админке получаем список служб отправки**/
//
//use Tygh\Enum\UserTypes;
//use Tygh\Registry;
//
//defined('BOOTSTRAP') or die('Access denied');
//
//$auth = & Tygh::$app['session']['auth'];
//
//if ($_SERVER['REQUEST_METHOD'] === 'POST') {
//    return ;
//}
//
//if ($mode == 'manage') {
//    Tygh::$app['view']->assign('shippings', fn_get_shippings(false));
//
//}
