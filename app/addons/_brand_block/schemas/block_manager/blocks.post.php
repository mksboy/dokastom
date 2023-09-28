<?php


$schema['_brand_block'] = array (
        'templates' => array(
            'addons/_brand_block/blocks/brands_block.tpl' => array(),
        ),
        'wrappers' => 'blocks/wrappers',
        'content' => array(
            'brands' => array(
                'type' => 'function',
                /** @see \fn_blocks_get_brands() */
                'function' => array('fn_blocks_get_brands'),
            ),
        ),
        'cache' => array(
            'update_handlers' => array(
                'product_features',
                'product_features_descriptions',
                'product_features_values',
                'product_feature_variants',
                'product_feature_variant_descriptions',
                'images_links'
            )
        )
);

return $schema;


