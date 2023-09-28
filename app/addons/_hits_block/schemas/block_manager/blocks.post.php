<?php


$schema['_hits_block'] = array (
           'content' => array(
            'items' => array(
                'type' => 'enum',
                'object' => 'products',
                'items_function' => 'fn_get_products',
                'remove_indent' => true,
                'hide_label' => true,
                'fillings' => array(
                    'manually' => array(
                        'picker' => 'views/products/components/picker/block_manager_picker.tpl',
                        'picker_params' => array(
                            'multiple' => true,
                            'view_mode' => 'external',
                            'show_positions' => true,
                        ),
                    ),
                    'newest' => array(
                        'params' => array(
                            'request' => array(
                                'cid' => '%CATEGORY_ID%'
                            )
                        )
                    ),
                    'recent_products' => array(
                        'params' => array(
                            'apply_limit' => true,
                            'session' => array(
                                'pid' => '%RECENTLY_VIEWED_PRODUCTS%'
                            ),
                            'request' => array(
                                'exclude_pid' => '%PRODUCT_ID%'
                            ),
                            'force_get_by_ids' => true,
                        ),
                    ),
                    'most_popular' => array(
                        'params' => array(
                            'popularity_from' => 1,
                            'sort_by' => 'popularity',
                            'sort_order' => 'desc',
                            'request' => array(
                                'cid' => '%CATEGORY_ID'
                            )
                        ),
                        'cache_ttl' => SECONDS_IN_DAY
                    ),
                ),
            ),
        ),
        'templates' => 'blocks/products',
        'settings' => array(
            'hide_add_to_cart_button' => array(
                'type' => 'checkbox',
                'default_value' => 'Y'
            )
        ),
        'wrappers' => 'blocks/wrappers',
        'cache' => array(
            'update_handlers' => array(
                'products',
                'product_descriptions',
                'product_prices',
                'products_categories',
                'product_options',
                'product_options_descriptions',
                'product_option_variants',
                'product_option_variants_descriptions',
                'product_global_option_links',
                'storefronts_companies',
            ),
            'request_handlers' => array('current_category_id' => '%CATEGORY_ID%'),
            'cookie_handlers' => array('%ALL%'),
            'callable_handlers' => array(
                'currency' => array('fn_get_secondary_currency'),
                'storefront' => ['fn_blocks_get_current_storefront_id'],
            ),
            'disable_cache_when' => array(
                'callable_handlers' => array(
                    array('fn_block_products_disable_cache', array('$block_data'))
                ),
            )
        ),
        'brief_info_function' => 'fn_block_get_block_with_items_info'
);

return $schema;


