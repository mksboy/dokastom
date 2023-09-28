{$obj_prefix = "`$block.block_id`000"}
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

{* {if $block.properties.outside_navigation == "Y"}
    <div class="owl-theme ty-owl-controls">
        <div class="owl-controls clickable owl-controls-outside" id="owl_outside_nav_{$block.block_id}">
            <div class="owl-buttons">
                <div id="owl_prev_{$obj_prefix}" class="owl-prev">{include_ext file="common/icon.tpl" class="ty-icon-left-open-thin"}</div>
                <div id="owl_next_{$obj_prefix}" class="owl-next">{include_ext file="common/icon.tpl" class="ty-icon-right-open-thin"}</div>
            </div>
        </div>
    </div>
{/if} *}

<div  class="brand__block"
    
>
    {foreach from=$brands item="brand" name="for_brands"}

            

            <div class="brand__block_items">
                <div class="brand__block_img">
                    <a href="{"product_features.view?variant_id=`$brand.variant_id`"|fn_url}">{include file="common/image.tpl" images=$brand.image_pair image_width=100px}</a>
                </div>
            
            <div class="brand__block_title">
               <a href="{"product_features.view?variant_id=`$brand.variant_id`"|fn_url}">{$brand.variant}</a> 
            </div>

            </div>
           
    {/foreach}
</div>

