{if $products}

    {script src="js/tygh/exceptions.js"}


    {if !$no_pagination}
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

{*    {assign var="wishlist_count" value=""|fn_wishlist_get_count}*}
{*    <div class="ds_count_wishlist">*}
{*        *}{*                                        {$wishlist_count = $smarty.session.wishlist.products|@count}*}
{*        <div class="ds-wish_list_count" id="wish_list_count">*}
{*            <span>{$wishlist_count}</span>*}
{*            <!--wish_list_count-->*}
{*        </div>*}
{*    </div>*}

    <div class="ds-grid-list">



        {$ds_wish_id = array()}
        {foreach from=$smarty.session.wishlist.products item="ds_wishlist_list" key="ds_number"}
            {$ds_wish_id[]=$ds_wishlist_list.product_id}

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
                            <div class="ds-grid-list__item ds-quick-view-button__wrapper
                                {if $settings.Appearance.enable_quick_view == 'Y' || $show_features} ty-grid-list__item--overlay{/if}">
                                {assign var="form_open" value="form_open_`$obj_id`"}
                                {$smarty.capture.$form_open nofilter}
                                {hook name="products:product_multicolumns_list"}

                                    <div class="wishlist__buttons">
                                        {include file="buttons/button.tpl"
                                        but_id="button_wishlist_`$obj_prefix``$product.product_id`"
                                        but_meta="ty-add-to-wish" but_name="dispatch[wishlist.add..`$product.product_id`]"
                                        but_role="text"
                                        but_icon="ty-icon-doka-love"
                                        but_onclick=$but_onclick but_href=$but_href}
                                    </div>

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
                                                        {$add_to_cart = "add_to_cart_`$obj_id`"}
                                                        {$smarty.capture.$add_to_cart nofilter}
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
    {/if}

{/if}

{capture name="mainbox_title"}{$title}{/capture}