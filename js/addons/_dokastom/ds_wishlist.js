(function (_, $) {
    $(document).ready(function () {
        $('.ty-add-to-wish').on('click', fn_ds_wishlist_add);
    });

    function fn_ds_wishlist_add() {

        let ds_wishlist_data = $(this).data('ds-dispatch');

        if (!$(this).hasClass('ds_wishlist_in')) {
            $(this).addClass('ds_wishlist_in');

        }


        $.ceAjax('request', fn_url("wishlist.add"), {
            method : 'post',
            result_ids: 'abt__ut2_wishlist_count',
            full_render: 'Y',
            data: {
                product_data: {
                    [ds_wishlist_data]: {
                        product_id: ds_wishlist_data
                    }
                },
            },
            // callback: function () {
            //
            // }
        })
    }
}(Tygh, Tygh.$));