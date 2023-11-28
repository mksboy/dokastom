// litecheckout_payments_form
(function (_, $) {
    $(document).ready(function() {
        $('#litecheckout_private_1').prop('checked', true);
        $('#litecheckout_final_section').hide();
        $(_.doc).on('click', '#litecheckout_private_2', function() {
            fn_ds_is_order_inn();
        });
        $(_.doc).on('click', '#litecheckout_private_1', function() {
            fn_ds_is_order_private();
        });
    });

    function fn_ds_is_order_inn() {
            $.ceAjax('request', fn_url("ds_private_order.ds_reg_inn"), {
                method : 'post',
                result_ids: 'ds_id_order',
                callback: function() {
                    $('#litecheckout_private_2').prop('checked', true);
                }
            });

    }

    function fn_ds_is_order_private() {
            $.ceAjax('request', fn_url("ds_private_order.ds_reg_private"), {
                method : 'post',
                result_ids: 'ds_id_order',
                callback: function() {
                    $('#litecheckout_private_1').prop('checked', true);
                }
            });
    }


}(Tygh, Tygh.$));


// // Замените на свой API-ключ
// var token = "ff1ee7dce3a09c0a91e3b08fc4f2f973685629f6";
//
// $("#party").change(function(e) {
//     var promise = suggest(e.target.value);
//     promise
//         .done(function(response) {
//             showParty(response.suggestions)
//             console.log(response);
//         })
//         .fail(function(jqXHR, textStatus, errorThrown) {
//             console.log(textStatus);
//             console.log(errorThrown);
//         });
// });
//
// function suggest(query) {
//     var serviceUrl = "https://suggestions.dadata.ru/suggestions/api/4_1/rs/findById/party";
//     var request = {
//         "query": query
//     };
//     var params = {
//         type: "POST",
//         contentType: "application/json",
//         headers: {
//             "Authorization": "Token " + token
//         },
//         data: JSON.stringify(request)
//     }
//
//     return $.ajax(serviceUrl, params);
// }
//
// function clearParty() {
//     $("#name_short").val("");
//     $("#name_full").val("");
//     $("#inn").val("");
//     $("#kpp").val("");
//     $("#address").val("");
// }
//
// function showParty(suggestions) {
//     clearParty();
//     if (suggestions.length === 0) return;
//     var party = suggestions[0].data;
//     $("#name_short").val(party.name.short_with_opf);
//     $("#name_full").val(party.name.full_with_opf);
//     $("#inn").val(party.inn);
//     $("#kpp").val(party.kpp);
//     $("#address").val(party.address.value);
//     showManagement(party);
// }
//
// function showManagement(party) {
//     if (party.management) {
//         $("#management_post").text(party.management.post);
//         $("#management_name").val(party.management.name);
//     } else {
//         $("#management_post").text("");
//         $("#management_name").val("");
//     }
// }