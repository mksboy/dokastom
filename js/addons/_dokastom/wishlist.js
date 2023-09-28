


(function (_, $) {
    $(document).ready(function () {

        $('.ty-add-to-wish').on('click', fn_get_id_wishlist);

    });


    function fn_get_id_wishlist() {
        var ds_count_wishlist = 0;
        $.ceAjax('request', fn_url("ds_wishlist.manage"), {

            data: {
                ds_count_wishlist: ds_count_wishlist,
                result_ids: 'ds_id_wishlist'
            }

        })
    }


    // function fn_get_id_wishlist() {
    //
    //     $.ceAjax('request', fn_url("wishlist.add"), {
    //         data: {
    //             result_ids: "ds_wishlist_count"
    //         }
    //     })
    // }
}(Tygh, Tygh.$))