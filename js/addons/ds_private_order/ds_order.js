(function (_, $) {
    $(document).ready(function () {
        let ds_page = 1;

        fn_ds_page_one(ds_page);

        if ($("#litecheckout_private_2").prop("checked")) {
            $("#payments_20").parent().hide();
        }


        // $('#litecheckout_step_shipping').hide();
        // $('#litecheckout_step_location').hide();
        // $('#litecheckout_terms').hide();
        // $('#litecheckout_final_section').hide();
        // $('#ds_prev-step_id').hide();



        // result_ids = 'shipping_rates_list,checkout_info_summary_*,checkout_info_order_info_*',

        $(_.doc).on('click', '#ds_confirm-step_id', function () {
            ds_page = ds_page + 1;
            if (ds_page > 5) {
                ds_page = 5;
            }
            fn_ds_page_one(ds_page);
            return ds_page;
        });

        $(_.doc).on('click', '#ds_next-step_id', function () {
            ds_page = ds_page + 1;
            if (ds_page > 5) {
                ds_page = 5;
            }
            fn_ds_page_one(ds_page);
            return ds_page;
        });

        $(_.doc).on('click', '#ds_prev-step_id', function () {
            ds_page = ds_page - 1;
            if (ds_page < 1) {
                ds_page = 1;
            }
            fn_ds_page_one(ds_page);
            return ds_page;
        });

        $(_.doc).on('click', '#litecheckout_private_1', function () {
            var inn_isChecked = $('#litecheckout_private_1').prop('checked');
            $("#radio_20").removeAttr("checked");
            $("#payments_20").parent().show();
            // fn_ds_is_order_inn(inn_isChecked);
        });

        $(_.doc).on('click', '#litecheckout_private_2', function () {
            var private_isChecked = $('#litecheckout_private_2').prop('checked');
            // fn_ds_is_order_private(private_isChecked);
            $("#payments_20").parent().hide();

        });


    });

    function fn_ds_page_one(ds_page) {

        if (ds_page === 1) {
            $('#ds_confirm_id').show(300);

            $('.litecheckout__step').hide();
            $('#ds_next-step_id').hide();

            $('#litecheckout_step_shipping').hide();
            $('#litecheckout_step_payment').hide();
            $('#litecheckout_step_location').hide();
            $('#litecheckout_terms').hide();
            $('#litecheckout_final_section').hide();
            $('#ds_prev-step_id').hide();

        }

        if (ds_page === 2) {
            $('.litecheckout__step').show(300);
            $('#ds_next-step_id').show(300);
            $('#ds_confirm_id').hide();

                $('#litecheckout_step_shipping').hide();
                $('#litecheckout_step_payment').hide();
                $('#litecheckout_step_location').hide();
                $('#litecheckout_terms').hide();
                $('#litecheckout_final_section').hide();
                $('#ds_prev-step_id').hide();

        }

        if (ds_page === 3) {
            $('#ds_next-step_id').show(300);
            $('#litecheckout_step_shipping').hide();
            $('#litecheckout_step_location').hide();
            $('.litecheckout__step').hide();
            $('#ds_prev-step_id').show(300);
            $('#litecheckout_step_payment').show(300);

        }

        if (ds_page === 4) {
            $('#ds_next-step_id').show(300);
            $('#litecheckout_terms').hide();
            $('#litecheckout_final_section').hide();
            $('#litecheckout_step_payment').hide();
            $('#litecheckout_step_location').show(300);
            $('#litecheckout_step_shipping').show(300);
        }

        if (ds_page === 5) {
            $('#litecheckout_step_payment').hide();
            $('#litecheckout_step_location').hide();
            $('#litecheckout_step_shipping').hide();
            $('#litecheckout_terms').show(300);
            $('#litecheckout_final_section').show(300);
            $('#ds_next-step_id').hide();

        }
    }

    // function fn_ds_is_order_inn(inn_isChecked) {
    //     $.ceAjax('request', fn_url("checkout.checkout"), {
    //         method: 'POST',
    //         full_render: 'Y',
    //         result_ids: 'litecheckout_final_section,litecheckout_step_payment,shipping_rates_list,litecheckout_terms,checkout*',
    //         data: {
    //             isChecked: inn_isChecked,
    //                 product_id: 'ds_inn'
    //         },
    //     });
    // }
    //
    // function fn_ds_is_order_private(private_isChecked) {
    //     $.ceAjax('request', fn_url("checkout.checkout"), {
    //         method: 'POST',
    //         full_render: 'Y',
    //         result_ids: 'litecheckout_final_section,litecheckout_step_payment,shipping_rates_list,litecheckout_terms,checkout*',
    //         data: {
    //             isChecked: private_isChecked,
    //             product_id: 'ds_private',
    //         },
    //     });
    // }


}(Tygh, Tygh.$));

// <input type="radio" name="selected_payment_method" id="radio_19" data-ca-target-form="litecheckout_payments_form" data-ca-url="checkout.checkout" data-ca-result-ids="litecheckout_final_section,litecheckout_step_payment,shipping_rates_list,litecheckout_terms,checkout*" className="litecheckout__shipping-method__radio cm-select-payment hidden" value="19" checked="">