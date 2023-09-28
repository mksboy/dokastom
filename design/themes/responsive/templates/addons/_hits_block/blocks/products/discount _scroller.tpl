{** block-description:Top_seller **}

{if $settings.Appearance.enable_quick_view == "Y" && $block.properties.enable_quick_view == "Y"}
    {$quick_nav_ids = $items|fn_fields_from_multi_level:"product_id":"product_id"}
{/if}

{if $block.properties.hide_add_to_cart_button == "Y"}
    {$_show_add_to_cart=false}
{else}
    {$_show_add_to_cart=true}
{/if}
{if $block.properties.show_price == "Y"}
    {$_hide_price=false}
{else}
    {$_hide_price=true}
{/if}

{$show_old_price = true}

{$obj_prefix="`$block.block_id`000"}
{$block.block_id = "{$block.block_id}_{uniqid()}"}
{$item_quantity = $block.properties.item_quantity|default:5}
{$item_quantity_desktop = $item_quantity}
{$item_quantity_mobile = 1}

{if $item_quantity > 3}
    {$item_quantity_desktop_small = $item_quantity - 1}
    {$item_quantity_tablet = $item_quantity - 2}
{elseif $item_quantity === 1}
    {$item_quantity_desktop_small = $item_quantity}
    {$item_quantity_tablet = $item_quantity}
{else}
    {$item_quantity_desktop_small = $item_quantity - 1}
    {$item_quantity_tablet = $item_quantity - 1}
{/if}

{*{if $block.properties.outside_navigation == "Y"}*}
{*    <div class="owl__theme">*}
{*        <div class="owl-controls clickable owl-controls-outside" id="owl_outside_nav_{$block.block_id}">*}
{*            <div class="owl-buttons" id="owl_prev_{$obj_prefix}">*}
{*                *}{*                <div class="owl-prev">{include_ext file="common/icon.tpl" class="ty-icon-left-open-thin"}</div>*}
{*                <div class="owl_prev_title">*}
{*                    <h2 class="ty-mainbox-simple-title">Хит продаж</h2>*}
{*                </div>*}
{*                <div id="owl_next_{$obj_prefix}"*}
{*                     class="owl-next">{include_ext file="common/icon.tpl" class="ty-icon-right-open-thin"}</div>*}
{*            </div>*}
{*        </div>*}
{*    </div>*}
{*{/if}*}


<div id="scroll_list_{$block.block_id}" class="owl-carousel ty-scroller-list ty-scroller"
     data-ca-scroller-item="{$item_quantity}"
     data-ca-scroller-item-desktop="{$item_quantity_desktop}"
     data-ca-scroller-item-desktop-small="{$item_quantity_desktop_small}"
     data-ca-scroller-item-tablet="{$item_quantity_tablet}"
     data-ca-scroller-item-mobile="{$item_quantity_mobile}"
>
    {foreach from=$items item="product" name="for_products"}

                    {$product_features = $product|fn_get_product_features_list}
                {$isHit = false}
                    {foreach $product_features as $feature}
                        {if $feature.internal_name == "Акция, Скидка, Хит продаж"}
                            {if $feature.variant == "Хит продаж"}
                                {$isHit = true}
                                
                                {break}
                            {/if}
                        {/if}
                    {/foreach}
                    {if $isHit == false}
                        {continue}
                    {/if}


        {hook name="products:product_scroller_list"}
            <div class="ds-sales-hit">


                {hook name="products:product_scroller_list_item"}
                {$obj_id="scr_`$block.block_id`000`$product.product_id`"}
                    <div class="ds-sales-hit__product-card">
                        <div class="image-container">
                            <div class="favorite-button">
                                {strip}
                                    {include file="addons/_hits_block/blocks/list_templates/wishlist_but.tpl" product=$product show_list_buttons=true  show_add_to_cart=true but_role="action"}
                                {/strip}
                            </div>

                            <div class="product-picture">
                                {include file="common/image.tpl" assign="object_img" images=$product.main_pair image_width=$block.properties.thumbnail_width image_height=$block.properties.thumbnail_width no_ids=true lazy_load=true}
                                <a href="{"products.view?product_id=`$product.product_id`"|fn_url}">{$object_img nofilter}</a>
                                {if $settings.Appearance.enable_quick_view == "Y" && $block.properties.enable_quick_view == "Y"}
                                    {include file="views/products/components/quick_view_link.tpl" quick_nav_ids=$quick_nav_ids}
                                {/if}
                            </div>


                        </div>
                    </div>
                    <div class="ty-scroller-list__hits">
                        {strip}
                            {include file="blocks/list_templates/simple_list.tpl" product=$product  show_name=true show_price=false show_add_to_cart=$_show_add_to_cart but_role="action" hide_price=$_hide_price hide_qty=true show_product_labels=true show_discount_label=true show_shipping_label=true}
                        {/strip}
                    </div>
                    <div class="ty-scroller-list__hits-cart">


                        {strip}
                            {include file="addons/_hits_block/blocks/list_templates/cart_but.tpl" product=$product show_list_buttons=true  show_add_to_cart=true but_role="action"}
                        {/strip}
                    </div>
                {/hook}
            </div>
        {/hook}
    {/foreach}
</div>


{include file="common/scroller_init.tpl" prev_selector="#owl_prev_`$obj_prefix`" next_selector="#owl_next_`$obj_prefix`"}

