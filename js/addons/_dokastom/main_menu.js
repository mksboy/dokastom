// (function (_, $) {
//     $(document).ready(function () {
//         if (document.documentElement.clientWidth > 768) {
//             var m = $('.ds-menu-items');
//             if (m.length) {
//                 var menu_height = m.outerHeight();
//                 m.addClass('open-menu').find('.ty-dropdown-box__title:first').addClass('open');
//                 var last_first_level_item = m.find('li.ty-menu__item.first-lvl.last');
//                 var m_height = parseInt(last_first_level_item.offset().top + last_first_level_item.outerHeight());
//                 var fixed_header = function () {
//                     var scroll = $(window).scrollTop();
//                     if (scroll >= m_height) {
//                         $('body').addClass('fixed-header').css('margin-top', menu_height + 'px');
//                         m.removeClass('open-menu');
//                         $('.ds-menu-items > .ty-dropdown-box__title').removeClass('open');
//                     } else {
//                         $('body').removeClass('fixed-header').css('margin-top', '');
//                         m.addClass('open-menu');
//                         $('.ds-menu-items > .ty-dropdown-box__title').addClass('open');
//                     }
//                 };
//                 fixed_header();
//                 $(window).scroll(fixed_header);
//             }
//         }
//     });
//
// }(Tygh, Tygh.$));



// let flag = false;
// $('.ty-menu__item:nth-child(2)').click(function () {
//     if(!flag) {
//         $('.ty-menu__submenu-items').slideDown();
//         $(this).addClass('open');
//     } else {
//         $('.ty-menu__submenu-items').slideUp();
//
//     }
//     flag = !flag;
// })
//
//     $('.ty-menu__submenu-item').hover(
//         function() {
//
//
//             // Удаляем класс фиксации у всех пунктов второго списка
//             $('.ty-menu__submenu-item').removeClass('fixed');
//             $('.sub-menu').css("display", "none");
//
//             // Добавляем класс для фиксации текущего пункта первого списка
//             $(this).addClass('fixed');
//             let flag_fixed = $('li').hasClass('ty-menu__submenu-item fixed');
//             if (flag_fixed) {
//                 $(this).children('.sub-menu').css("display", "block");
//             }
//     });
//
//
//
//     $('.tygh-content').click(() => {
//         let flag_open = $('li').hasClass('ty-menu__item cm-menu-item-responsive open');
//         if (flag_open) {
//         $('.ty-menu__submenu-items').slideUp();
//         flag = !flag;
//             $('.ty-menu__item').removeClass('open');
//         };
//     });

