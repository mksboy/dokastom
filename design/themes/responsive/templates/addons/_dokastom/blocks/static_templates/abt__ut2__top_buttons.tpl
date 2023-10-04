{** block-description:tmpl_abt__ut2__top_buttons **}
{*{$wishlist_count|fn_print_r}*}
{$wishlist_count = "fn_wishlist_get_count"|call_user_func}
<div class="ut2-wishlist-count" id="abt__ut2_wishlist_count">
    <a class="{if !$runtime.customization_mode.live_editor}cm-tooltip{/if}
        ty-wishlist__a {if $wishlist_count > 0}active{/if}"
       href="{"wishlist.view"|fn_url}"
       rel="nofollow" title="{__("view_wishlist")}">

        {if $wishlist_count < 0}{$wishlist_count = 0}<span class="count">{$wishlist_count}</span>{/if}
        {if $wishlist_count > 0}<span class="count">{$wishlist_count}</span>{/if}</a>
    <!--abt__ut2_wishlist_count--></div>
