<?php
//
//use Tygh\Registry;
//
//if (!defined('BOOTSTRAP')) {
//    die('Access denied');
//}
////ds_reg_private
//if ($_SERVER['REQUEST_METHOD'] === 'POST') {
//    $data = [];
//    if ($mode == 'ds_reg_private') {
//
//        $privateArray = [
//            19 => [
//                "payment_id" => 19,
//                "company_id" => 1,
//                "usergroup_ids" => 0,
//                "position" => 0,
//                "status" => "A",
//                "template" => "views/orders/components/payments/personal_check.tpl",
//                "processor_id" => 0,
//                "processor_params" => "",
//                "a_surcharge" => 0.000,
//                "p_surcharge" => 0.000,
//                "tax_ids" => "",
//                "localization" => "",
//                "payment_category" => "tab1",
//                "payment" => "Наличные",
//                "description" => "",
//                "instructions" => "",
//                "surcharge_title" => "",
//                "lang_code" => "ru",
//                "processor_status" => "A",
//                "processor_type" => "",
//                "processor_script" => "",
//                "image" => [],
//                "surcharge_value" => 0,
//            ],
//            2 => [
//                "payment_id" => 2,
//                "company_id" => 1,
//                "usergroup_ids" => 0,
//                "position" => 40,
//                "status" => "A",
//                "template" => "views/orders/components/payments/phone.tpl",
//                "processor_id" => 0,
//                "processor_params" => "",
//                "a_surcharge" => 0.000,
//                "p_surcharge" => 0.000,
//                "tax_ids" => "",
//                "localization" => "",
//                "payment_category" => "tab3",
//                "payment" => "Обсудить по телефону",
//                "description" => "Наш менеджер позвонит вам.",
//                "instructions" => "",
//                "surcharge_title" => "",
//                "lang_code" => "ru",
//                "processor_status" => "A",
//                "processor_type" => "",
//                "processor_script" => "",
//                "image" => [],
//                "surcharge_value" => 0,
//            ],
//        ];
//
//        Tygh::$app['view']->assign('payment_methods', $privateArray);
//        Tygh::$app['view']->display('addons/ds_private_order/views/checkout/components/steps/ds_payment.tpl');
//        exit;
//    } elseif ($mode == 'ds_reg_inn') {
//
//        $innArray = [
//            19 => [
//                "payment_id" => 19,
//                "company_id" => 1,
//                "usergroup_ids" => 0,
//                "position" => 0,
//                "status" => "A",
//                "template" => "views/orders/components/payments/personal_check.tpl",
//                "processor_id" => 0,
//                "processor_params" => "",
//                "a_surcharge" => 0.000,
//                "p_surcharge" => 0.000,
//                "tax_ids" => "",
//                "localization" => "",
//                "payment_category" => "tab1",
//                "payment" => "Наличные",
//                "description" => "",
//                "instructions" => "",
//                "surcharge_title" => "",
//                "lang_code" => "ru",
//                "processor_status" => "A",
//                "processor_type" => "",
//                "processor_script" => "",
//                "image" => [],
//                "surcharge_value" => 0,
//            ],
//            20 => [
//                "payment_id" => 20,
//                "company_id" => 1,
//                "usergroup_ids" => 0,
//                "position" => 0,
//                "status" => "A",
//                "template" => "addons/rus_payments/views/orders/components/payments/account_payment.tpl",
//                "processor_id" => 138,
//                "processor_params" => 'a:14:{s:22:"account_recepient_name";s:0:"";s:15:"account_address";s:0:"";s:13:"account_phone";s:0:"";s:11:"account_kpp";s:0:"";s:11:"account_inn";s:0:"";s:15:"account_current";s:0:"";s:12:"account_bank";s:0:"";s:11:"account_bik";s:0:"";s:11:"account_cor";s:0:"";s:15:"account_enabled";s:1:"Y";s:19:"account_print_width";s:3:"120";s:20:"account_print_height";s:3:"120";s:20:"account_order_status";s:1:"P";s:14:"fields_account";a:6:{s:21:"organization_customer";s:0:"";s:7:"address";s:0:"";s:15:"zip_postal_code";s:0:"";s:5:"phone";s:2:"30";s:12:"inn_customer";s:2:"14";s:12:"bank_details";s:0:"";}}',
//                "a_surcharge" => 0.000,
//                "p_surcharge" => 0.000,
//                "tax_ids" => "",
//                "localization" => "",
//                "payment_category" => "tab1",
//                "payment" => "Выставить счет",
//                "description" => "",
//                "instructions" => "",
//                "surcharge_title" => "",
//                "lang_code" => "ru",
//                "processor_status" => "A",
//                "processor_type" => "P",
//                "processor_script" => "account.php",
//                "image" => [],
//                "surcharge_value" => 0,
//            ],
//            2 => [
//                "payment_id" => 2,
//                "company_id" => 1,
//                "usergroup_ids" => 0,
//                "position" => 40,
//                "status" => "A",
//                "template" => "views/orders/components/payments/phone.tpl",
//                "processor_id" => 0,
//                "processor_params" => "",
//                "a_surcharge" => 0.000,
//                "p_surcharge" => 0.000,
//                "tax_ids" => "",
//                "localization" => "",
//                "payment_category" => "tab3",
//                "payment" => "Обсудить по телефону",
//                "description" => "Наш менеджер позвонит вам.",
//                "instructions" => "",
//                "surcharge_title" => "",
//                "lang_code" => "ru",
//                "processor_status" => "A",
//                "processor_type" => "",
//                "processor_script" => "",
//                "image" => [],
//                "surcharge_value" => 0,
//            ],
//        ];
//
//
//        Tygh::$app['view']->assign('payment_methods', $innArray);
//        Tygh::$app['view']->display('addons/ds_private_order/views/checkout/components/steps/ds_payment.tpl');
//        exit;;
//    }
//}