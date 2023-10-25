<div class="menu__catalog-items">
    <ul class="menu__catalog">
       {foreach from=$categories item="items"}
       {if $items.category}
           <li class="menu__catalog-item">
                <div class="menu__catalog-img_title">
                {if $items.main_pair}
                    {include file="common/image.tpl"
                    show_detailed_link=false
                    images=$items.main_pair
                    no_ids=true
                    image_id="category_image"

                    image_height=$settings.Thumbnails.category_lists_thumbnail_height
                    class="menu__catalog-subcategories-img"
                                }
                    {/if}
{*                    image_width="30px"*}

               {assign var="menu__catalog_url" value=$items|fn_form_dropdown_object_link:$block.type}
               <a href="{$menu__catalog_url}" class="menu__catalog_title">{$items.category}</a>
           </div>
           <hr>
               <ul class="menu__catalog_subcategories">
                
                 {foreach from=$items.subcategories item="item_sub"}
                    
                    {if $item_sub.category}
                        <li class="menu__catalog-item_sub">                      
                            {assign var="sub_menu__catalog_url" value=$item_sub|fn_form_dropdown_object_link:$block.type}
                            <a href="{$sub_menu__catalog_url}">{$item_sub.category}</a>
                    {/if}
                        </li>
                 {/foreach}  
               </ul>
        {/if}
           </li>
       {/foreach}
   </ul>
</div>
