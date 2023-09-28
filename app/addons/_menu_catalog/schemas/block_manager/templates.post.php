<?php

$schema['addons/_menu_catalog/blocks/categories/catalog_list.tpl'] = array (
        'params' => array (
            'plain' => '',
            'get_images' => true,
            'request' => array (
                'active_category_id' => '%CATEGORY_ID%',
            ),
        ),
        'settings' => array(
            'right_to_left_orientation' => array (
                'type' => 'checkbox',
                'default_value' => 'N'
            )
        ),
        'fillings' => array('full_tree_cat', 'dynamic_tree_cat', 'subcategories_tree_cat'),
    );

return $schema;