{if $products}

    {script src="js/tygh/exceptions.js"}
    {script src="js/addons/_dokastom/ds_wishlist.js"}
    {script src="js/addons/_dokastom/product_add.js"}


    {if !$no_pagination}
{*        <div class="ty-pagination-container cm-pagination-container" id="pagination_contents">*}
        {include file="common/pagination.tpl"}
    {/if}

    {if !$no_sorting}
        {include file="views/products/components/sorting.tpl"}
    {/if}

    {if !$show_empty}
        {split data=$products size=$columns|default:"2" assign="splitted_products"}
    {else}
        {split data=$products size=$columns|default:"2" assign="splitted_products" skip_complete=true}
    {/if}

    {*    {math equation="100 / x" x=$columns|default:"2" assign="cell_width"}*}
    {*    {if $item_number == "Y"}*}
    {*        {assign var="cur_number" value=1}*}
    {*    {/if}*}

    {* FIXME: Don't move this file *}
    {script src="js/tygh/product_image_gallery.js"}

    {if $settings.Appearance.enable_quick_view == 'Y'}
        {$quick_nav_ids = $products|fn_fields_from_multi_level:"product_id":"product_id"}
    {/if}


    <div class="ds-grid-list">


        {foreach from=$smarty.session.wishlist.products item="ds_wishlist_list"}
            {$ds_wish_id[$ds_wishlist_list.product_id]=$ds_wishlist_list.product_id}
        {/foreach}
        {*        {$smarty.session.wishlist.products|fn_print_r}*}
        {strip}
            {foreach from=$splitted_products item="sproducts" name="sprod"}
                {foreach from=$sproducts item="product" name="sproducts"}
                    <div class="ds-column">

                        {if $product}
                            {assign var="obj_id" value=$product.product_id}
                            {assign var="obj_id_prefix" value="`$obj_prefix``$product.product_id`"}
                            {include file="common/product_data.tpl" product=$product}
                            {assign var="ds_wishlist_in" value=""}
                            <div class="ds-grid-list__item ds-quick-view-button__wrapper
                                {if $settings.Appearance.enable_quick_view == 'Y' || $show_features} ty-grid-list__item--overlay{/if}">
                                {assign var="form_open" value="form_open_`$obj_id`"}
                                {$smarty.capture.$form_open nofilter}
                                {hook name="products:product_multicolumns_list"}

                                {$product_features = $product|fn_get_product_features_list}

                                {foreach $product_features as $feature}
                                    {if $feature.internal_name == "Характеристики"}
                                        <div class="ds_characteristics_items">
                                            <div class="ds_characteristics">
                                                {if $feature.variant == "Акция"}
                                                    <div class="ds_item_promotion ds_items">{$feature.variant}</div>
                                                {/if}
                                                {if $feature.variant == "Скидка"}
                                                    <div class="ds_item_discount ds_items">{$feature.variant}</div>
                                                {/if}
                                                {if $feature.variant == "Хит продаж"}
                                                    <div class="ds_item_bestseller ds_items">{$feature.variant}</div>
                                                {/if}
                                            </div>
                                        </div>
                                    {/if}
                                {/foreach}

                                    <div class="wishlist__buttons" id="wishlist__buttons_id">
                                        <a class="ds_wishlist ty-add-to-wish
                                        {if $ds_wish_id[$obj_id] == $obj_id} ds_wishlist_in{/if}"
                                           data-ds-dispatch="{$obj_id}"
                                                {if $ds_wish_id[$obj_id] == $obj_id}
                                            id="ds_wishlist_in"
                                                {/if}>
                                            <span class="ty-icon-doka-love"></span>
                                        </a>
                                        <!--wishlist__buttons_id--></div>

                                    <div class="ds-grid-list__image">
                                        {include file="views/products/components/product_icon.tpl" product=$product show_gallery=true}

                                        {assign var="product_labels" value="product_labels_`$obj_prefix``$obj_id`"}
                                        {$smarty.capture.$product_labels nofilter}
                                    </div>
                                    <div class="ds-grid-list__item-name">
                                        {if $item_number == "Y"}
                                            <span class="item-number">{$cur_number}.&nbsp;</span>
                                            {math equation="num + 1" num=$cur_number assign="cur_number"}
                                        {/if}

                                        {assign var="name" value="name_$obj_id"}
                                        <bdi>{$smarty.capture.$name nofilter}</bdi>
                                    </div>
                                {if $product.product_code}
                                    <div class="ds-product_features">
                                        <p>Артикул: {$product.product_code}</p>
                                    </div>
                                {/if}

                                {$product_features = $product|fn_get_product_features_list}
                                {foreach $product_features as $feature}
                                    {if $feature.internal_name == "Производитель"}
                                        <div class="ds-product_features">
                                            <p>Производитель: {$feature.variant}</p>
                                        </div>
                                    {/if}
                                {/foreach}

                                {capture name="product_multicolumns_list_control_data_wrapper"}
                                    <div class="ds-grid-list__control">
                                        {capture name="product_multicolumns_list_control_data"}
                                            {hook name="products:product_multicolumns_list_control"}
                                            {if $settings.Appearance.enable_quick_view == 'Y'}
                                                {include file="views/products/components/quick_view_link.tpl" quick_nav_ids=$quick_nav_ids}
                                            {/if}

                                            {if $show_add_to_cart}
                                                <div class="ds-button-container">
                                                    <div class="ds-button-container_items">
                                                        <div class="ds-price">
                                                            {assign var="price" value="price_`$obj_id`"}
                                                            {$smarty.capture.$price nofilter}
                                                        </div>
{*                                                        {$add_to_cart = "add_to_cart_`$obj_id`"}*}
{*                                                        {$smarty.capture.$add_to_cart nofilter}*}

                                                        {include file="buttons/add_to_cart.tpl" but_id=$_but_id but_name="dispatch[checkout.add..`$obj_id`]" but_role=$but_role block_width=$block_width obj_id=$obj_id product=$product but_meta=$add_to_cart_meta}
                                                    </div>
                                                </div>
                                            {/if}
                                            {/hook}
                                        {/capture}
                                        {$smarty.capture.product_multicolumns_list_control_data nofilter}
                                    </div>
                                {/capture}

                                {if $smarty.capture.product_multicolumns_list_control_data|trim}
                                    {$smarty.capture.product_multicolumns_list_control_data_wrapper nofilter}
                                {/if}
                                {/hook}
                                {assign var="form_close" value="form_close_`$obj_id`"}
                                {$smarty.capture.$form_close nofilter}
                            </div>
                        {/if}
                    </div>
                {/foreach}
                {if $show_empty && $smarty.foreach.sprod.last}
                    {assign var="iteration" value=$smarty.foreach.sproducts.iteration}
                    {capture name="iteration"}{$iteration}{/capture}
                    {hook name="products:products_multicolumns_extra"}
                    {/hook}
                    {assign var="iteration" value=$smarty.capture.iteration}
                    {if $iteration % $columns != 0}
                        {math assign="empty_count" equation="c - it%c" it=$iteration c=$columns}
                        {section loop=$empty_count name="empty_rows"}
                            <div class="ds-column{$columns}">
                                <div class="ty-product-empty">
                                    <span class="ty-product-empty__text">{__("empty")}</span>
                                </div>
                            </div>
                        {/section}
                    {/if}
                {/if}
            {/foreach}
        {/strip}
    </div>
    {if !$no_pagination}
        {include file="common/pagination.tpl"}
{*        <!--pagination_contents--></div>*}
    {/if}

{/if}

{capture name="mainbox_title"}{$title}{/capture}