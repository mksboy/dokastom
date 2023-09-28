{hook name="blocks:topmenu_dropdown"}
{if $items}
    <!-------------------------------Блок ds_main_menu-->
    <div class="ds-menu-items">

    <div class="ds-menu-item_menu">
        <ul class="ty-menu__items cm-responsive-menu">
            {hook name="blocks:topmenu_dropdown_top_menu"}
                <li class="ty-menu__item ty-menu__menu-btn visible-phone cm-responsive-menu-toggle-main">
                    <a class="ty-menu__item-link">
                        {include_ext file="common/icon.tpl" class="ty-icon-short-list"}
                        <span>{__("menu")}</span>
                    </a>
                </li>
            {foreach from=$items item="item1" name="item1"}
                {assign var="item1_url" value=$item1|fn_form_dropdown_object_link:$block.type}
                {assign var="unique_elm_id" value=$item1_url|md5}
                {assign var="unique_elm_id" value="topmenu_`$block.block_id`_`$unique_elm_id`"}

                {if $subitems_count}

                {/if}
                <li class="ty-menu__item cm-menu-item-responsive {if !$item1.$childs} ty-menu__item-nodrop{/if}{if $item1.active || $item1|fn_check_is_active_menu_item:$block.type} ty-menu__item-active{/if}{if $item1.class} {$item1.class}{/if}">
                    {if $item1.$childs}
                        <a class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle">
                            {include_ext file="common/icon.tpl"
                            class="ty-icon-down-open ty-menu__icon-open"
                            }
                            {include_ext file="common/icon.tpl"
                            class="ty-icon-up-open ty-menu__icon-hide"
                            }
                        </a>
                    {/if}
                    <a {if $item1_url} href="{$item1_url}"{/if}
                            class="ty-menu__item-link" {if $item1.new_window}target="_blank"{/if}>
                        {$item1.$name}
                    </a>
                    {if $item1.$childs}

                        {if !$item1.$childs|fn_check_second_level_child_array:$childs}
                            {* Only two levels. Vertical output *}
                            <div class="ty-menu__submenu">
                                <ul class="ty-menu__submenu-items ty-menu__submenu-items-simple cm-responsive-menu-submenu">
                                    {hook name="blocks:topmenu_dropdown_2levels_elements"}

                                    {foreach from=$item1.$childs item="item2" name="item2"}
                                        {assign var="item_url2" value=$item2|fn_form_dropdown_object_link:$block.type}
                                        <li class="ty-menu__submenu-item{if $item2.active || $item2|fn_check_is_active_menu_item:$block.type} ty-menu__submenu-item-active{/if}{if $item2.class} {$item2.class}{/if}">
                                            <a class="ty-menu__submenu-link" {if $item_url2} href="{$item_url2}"{/if} {if $item2.new_window}target="_blank"{/if}>{$item2.$name}</a>
                                        </li>
                                    {/foreach}
                                    {if $item1.show_more && $item1_url}
                                        <li class="ty-menu__submenu-item ty-menu__submenu-alt-link">
                                            <a href="{$item1_url}"
                                               class="ty-menu__submenu-alt-link">{__("text_topmenu_view_more") nofilter}</a>
                                        </li>
                                    {/if}

                                    {/hook}
                                </ul>
                            </div>
                        {else}
                            <div class="ty-menu__submenu" id="{$unique_elm_id}">
                                {hook name="blocks:topmenu_dropdown_3levels_cols"}
                                    <ul class="ty-menu__submenu-items cm-responsive-menu-submenu">
                                        {foreach from=$item1.$childs item="item2" name="item2"}
                                            <li class="ty-top-mine__submenu-col">
                                                {assign var="item2_url" value=$item2|fn_form_dropdown_object_link:$block.type}
                                                <div class="ty-menu__submenu-item-header{if $item2.active || $item2|fn_check_is_active_menu_item:$block.type} ty-menu__submenu-item-header-active{/if}{if $item2.class} {$item2.class}{/if}">
                                                    <a{if $item2_url} href="{$item2_url}"{/if}
                                                            class="ty-menu__submenu-link" {if $item2.new_window}target="_blank"{/if}>{$item2.$name}</a>
                                                </div>
                                                {if $item2.$childs}
                                                    <a class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle">
                                                        {include_ext file="common/icon.tpl"
                                                        class="ty-icon-down-open ty-menu__icon-open"
                                                        }
                                                        {include_ext file="common/icon.tpl"
                                                        class="ty-icon-up-open ty-menu__icon-hide"
                                                        }
                                                    </a>
                                                {/if}
                                                <div class="ty-menu__submenu">
                                                    <ul class="ty-menu__submenu-list cm-responsive-menu-submenu">
                                                        {if $item2.$childs}
                                                            {hook name="blocks:topmenu_dropdown_3levels_col_elements"}
                                                            {foreach from=$item2.$childs item="item3" name="item3"}
                                                                {assign var="item3_url" value=$item3|fn_form_dropdown_object_link:$block.type}
                                                                <li class="ty-menu__submenu-item{if $item3.active || $item3|fn_check_is_active_menu_item:$block.type} ty-menu__submenu-item-active{/if}{if $item3.class} {$item3.class}{/if}">
                                                                    <a{if $item3_url} href="{$item3_url}"{/if}
                                                                            class="ty-menu__submenu-link" {if $item3.new_window}target="_blank"{/if}>{$item3.$name}</a>
                                                                </li>
                                                            {/foreach}
                                                            {if $item2.show_more && $item2_url}
                                                                <li class="ty-menu__submenu-item ty-menu__submenu-alt-link">
                                                                    <a href="{$item2_url}"
                                                                       class="ty-menu__submenu-link"
                                                                       {if $item2.new_window}target="_blank"{/if}>{__("text_topmenu_view_more") nofilter}</a>
                                                                </li>
                                                            {/if}
                                                            {/hook}
                                                        {/if}
                                                    </ul>
                                                </div>
                                            </li>
                                        {/foreach}
                                        {if $item1.show_more && $item1_url}
                                            <li class="ty-menu__submenu-dropdown-bottom">
                                                <a href="{$item1_url}"
                                                   {if $item1.new_window}target="_blank"{/if}>{__("text_topmenu_more", ["[item]" => $item1.$name]) nofilter}</a>
                                            </li>
                                        {/if}
                                    </ul>
                                {/hook}
                            </div>
                        {/if}

                    {/if}
                </li>
            {/foreach}

            {/hook}
        </ul>
    </div>

    <div class="ds-menu-item_search">
        <div class="search__block">
            <form action="{""|fn_url}" name="search_form" method="get">
                <input type="hidden" name="match" value="all"/>
                <input type="hidden" name="subcats" value="Y"/>
                <input type="hidden" name="pcode_from_q" value="Y"/>
                <input type="hidden" name="pshort" value="Y"/>
                <input type="hidden" name="pfull" value="Y"/>
                <input type="hidden" name="pname" value="Y"/>
                <input type="hidden" name="pkeywords" value="Y"/>
                <input type="hidden" name="search_performed" value="Y"/>

                {hook name="search:additional_fields"}{/hook}

                {strip}
                    {if $settings.General.search_objects}
                        {assign var="search_title" value=__("storefront_search_general")}
                    {else}
                        {assign var="search_title" value=__("search_products")}
                    {/if}
                    <input type="text" name="q" value="{$search.q}"
                           id="search_input{$smarty.capture.search_input_id}" title="{$search_title}"
                           class="block__input"/>
                    {if $settings.General.search_objects}
                        {include file="addons/_dokastom/templates/buttons/search_buttons.tpl" but_name="search.results" alt=__("storefront_search_button")}
                    {else}
                        {include file="addons/_dokastom/templates/buttons/search_buttons.tpl" but_name="products.search" alt=__("storefront_search_button")}
                    {/if}
                {/strip}

                {capture name="search_input_id"}{$block.snapping_id}{/capture}

            </form>
        </div>
    </div>

    <div class="ds-menu-item_wishlist" id="wish_list_ds">
        <div class="wishlist__items">
{*            <div class="ds_cont_wishlist">{$ds_id_wishlist_count}</div>*}
            <div class="wishlist__item"">
                <a href="{"wishlist.view"|fn_url}" rel="nofollow">
                    {$wishlist_count = $smarty.session.wishlist.products|@count}
{*                    {assign var="wishlist_count" value=""|fn_wishlist_get_count}*}
                    {if $wishlist_count}
                        <div class="wishlist_icon">
                            <div class="wishlist__img">
                                <img src="images/mspuz/heart.png" alt="">
                            </div>

                            <div class="cart_count"><span>{$wishlist_count}</span>

                            </div>
                        </div>
                    {else}
                        <div class="wishlist_icon">
                            <div class="wishlist__img">
                                <img src="images/mspuz/heart.png" alt="">
                            </div>
                            <div class="cart_count"><span>0</span></div>
                        </div>
                    {/if}
                </a>
            </div>
        </div>
        <!--wish_list_ds-->
    </div>

    <div class="ds-menu-item_cart">
        <div class="cart__block_div">
            <div class="ty-dropdown-box" id="cart_status_{$dropdown_id}">
                <div id="sw_dropdown_{$dropdown_id}" class="ty-dropdown-box__title cm-combination">
                    <a href="{"checkout.cart"|fn_url}">
                        {hook name="checkout:dropdown_title"}
                            <!-- Cart -->
                            <div class="cart__items">
                                {if $smarty.session.cart.amount}
                                    <div class="cart_icon">
                                        <div class="cart__img">
                                            <img src="images/mspuz/cart.png" alt="">
                                        </div>


                                        <div class="cart__price_amount">
                                            <div class="cart_count"><span>{$smarty.session.cart.amount}</span>
                                            </div>
                                            <div class="cart_price">
                                                <span>{include file="common/price.tpl" value=$smarty.session.cart.display_subtotal}</span>
                                            </div>
                                        </div>
                                    </div>
                                {else}
                                    <div class="cart_icon null_amount">
                                        <div class="cart__img">
                                            <img src="images/mspuz/cart.png" alt="">
                                        </div>
                                        <div class="cart__price_amount">
                                            <div class="cart_count">
                                                <span>0</span>
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                            </div>
                        {/hook}
                    </a>
                </div>
                <div id="dropdown_{$dropdown_id}"
                     class="cm-popup-box ty-dropdown-box__content ty-dropdown-box__content--cart hidden">
                    {hook name="checkout:minicart"}
                        <div class="cm-cart-content {if $block.properties.products_links_type == "thumb"}cm-cart-content-thumb{/if} {if $block.properties.display_delete_icons == "Y"}cm-cart-content-delete{/if}">
                            <div class="ty-cart-items">

                                {if $smarty.session.cart.amount}
                                    <ul class="ty-cart-items__list">

                                        {hook name="index:cart_status"}
                                        {assign var="_cart_products" value=$smarty.session.cart.products|array_reverse:true}
                                        {foreach from=$_cart_products key="key" item="product" name="cart_products"}
                                            {hook name="checkout:minicart_product"}
                                            {if !$product.extra.parent}
                                                <li class="ty-cart-items__list-item">

                                                    {hook name="checkout:minicart_product_info"}
{*                                                    {if $block.properties.products_links_type == "thumb"}*}
                                                        <div class="ty-cart-items__list-item-image">
                                                            {include file="common/image.tpl" image_width="40" image_height="40" images=$product.main_pair no_ids=true}
                                                        </div>
{*                                                    {/if}*}
                                                        <div class="ty-cart-items__list-item-desc">
                                                            <a href="{"products.view?product_id=`$product.product_id`"|fn_url}">{$product.product|default:fn_get_product_name($product.product_id) nofilter}</a>
                                                            <p>
                                                                <span>{$product.amount}</span><span
                                                                        dir="{$language_direction}">&nbsp;x&nbsp;</span>{include file="common/price.tpl" value=$product.display_price span_id="price_`$key`_`$dropdown_id`" class="none"}
                                                            </p>
                                                        </div>
{*                                                    {if $block.properties.display_delete_icons == "Y"}*}
                                                        <div class="ty-cart-items__list-item-tools cm-cart-item-delete">
                                                            {if (!$runtime.checkout || $force_items_deletion) && !$product.extra.exclude_from_calculate}
                                                                {include file="buttons/button.tpl" but_href="checkout.delete.from_status?cart_id=`$key`&redirect_url=`$r_url`" but_meta="cm-ajax cm-ajax-full-render" but_target_id="cart_status*" but_role="delete" but_name="delete_cart_item"}
                                                            {/if}
                                                        </div>
{*                                                    {/if}*}
                                                    {/hook}
                                                </li>
                                            {/if}
                                            {/hook}
                                        {/foreach}
                                        {/hook}
                                    </ul>
                                {else}
                                    <div class="ty-cart-items__empty ty-center">{__("cart_is_empty")}</div>
                                {/if}
                            </div>

{*                            {if $block.properties.display_bottom_buttons == "Y"}*}
                                <div class="cm-cart-buttons ty-cart-content__buttons buttons-container{if $smarty.session.cart.amount} full-cart{else} hidden{/if}">
                                    <div class="ty-float-left">
                                        <a href="{"checkout.cart"|fn_url}" rel="nofollow"
                                           class="ty-btn ty-btn__secondary">{__("view_cart")}</a>
                                    </div>
                                    {if $settings.Checkout.checkout_redirect != "Y"}
                                        <div class="ty-float-right">
                                            {include file="buttons/proceed_to_checkout.tpl" but_text=__("checkout")}
                                        </div>
                                    {/if}
                                </div>
{*                            {/if}*}

                        </div>
                    {/hook}
                </div>
                <!--cart_status_{$dropdown_id}--></div>
        </div>
    </div>
{/if}
    </div>

{/hook}
