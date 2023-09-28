{if $content|trim}
    {capture name="text_banner_move"}
        <div class="text-banner-full-width">
            <div class="container-fluid">
                {$content nofilter}
            </div>
        </div>
    {/capture}
{/if}