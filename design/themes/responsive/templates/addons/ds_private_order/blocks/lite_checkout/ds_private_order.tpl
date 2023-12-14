{** block-description:block_lite_checkout_ds_order **}
{*<div id="ds_id_order">*}
{*    {include file="addons/ds_private_order/views/checkout/components/customer/ds_private_order_billing.tpl" profile_fields=$items}*}
{*    <!--ds_id_order--></div>*}

{script src="js/tygh/checkout.js"} {* legacy checkout functionality *}
{script src="js/tygh/checkout/lite_checkout.js"} {* lite checkout functionality *}
{script src="js/tygh/checkout/pickup_selector.js"}
{script src="js/tygh/checkout/pickup_search.js"}
{script src="js/tygh/search_pickup_points.js"}

{$contact_info_section_position = $profile_field_sections["ProfileFieldSections::CONTACT_INFORMATION"|enum]["position"]}
{$shipping_section_position = $profile_field_sections["ProfileFieldSections::SHIPPING_ADDRESS"|enum]["position"]}
{$show_customer_fields_first = $contact_info_section_position < $shipping_section_position}
{* login popup *}
{if !$auth.user_id}
    <h1 class="litecheckout__page-title">{__('checkout')}</h1>

    <div class="ds_confirm_items" id="ds_confirm_id">
        {include file="addons/ds_private_order/views/checkout/components/ds_cart_content.tpl"}

        <button type="button" class="ds_confirm-step" id="ds_confirm-step_id">Подтверждаю</button>
    </div>

    <div id="litecheckout_login_block" class="hidden" title="{__("sign_in")}">
        <div class="ty-login-popup">
            {include file="views/auth/login_form.tpl"
            style="popup"
            id="litecheckout_login_block_inner"
            }
        </div>
    </div>
{/if}


<div class="litecheckout litecheckout__form" id="litecheckout_form">

    <div data-ca-lite-checkout-element="form">
        <form name="litecheckout_payments_form"
              id="litecheckout_payments_form"
              action="{"checkout.place_order"|fn_url}"
              method="post"
              data-ca-lite-checkout-element="checkout-form"
              data-ca-lite-checkout-ready-for-checkout="false"
              class="litecheckout__group litecheckout__payment-methods"
        >



            {include file="views/checkout/components/steps/customer.tpl"
            show_title=!$show_customer_fields_first
            show_information=!$show_customer_fields_first
            show_address=true
            show_notes=true
            }


            {include file="views/checkout/components/steps/payment.tpl"}
            {*Блоки с доставкой*}

            {include file="views/checkout/components/steps/shipping.tpl"}

            {include file="views/checkout/components/steps/customer.tpl"
            show_title=$show_customer_fields_first
            show_information=$show_customer_fields_first
            show_address=false
            show_notes=false
            }

            <div class="litecheckout__container">
                {if !$suffix}
                    {$suffix = ""|uniqid}
                {/if}

                <div class="litecheckout__item">
                    <div class="litecheckout__terms" id="litecheckout_terms">
                        {include file="views/checkout/components/terms_and_conditions.tpl" suffix=$suffix}
                        <!--litecheckout_terms--></div>
                </div>
            </div>

            <button type="button" class="ds_prev-step" id="ds_prev-step_id">Назад</button>
            <button type="button" class="ds_next-step" id="ds_next-step_id">Далее</button>
            {*            <input type="button" id="ds_prev-step" value="Далее" class="ds_prev-step">*}
            {*            <input type="button" id="ds_prev-step" value="Далее" class="ds_prev-step">*}

            <div class="litecheckout__group litecheckout__submit-order" id="litecheckout_final_section">
                {include file="views/checkout/components/final_section.tpl"
                is_payment_step=true
                suffix=$payment.payment_id
                }
            </div>
            <!--litecheckout_payments_form--></form>
    </div>
    <!--litecheckout_form--></div>
