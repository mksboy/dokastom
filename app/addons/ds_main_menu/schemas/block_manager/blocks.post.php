<?php


$schema['ds_main_menu'] = array (
        'templates' => 'addons/ds_main_menu/blocks/menu',
        'content' => array(
            'items' => array(
                'type' => 'function',
                'function' => array('fn_get_menu_items')
            ),
            'menu' => array(
                'type' => 'template',
                'template' => 'views/menus/components/block_settings.tpl',
                'hide_label' => true,
                'data_function' => array('fn_get_menus'),
            ),
        ),
        'wrappers' => 'blocks/wrappers',
        'cache' => array(
            'update_handlers' => array('menus', 'menus_descriptions', 'static_data'),
            'callable_handlers' => array(
                'request' => ['fn_blocks_menu_get_request_hash', ['$block_data', '$_REQUEST', '$_SERVER']]
            ),
        ),
        'brief_info_function' => 'fn_block_get_menu_info'
    );

return $schema;


