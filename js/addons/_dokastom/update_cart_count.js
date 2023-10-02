(function (_, $) {

    $(document).ready(function () {
        let title_rub = ' ₽'
        const ds_const_sum = (Math.trunc($("#ds_product_price").val()));
        let ds_count_input = Number($(".ty-value-changer__input").val());

        $('.ds_price_sum').html(ds_const_sum.toLocaleString() + title_rub);

        $('.ty-value-changer__increase').on('click', fn_changer__increase);
        $('.ty-value-changer__decrease').on('click', fn_changer__decrease);
        function fn_changer__increase() {
            ds_count_input += 1;
            let ds_count_sum = ds_const_sum * ds_count_input;
            $('.ds_price_sum').html((ds_count_sum.toLocaleString()) + title_rub);
        }
        function fn_changer__decrease() {
            if (ds_count_input != 1) {
                ds_count_input -= 1;
                let ds_count_sum = ds_const_sum * ds_count_input;
                $('.ds_price_sum').html((ds_count_sum.toLocaleString()) + title_rub);
            }
        }
    });
}(Tygh, Tygh.$))