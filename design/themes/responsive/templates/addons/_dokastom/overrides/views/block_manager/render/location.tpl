
{if $containers.top_panel}
<div class="tygh-top-panel clearfix">
    {$containers.top_panel nofilter}
</div>
{/if}

{if $containers.header}
<div class="tygh-header clearfix">
    {$containers.header nofilter}
</div>
    {$smarty.capture.text_banner_move nofilter}
{/if}


{hook name="block_manager:frontend_location_content"}
{if $containers.content}
    <div class="tygh-content clearfix">
        {$containers.content nofilter}
        {$smarty.capture.discount_hits nofilter}
    </div>
    {* {$smarty.capture.discount_hits nofilter} *}
{/if}
{/hook}


{if $containers.footer}
<div class="tygh-footer clearfix" id="tygh_footer">
    {$containers.footer nofilter}
</div>
{/if}

{if "ULTIMATE"|fn_allowed_for}
    {* Show "Entry page" *}
    {if $show_entry_page}
        <div id="entry_page"></div>
            <script>
                $('#entry_page').ceDialog('open', {$ldelim}href: fn_url('companies.entry_page'), resizable: false, title: '{__("choose_your_country")}', width: 325, height: 420, dialogClass: 'entry-page'{$rdelim});
            </script>
    {/if}
{/if}

{if $smarty.request.meta_redirect_url|fn_check_meta_redirect}
    <meta http-equiv="refresh" content="1;url={$smarty.request.meta_redirect_url|fn_check_meta_redirect|fn_url}" />
{/if}
