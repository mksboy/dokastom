{if $content|trim}
    {capture name="discount_hits"}
        <div class="discount_hits-full-width">
            <div class="container-fluid">
                {$content nofilter}
            </div>
        </div>
    {/capture}
{/if}

{* <div class="discount_hits-full-width" 
    {if $runtime.customization_mode.block_manager && $location_data.is_frontend_editing_allowed}data-ca-block-manager-grid id="{$grid.grid_id}"
    {/if}>{$content nofilter}
</div> *}