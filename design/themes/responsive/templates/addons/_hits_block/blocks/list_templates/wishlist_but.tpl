{if $product}
    {assign var="obj_id" value=$obj_id|default:$product.product_id}
    {assign var="obj_id_prefix" value="`$obj_prefix``$product.product_id`"}
    {include file="common/product_data.tpl" obj_id=$obj_id product=$product}
    <div class="ty-simple-list clearfix">
        {assign var="form_open" value="form_open_`$obj_id`"}
        {$smarty.capture.$form_open nofilter}
        {if $item_number == "Y"}<strong>{$smarty.foreach.products.iteration}.&nbsp;</strong>{/if}

        {assign var="product_labels" value="product_labels_`$obj_prefix``$obj_id`"}
        {$smarty.capture.$product_labels nofilter}

        {assign var="name" value="name_$obj_id"}<bdi>{$smarty.capture.$name nofilter}</bdi>
        {assign var="sku" value="sku_$obj_id"}{$smarty.capture.$sku nofilter}
        {assign var="rating" value="rating_`$obj_id`"}{$smarty.capture.$rating nofilter}

        {if $capture_buttons}{capture name="buttons"}{/if}
        {if $show_add_to_cart}
            <div class="wishlist__buttons">
                {include file="buttons/button.tpl"
                but_id="button_wishlist_`$obj_prefix``$product.product_id`"
                but_meta="ty-add-to-wish" but_name="dispatch[wishlist.add..`$product.product_id`]"
                but_role="text"
                but_icon="ty-icon-doka-love"
                but_onclick=$but_onclick but_href=$but_href}
            </div>
        {/if}
        {if $capture_buttons}{/capture}{/if}
        {hook name="products:product_list_form_close_tag"}
        {$form_close="form_close_`$obj_id`"}
        {$smarty.capture.$form_close nofilter}
        {/hook}
    </div>
{/if}