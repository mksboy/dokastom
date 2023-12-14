(function (_, $) {
    $(document).ready(function () {
        let ds_page = 1;
        var ds_title = $('#ds_litecheckout__page-title_id');

        fn_ds_page_one(ds_page);

        if ($("#litecheckout_private_2").prop("checked")) {
            $("#payments_20").parent().hide();
        }

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
            if (ds_page > 6) {
                ds_page = 6;
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

    function updateStepIndicator(currentStep) {
        currentStep = Math.max(1, Math.min(7, currentStep));

        // Удаление класса active с предыдущего активного шага
        $("#ds_stepIndicator .step.active").removeClass("active");

        // Обновление визуального состояния текущего шага
        $("#ds_stepIndicator .step[data-step='" + currentStep + "']").addClass("active");
    }

    function fn_ds_page_one(ds_page) {
        updateStepIndicator(ds_page);
        if (ds_page === 1) {


            $('#ds_confirm_id').show(300);

            $('.litecheckout__step').hide();


            $('#litecheckout_step_shipping').hide();
            $('#litecheckout_step_payment').hide();
            $('#litecheckout_step_location').hide();
            $('#litecheckout_terms').hide();
            $('#litecheckout_final_section').hide();
            $('#ds_prev-step_id').hide();
            $('#ds_next-step_id').hide();

        }

        if (ds_page === 2) {
            let ds_customer_info = $("#litecheckout_step_customer_info")
            ds_customer_info.children().first().show(300);
            ds_customer_info.children().not(":first-child").hide();
            ds_customer_info.children(":first-child").attr("id", "ds_checkout_id");

                $("#ds_checkout_id label").each(function(index) {
                    var labelId = "ds_label_id_" + (index + 1);
                    $(this).attr("id", labelId);
                });

            ds_customer_info.next().hide();
            $('#ds_prev-step_id').show();
            $('#ds_next-step_id').show();
            $('.litecheckout__step').show(300);

            $('#ds_confirm_id').hide();

                $('#litecheckout_step_shipping').hide();
                $('#litecheckout_step_payment').hide();
                $('#litecheckout_step_location').hide();
                $('#litecheckout_terms').hide();
                $('#litecheckout_final_section').hide();


        }

        if (ds_page === 3) {
            let ds_customer_info = $("#litecheckout_step_customer_info")
            ds_customer_info.children().not(":first-child").show();
            ds_customer_info.children().first().hide();


            ds_customer_info.next().hide();
            $('#ds_prev-step_id').show();
            $('#ds_next-step_id').show();
            $('.litecheckout__step').show(300);

            $('#ds_confirm_id').hide();

            $('#litecheckout_step_shipping').hide();
            $('#litecheckout_step_payment').hide();
            $('#litecheckout_step_location').hide();
            $('#litecheckout_terms').hide();
            $('#litecheckout_final_section').hide();


        }

        if (ds_page === 4) {

            $('#litecheckout_step_shipping').hide();
            $('#litecheckout_step_location').hide();
            $('.litecheckout__step').hide();
            $('#ds_prev-step_id').show(300);
            $('#litecheckout_step_payment').show(300);

        }

        if (ds_page === 5) {

            $('#litecheckout_terms').hide();
            $('#litecheckout_final_section').hide();
            $('#litecheckout_step_payment').hide();
            $('#litecheckout_step_location').show(300);
            $('#litecheckout_step_shipping').show(300);
        }

        if (ds_page === 6) {
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