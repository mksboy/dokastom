{script src="js/tygh/exceptions.js"}
{script src="js/tygh/checkout.js"}
{script src="js/tygh/cart_content.js"}

{assign var="result_ids" value="cart_status*,checkout*,account_info*"}

<div id="checkout_form_wrapper">

    <form name="checkout_form" class="cm-check-changes cm-ajax cm-ajax-full-render" action="{""|fn_url}" method="post" enctype="multipart/form-data" id="checkout_form">
        <input type="hidden" name="redirect_mode" value="checkout" />
        <input type="hidden" name="result_ids" value="{$result_ids}" />


                {hook name="checkout:cart_content_top_right_buttons"}
                    {include file="buttons/update_cart.tpl"
                    but_id="button_cart"
                    but_meta="ty-btn--recalculate-cart hidden hidden-phone hidden-tablet"
                    but_name="dispatch[checkout.update]"
                    }

                {/hook}

        {include file="views/checkout/components/cart_items.tpl"
        show_images="true"
        disable_ids="button_cart"}

    </form>
    <!--checkout_form_wrapper--></div>

<div class="ds-cart-total">
    <div class="ty-cart-total__wrapper clearfix" id="checkout_totals">

        <ul class="ds-cart-statistic__total-list">
            <li class="ty-cart-statistic__item ty-cart-statistic__total">
                <span class="ty-cart-statistic__total-title">{__("total_cost")}</span>
                <span class="ty-cart-statistic__total-value">
                    {include file="common/price.tpl" value=$_total|default:$smarty.capture._total|default:$cart.total span_id="cart_total" class="ty-price"}
                </span>
            </li>
        </ul>
        <!--checkout_totals--></div>
</div>

{*<ul class="ty-cart-statistic ty-statistic-list">*}
{*    <li class="ty-cart-statistic__item ty-statistic-list-subtotal">*}
{*        <span class="ty-cart-statistic__title">{__("subtotal")}</span>*}
{*        <span class="ty-cart-statistic__value">{include file="common/price.tpl" value=$cart.display_subtotal}</span>*}
{*    </li>*}
{*</ul>*}
