{script src="js/tygh/exceptions.js"}
{script src="js/addons/_dokastom/update_cart_count.js"}

<div class="ty-product-bigpicture">
    {hook name="products:view_main_info"}
    {if $product}
        {assign var="obj_id" value=$product.product_id}
        {include file="common/product_data.tpl" product=$product but_role="big" but_text=__("add_to_cart") product_labels_mini=true product_labels_static=true product_labels_rounded=true}

        <div class="ty-product-bigpicture__left">
            <div class="ty-product-bigpicture__left-wrapper">
                {hook name="products:main_info_title"}
                {if !$hide_title}
                    <h1 class="ds-product-block-title" {live_edit name="product:product:{$product.product_id}"}><bdi>{$product.product nofilter}</bdi></h1>
                {/if}
                {/hook}

                {hook name="products:image_wrap"}
                {if !$no_images}
                    <div class="ty-product-bigpicture__img {if $product.image_pairs|@count < 1} ty-product-bigpicture__no-thumbs{/if} cm-reload-{$product.product_id} {if $settings.Appearance.thumbnails_gallery == "Y"}ty-product-bigpicture__as-gallery{else}ty-product-bigpicture__as-thumbs{/if}" data-ca-previewer="true" id="product_images_{$product.product_id}_update">
                        {include file="views/products/components/product_images.tpl" product=$product show_detailed_link="Y" thumbnails_size=55 }
                        <!--product_images_{$product.product_id}_update--></div>
                {/if}
                {/hook}
            </div>
        </div>


        <div class="ty-product-bigpicture__right">

            {hook name="products:brand"}
            {hook name="products:brand_bigpicture"}
                <div class="ty-product-bigpicture__brand">
                    {include file="views/products/components/product_features_short_list.tpl" features=$product.header_features feature_image=true}
                </div>
            {/hook}
            {/hook}

            {assign var="form_open" value="form_open_`$obj_id`"}
            {$smarty.capture.$form_open nofilter}

            {assign var="old_price" value="old_price_`$obj_id`"}
            {assign var="price" value="price_`$obj_id`"}
            {assign var="clean_price" value="clean_price_`$obj_id`"}
            {assign var="list_discount" value="list_discount_`$obj_id`"}
            {assign var="discount_label" value="discount_label_`$obj_id`"}

            <div class="{if $smarty.capture.$old_price|trim || $smarty.capture.$clean_price|trim || $smarty.capture.$list_discount|trim}prices-container {/if}price-wrap">
                {if $smarty.capture.$old_price|trim || $smarty.capture.$clean_price|trim || $smarty.capture.$list_discount|trim}
                <div class="ty-product-bigpicture__prices">
                    {if $smarty.capture.$old_price|trim}{$smarty.capture.$old_price nofilter}{/if}
                    {/if}

                    {hook name="products:main_price"}
                    {if $smarty.capture.$price|trim}
                        <div class="ty-product-block__price-actual">
                            {$smarty.capture.$price nofilter}
                        </div>
                    {/if}
                    {/hook}


{*                    {foreach from=$smarty.session.cart.products item="ds_product"}*}
{*                        {$ds_product.product_id|fn_print_r}*}
{*                        {$ds_product.amount|fn_print_r}*}
{*                        {if $obj_id == $ds_product.product_id}*}
{*                           {$ds_product.amount}*}
{*                        {/if}*}
{*                    {/foreach}*}
                    {$product_features = $product|fn_get_product_features_list}

                    {foreach $product_features as $feature}
                        {if $feature.internal_name == "Страна производства"}
                            {assign var="country_of_origin" value="`$feature.variant`"}
                        {/if}

                        {if $feature.internal_name == "Производитель"}
                            {assign var="manufacturer" value="`$feature.variant`"}
                        {/if}

{*                        {if $feature.internal_name == "Характеристики"}*}
{*                            {assign var="discount" value="`$feature.variant`"}*}
{*                        {/if}*}
                    {/foreach}



                    <input type="hidden" value={$product.price} name="ds_product_price" id="ds_product_price" />

                    {if $smarty.capture.$old_price|trim || $smarty.capture.$clean_price|trim || $smarty.capture.$list_discount|trim}
                    <div class="ty-product-block__price-old">
                        {$smarty.capture.$clean_price nofilter}
                        {$smarty.capture.$list_discount nofilter}

                        {assign var="product_labels" value="product_labels_`$obj_prefix``$obj_id`"}
                        {$smarty.capture.$product_labels nofilter}
                    </div>
                </div>
                {/if}
            </div>

            <div class="ty-product-bigpicture__sidebar-bottom">

{*                {if $capture_options_vs_qty}{capture name="product_options"}{$smarty.capture.product_options nofilter}{/if}*}
{*                <div class="ty-product-block__option">*}
{*                    {assign var="product_options" value="product_options_`$obj_id`"}*}
{*                    {$smarty.capture.$product_options nofilter}*}
{*                </div>*}
{*                {if $capture_options_vs_qty}{/capture}{/if}*}

