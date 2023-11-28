<?php

use Tygh\Enum\ProductFeatures;
use Tygh\Enum\ProfileFieldSections;
use Tygh\Enum\ProfileFieldTypes;
use Tygh\Enum\YesNo;
use Tygh\Registry;

$schema['ds_private_order'] = [
    'show_on_locations' => ['checkout'],
    'templates'         => 'addons/ds_private_order/blocks/lite_checkout/ds_private_order.tpl',
    'wrappers'          => 'blocks/lite_checkout/wrappers',
    'content'           => [
        'items' => [
            'type'           => 'enum',
            'object'         => 'profile_fields',
            'items_function' => 'fn_blocks_get_lite_checkout_profile_fields',
            'remove_indent'  => true,
            'hide_label'     => true,
            'fillings'       => [
                'manually' => [
                    'picker'        => 'pickers/profile_fields/picker.tpl',
                    'picker_params' => [
                        'sortable'      => true,
                        'section'       => ProfileFieldSections::CONTACT_INFORMATION,
                        'exclude_types' => [ProfileFieldTypes::FILE],
                    ],
                    'before_save_handlers' => [
                        'checkout_required_fields' => 'fn_blocks_update_contact_information_check_required_fields',
                    ],
                    'after_save_handlers' => [
                        'checkout_visibility' => 'fn_blocks_update_contact_information_profile_fields_visibility',
                    ],
                ],
            ],
        ],
    ],
    'brief_info_function' => 'fn_block_get_block_with_items_info'
];

return $schema;


