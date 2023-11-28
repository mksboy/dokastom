<?php

use Tygh\Registry;

if (!defined('BOOTSTRAP')) {
    die('Access denied');
}
//ds_reg_private
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = [];
    if ($mode == 'ds_reg_private') {

        $data = array(
            'C' => array(
                array(
                    'field_id' => 39,
                    'field_name' => 'private',
                    'profile_show' => 'Y',
                    'profile_required' => 'N',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'N',
                    'partner_show' => 'N',
                    'partner_required' => 'N',
                    'storefront_show' => 'Y',
                    'field_type' => 'R',
                    'profile_type' => 'U',
                    'position' => 0,
                    'is_default' => 'N',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => '',
                    'wrapper_class' => '',
                    'autocomplete_type' => '',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'N',
                    'description' => 'Я оформляю заказ как',
                    'values' => array(
                        1 => 'Юридическое лицо',
                        2 => 'Частное лицо'
                    )
                ),
                array(
                    'field_id' => 6,
                    'field_name' => 'firstname',
                    'profile_show' => 'Y',
                    'profile_required' => 'Y',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'Y',
                    'partner_show' => 'N',
                    'partner_required' => 'N',
                    'storefront_show' => 'Y',
                    'field_type' => 'I',
                    'profile_type' => 'U',
                    'position' => 20,
                    'is_default' => 'Y',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => 'first-name',
                    'wrapper_class' => '',
                    'autocomplete_type' => 'given-name',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'Y',
                    'description' => 'Имя'
                ),
                array(
                    'field_id' => 7,
                    'field_name' => 'lastname',
                    'profile_show' => 'Y',
                    'profile_required' => 'Y',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'Y',
                    'partner_show' => 'N',
                    'partner_required' => 'N',
                    'storefront_show' => 'Y',
                    'field_type' => 'I',
                    'profile_type' => 'U',
                    'position' => 30,
                    'is_default' => 'Y',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => 'last-name',
                    'wrapper_class' => '',
                    'autocomplete_type' => 'surname',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'Y',
                    'description' => 'Фамилия'
                ),
                array(
                    'field_id' => 32,
                    'field_name' => 'email',
                    'profile_show' => 'Y',
                    'profile_required' => 'Y',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'Y',
                    'partner_show' => 'Y',
                    'partner_required' => 'Y',
                    'storefront_show' => 'Y',
                    'field_type' => 'E',
                    'profile_type' => 'U',
                    'position' => 10,
                    'is_default' => 'Y',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => 'litecheckout__field--full',
                    'wrapper_class' => '',
                    'autocomplete_type' => 'off',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'Y',
                    'description' => 'E-mail'
                ),
                array(
                    'field_id' => 8,
                    'field_name' => 'company',
                    'profile_show' => 'Y',
                    'profile_required' => 'N',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'N',
                    'partner_show' => 'N',
                    'partner_required' => 'N',
                    'storefront_show' => 'Y',
                    'field_type' => 'I',
                    'profile_type' => 'U',
                    'position' => 40,
                    'is_default' => 'Y',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => 'company',
                    'wrapper_class' => '',
                    'autocomplete_type' => 'organization',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'Y',
                    'description' => 'Компания'
                ),
                array(
                    'field_id' => 9,
                    'field_name' => 'phone',
                    'profile_show' => 'Y',
                    'profile_required' => 'Y',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'Y',
                    'partner_show' => 'N',
                    'partner_required' => 'N',
                    'storefront_show' => 'Y',
                    'field_type' => 'P',
                    'profile_type' => 'U',
                    'position' => 50,
                    'is_default' => 'Y',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => 'phone',
                    'wrapper_class' => '',
                    'autocomplete_type' => 'tel',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'Y',
                    'description' => 'Телефон'
                ),
                array(
                    'field_id' => 36,
                    'field_name' => 'inn',
                    'profile_show' => 'Y',
                    'profile_required' => 'N',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'Y',
                    'partner_show' => 'N',
                    'partner_required' => 'N',
                    'storefront_show' => 'Y',
                    'field_type' => 'I',
                    'profile_type' => 'U',
                    'position' => 60,
                    'is_default' => 'N',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => 'ds_inn',
                    'wrapper_class' => '',
                    'autocomplete_type' => '',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'N',
                    'description' => 'ИНН'
                )
            )
        );


        Tygh::$app['view']->assign('items', $data);
        Tygh::$app['view']->display('addons/ds_private_order/blocks/lite_checkout/ds_private_order.tpl');
        return [CONTROLLER_STATUS_OK, 'ds_private_order.ds_reg_private'];
    } elseif ($mode == 'ds_reg_inn') {

        $data = array(
            'C' => array(
                array(
                    'field_id' => 39,
                    'field_name' => 'private',
                    'profile_show' => 'Y',
                    'profile_required' => 'N',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'N',
                    'partner_show' => 'N',
                    'partner_required' => 'N',
                    'storefront_show' => 'Y',
                    'field_type' => 'R',
                    'profile_type' => 'U',
                    'position' => 0,
                    'is_default' => 'N',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => '',
                    'wrapper_class' => '',
                    'autocomplete_type' => '',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'N',
                    'description' => 'Я оформляю заказ как',
                    'values' => array(
                        1 => 'Юридическое лицо',
                        2 => 'Частное лицо'
                    )
                ),
                array(
                    'field_id' => 6,
                    'field_name' => 'firstname',
                    'profile_show' => 'Y',
                    'profile_required' => 'Y',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'Y',
                    'partner_show' => 'N',
                    'partner_required' => 'N',
                    'storefront_show' => 'Y',
                    'field_type' => 'I',
                    'profile_type' => 'U',
                    'position' => 20,
                    'is_default' => 'Y',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => 'first-name',
                    'wrapper_class' => '',
                    'autocomplete_type' => 'given-name',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'Y',
                    'description' => 'Имя'
                ),
                array(
                    'field_id' => 7,
                    'field_name' => 'lastname',
                    'profile_show' => 'Y',
                    'profile_required' => 'Y',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'Y',
                    'partner_show' => 'N',
                    'partner_required' => 'N',
                    'storefront_show' => 'Y',
                    'field_type' => 'I',
                    'profile_type' => 'U',
                    'position' => 30,
                    'is_default' => 'Y',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => 'last-name',
                    'wrapper_class' => '',
                    'autocomplete_type' => 'surname',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'Y',
                    'description' => 'Фамилия'
                ),
                array(
                    'field_id' => 32,
                    'field_name' => 'email',
                    'profile_show' => 'Y',
                    'profile_required' => 'Y',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'Y',
                    'partner_show' => 'Y',
                    'partner_required' => 'Y',
                    'storefront_show' => 'Y',
                    'field_type' => 'E',
                    'profile_type' => 'U',
                    'position' => 10,
                    'is_default' => 'Y',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => 'litecheckout__field--full',
                    'wrapper_class' => '',
                    'autocomplete_type' => 'off',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'Y',
                    'description' => 'E-mail'
                ),
                array(
                    'field_id' => 9,
                    'field_name' => 'phone',
                    'profile_show' => 'Y',
                    'profile_required' => 'Y',
                    'checkout_show' => 'Y',
                    'checkout_required' => 'Y',
                    'partner_show' => 'N',
                    'partner_required' => 'N',
                    'storefront_show' => 'Y',
                    'field_type' => 'P',
                    'profile_type' => 'U',
                    'position' => 50,
                    'is_default' => 'Y',
                    'section' => 'C',
                    'matching_id' => 0,
                    'class' => 'phone',
                    'wrapper_class' => '',
                    'autocomplete_type' => 'tel',
                    'checkout_export_1c' => 'Y',
                    'cml_export_to_1c' => 'Y',
                    'description' => 'Телефон'
                ),
            )
        );


        Tygh::$app['view']->assign('items', $data);
        Tygh::$app['view']->display('addons/ds_private_order/blocks/lite_checkout/ds_private_order.tpl');
        return [CONTROLLER_STATUS_OK, 'ds_private_order.ds_reg_inn'];
    }
}