<?php

$schema['addons/_hits_block/blocks/products/hits_scroller.tpl'] = array (
    'settings' => array(
        'show_price' => array (
            'type' => 'checkbox',
            'default_value' => 'Y'
        ),
        'enable_quick_view' => array (
            'type' => 'checkbox',
            'default_value' => 'N'
        ),
        'not_scroll_automatically' => array (
            'type' => 'checkbox',
            'default_value' => 'N'
        ),
        'scroll_per_page' =>  array (
            'type' => 'checkbox',
            'default_value' => 'N'
        ),
        'speed' =>  array (
            'type' => 'input',
            'default_value' => 400
        ),
        'pause_delay' =>  array (
            'type' => 'input',
            'default_value' => 3
        ),
        'item_quantity' =>  array (
            'type' => 'input',
            'default_value' => 5
        ),
        'thumbnail_width' =>  array (
            'type' => 'input',
            'default_value' => 80
        ),
        'outside_navigation' => array (
            'type' => 'checkbox',
            'default_value' => 'Y'
        )
    ),
    'bulk_modifier' => array (
        'fn_gather_additional_products_data' => array (
            'products' => '#this',
            'params' => array (
                'get_icon' => true,
                'get_detailed' => true,
                'get_options' => true,
            ),
        ),
    ),
);
$schema['addons/_hits_block/blocks/products/discount _scroller.tpl'] = array (
    'settings' => array(
        'show_price' => array (
            'type' => 'checkbox',
            'default_value' => 'Y'
        ),
        'enable_quick_view' => array (
            'type' => 'checkbox',
            'default_value' => 'N'
        ),
        'not_scroll_automatically' => array (
            'type' => 'checkbox',
            'default_value' => 'N'
        ),
        'scroll_per_page' =>  array (
            'type' => 'checkbox',
            'default_value' => 'N'
        ),
        'speed' =>  array (
            'type' => 'input',
            'default_value' => 400
        ),
        'pause_delay' =>  array (
            'type' => 'input',
            'default_value' => 3
        ),
        'item_quantity' =>  array (
            'type' => 'input',
            'default_value' => 5
        ),
        'thumbnail_width' =>  array (
            'type' => 'input',
            'default_value' => 80
        ),
        'outside_navigation' => array (
            'type' => 'checkbox',
            'default_value' => 'Y'
        )
    ),
    'bulk_modifier' => array (
        'fn_gather_additional_products_data' => array (
            'products' => '#this',
            'params' => array (
                'get_icon' => true,
                'get_detailed' => true,
                'get_options' => true,
            ),
        ),
    ),
);

return $schema;