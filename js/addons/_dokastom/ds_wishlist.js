(function (_, $) {
    $(document).ready(function () {
        $('.ty-add-to-wish').on('click', fn_ds_wishlist_add);
    });

    function fn_ds_wishlist_add() {
        let ds_span = $('#ds_wishlist_span');
        // let ds_wishlist_var = (isNaN(ds_span.html()) ? Number(0) : Number(ds_span.html()) )
        // let ds_wishlist_var =  Number(ds_span.html());
        // if (!ds_wishlist_var) {
        //     $('#ds_wishlist_span').html('1')
        // } else {
        //     ds_wishlist_let = ds_wishlist_var;
        // }
        let ds_wishlist_var = Number(ds_span.html());

        let ds_wishlist_data = $(this).data('ds-dispatch');
        if (!$(this).hasClass('ds_wishlist_in')) {
            $(this).addClass('ds_wishlist_in');
            ds_wishlist_var += 1;
        } else {
            $(this).removeClass('ds_wishlist_in');
            ds_wishlist_var -= 1;
        }
        ds_span.html(ds_wishlist_var);

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