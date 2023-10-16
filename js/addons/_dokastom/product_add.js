(function (_, $) {
    $(document).ready(function () {
        $('.gul-load-more').on('click', fn_ds_pagination);
    });

    function fn_ds_pagination() {
        var but=$(this);
        // console.log($(this).data('curcateg')+ 'page-' + ($(this).data('curpagunpage') + 1) + '/')


        // if (but.hasClass('catpagin')) {
        //     $.ceAjax('request')
        // }


        // $.ceAjax('request', fn_url("wishlist.add"), {
        //     method : 'post',
        //     result_ids: 'abt__ut2_wishlist_count',
        //     full_render: 'Y',
        //     data: {
        //         product_data: {
        //             [ds_wishlist_data]: {
        //                 product_id: ds_wishlist_data
        //             }
        //         },
        //     },
        //     // callback: function () {
        //     //
        //     // }
        // })
    }
}(Tygh, Tygh.$));