{*                {if $capture_options_vs_qty}{capture name="product_options"}{$smarty.capture.product_options nofilter}{/if}*}
{*                <div class="ty-product-block__advanced-option clearfix">*}
{*                    {assign var="advanced_options" value="advanced_options_`$obj_id`"}*}
{*                    {$smarty.capture.$advanced_options nofilter}*}
{*                </div>*}
{*                {if $capture_options_vs_qty}{/capture}{/if}*}

                <div class="ty-product-block__sku">
                    {assign var="sku" value="sku_`$obj_id`"}
                    {$smarty.capture.$sku nofilter}
                </div>

                {if $capture_options_vs_qty}{capture name="product_options"}{$smarty.capture.product_options nofilter}{/if}
                <div class="ty-product-block__field-group">

                    <label class="ty-control-group__label" id="sku_{$obj_id}">Страна:</label>
                    <span class="ty-control-group__item cm-reload-{$obj_id}" id="product_code_{$obj_id}">
                        {$country_of_origin}
                        <!--product_code_{$obj_id}--></span>

                    <label class="ty-control-group__label" id="sku_{$obj_id}">Фирма:</label>
                    <span class="ty-control-group__item cm-reload-{$obj_id}" id="product_code_{$obj_id}">
                        {$manufacturer}
                        <!--product_code_{$obj_id}--></span>

                    <hr>
                    {assign var="qty" value="qty_`$obj_id`"}
                    {$smarty.capture.$qty nofilter}

                    {assign var="min_qty" value="min_qty_`$obj_id`"}
                    {$smarty.capture.$min_qty nofilter}

                    <h3 class="ds_price_sum">

                    </h3>
                </div>
                {if $capture_options_vs_qty}{/capture}{/if}

                {assign var="product_edp" value="product_edp_`$obj_id`"}
                {$smarty.capture.$product_edp nofilter}

                {hook name="products:promo_text"}
                {if $product.promo_text}
                    <div class="ty-product-block__note">
                        {$product.promo_text nofilter}
                    </div>
                {/if}
                {/hook}

                {if $show_descr}
                    {assign var="prod_descr" value="prod_descr_`$obj_id`"}
                    <h3 class="ty-product-block__description-title">{__("description")}</h3>
                    <div class="ty-product-block__description">{$smarty.capture.$prod_descr nofilter}</div>
                {/if}

                {if $capture_buttons}{capture name="buttons"}{/if}
                <div class="ty-product-block__button">
                    {if $show_details_button}
                        {include file="buttons/button.tpl" but_href="products.view?product_id=`$product.product_id`" but_text=__("view_details") but_role="submit"}
                    {/if}

{*                    {include file="buttons/button.tpl"*}
{*                    but_id="button_cart_`$obj_prefix``$obj_id`"*}
{*                    but_meta="ty-add-to-wish"*}
{*                    but_name="dispatch[checkout.add..`$obj_id`]"*}
{*                    but_role="text"*}
{*                    but_icon="ty-icon-doka-cart"*}
{*                    }*}

{*                    {assign var="add_to_cart" value="add_to_cart_`$obj_id`"}*}
{*                    {$smarty.capture.$add_to_cart nofilter}*}
                    <div class="ds_block_button">
                        <div class="ds_add_to_cart">
                            <button
                                    id="button_cart_{$obj_id}"
                                    class="product_cart_button"
                                    type="submit"
                                    name="dispatch[checkout.add..{$obj_id}]"
                            >В корзину</button>
                        </div>
                        <div class="wishlist__buttons">
                            {include file="buttons/button.tpl"
                            but_id="button_wishlist_`$obj_prefix``$product.product_id`"
                            but_meta="ty-add-to-wish" but_name="dispatch[wishlist.add..`$product.product_id`]"
                            but_role="text"
                            but_icon="ty-icon-doka-love"
                            but_onclick=$but_onclick but_href=$but_href}
                        </div>
                    </div>


{*                    {include file="buttons/button.tpl"*}
{*                    but_text=__("call_requests.buy_now_with_one_click")*}
{*                    but_href="products.view?product_id=`$product.product_id`"*}
{*                    but_role="text"*}
{*                    but_id="buy_now_with_one_click_{$obj_prefix}{$product.product_id}"*}
{*                    but_meta="btn ty-btn ty-btn__text ty-cr-product-button"*}
{*                    }*}
                </div>
                {if $capture_buttons}{/capture}{/if}
            </div>
{*            {$my_ret_url = fn_url("products.view?product_id=".$product_id)}*}
{*            <a href="https://telegram.me/share/url?url=<{$my_ret_url}>&text=<TEXT>">Telegram</a>*}

            {hook name="products:product_form_close_tag"}
            {$form_close="form_close_`$obj_id`"}
            {$smarty.capture.$form_close nofilter}
            {/hook}

            {hook name="products:product_detail_bottom"}
            {/hook}

            {if $show_product_tabs}
                {include file="views/tabs/components/product_popup_tabs.tpl"}
                {$smarty.capture.popupsbox_content nofilter}
            {/if}
        </div>
        <div class="clearfix"></div>
    {/if}

    {/hook}

    {if $smarty.capture.hide_form_changed == "Y"}
        {assign var="hide_form" value=$smarty.capture.orig_val_hide_form}
    {/if}

    {if $show_product_tabs}
        {hook name="products:product_tabs"}
            {include file="views/tabs/components/product_tabs.tpl"}

        {if $blocks.$tabs_block_id.properties.wrapper}
            {include file=$blocks.$tabs_block_id.properties.wrapper content=$smarty.capture.tabsbox_content title=$blocks.$tabs_block_id.description}
        {else}
            {$smarty.capture.tabsbox_content nofilter}
        {/if}
        {/hook}
    {/if}
</div>

{capture name="mainbox_title"}{assign var="details_page" value=true}{/capture}