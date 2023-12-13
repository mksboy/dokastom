<div id="ds_checkout_info_products_{$block.snapping_id}">
    <ul class="ds-order-products__list">
        {hook name="block_checkout:ds_cart_items"}
            {*        {$cart_products|fn_print_r}*}
        {foreach from=$cart_products key="key" item="product" name="cart_products"}
            {hook name="block_checkout:ds_cart_products"}
            {if !$cart.products.$key.extra.parent}
                <li class="ty-order-products__item">

                    <div class="ds_image_checkout_info">
                        <div class="ty-cart-items__list-item-image">
                            {include file="common/image.tpl" image_width="60" image_height="60" images=$product.main_pair no_ids=true}
                        </div>
                    </div>

                    <bdi><a class="ds_litecheckout__order-products-p" href="{"products.view?product_id=`$product.product_id`"|fn_url}">{$product.product nofilter}</a></bdi>
                    {if !$product.exclude_from_calculate}
                        {include file="buttons/button.tpl" but_href="checkout.delete?cart_id=`$key`&redirect_mode=`$runtime.mode`" but_meta="ty-order-products__item-delete delete" but_target_id="cart_status*" but_role="delete" but_name="delete_cart_item"}
                    {/if}
                    {hook name="products:ds_product_additional_info"}
                    {/hook}
                    <div class="ds-order-products__price">
                        <span>{$product.amount}</span><span dir="{$language_direction}">&nbsp;x&nbsp;</span>{include file="common/price.tpl" value=$product.display_price}
                    </div>

                    {include file="common/options_info.tpl" product_options=$product.product_options no_block=true}
                    {hook name="block_checkout:ds_product_extra"}{/hook}
                </li>
            {/if}
            {/hook}
        {/foreach}
        {/hook}
    </ul>
    <!--checkout_info_products_{$block.snapping_id}--></div>
