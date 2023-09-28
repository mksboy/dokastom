<?php

$schema['addons/_dokastom/blocks/menu/dokastom_menu.tpl'] = array (
    'settings' => array (
        'dropdown_second_level_elements' => array (
            'type' => 'input',
            'default_value' => '12'
        ),
        'dropdown_third_level_elements' => array (
            'type' => 'input',
            'default_value' => '6'
        ),
        'display_bottom_buttons' => array(
            'type' => 'checkbox',
            'default_value' => 'Y'
        ),
        'display_delete_icons' => array(
            'type' => 'checkbox',
            'default_value' => 'Y'
        ),
        'products_links_type' => array(
            'type' => 'selectbox',
            'values' => array(
                'thumb' => 'thumb',
                'text' => 'text',
            ),
            'default_value' => 'thumb'
        ),
    ),
);

return $schema;