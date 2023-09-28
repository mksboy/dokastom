
let flag = false;
$('.ty-menu__item:nth-child(2)').click(function () {
    if(!flag) {
        $('.ty-menu__submenu-items').slideDown();
        $(this).addClass('open');
    } else {
        $('.ty-menu__submenu-items').slideUp();

    }
    flag = !flag;
})

    $('.ty-menu__submenu-item').hover(
        function() {


            // Удаляем класс фиксации у всех пунктов второго списка
            $('.ty-menu__submenu-item').removeClass('fixed');
            $('.sub-menu').css("display", "none");

            // Добавляем класс для фиксации текущего пункта первого списка
            $(this).addClass('fixed');
            let flag_fixed = $('li').hasClass('ty-menu__submenu-item fixed');
            if (flag_fixed) {
                $(this).children('.sub-menu').css("display", "block");
            }
    });



    $('.tygh-content').click(() => {
        let flag_open = $('li').hasClass('ty-menu__item cm-menu-item-responsive open');
        if (flag_open) {
        $('.ty-menu__submenu-items').slideUp();
        flag = !flag;
            $('.ty-menu__item').removeClass('open');
        };
    });

