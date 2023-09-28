<?php

$schema['addons/_brand_block/blocks/brands_block.tpl'] = array (
    
        'settings' => array(
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
                'default_value' => 6,
                'option_name' => 'block_manager.brands_per_screen',
            ),
            'total_items' => [
                'type' => 'input',
                'default_value' => 12,
                'option_name' => 'block_manager.total_displayed_brands',
            ],
            'thumbnail_width' =>  array (
                'type' => 'input',
                'default_value' => 50
            ),
            'outside_navigation' => array (
                'type' => 'checkbox',
                'default_value' => 'Y'
            )
        ),
    
);

return $schema;