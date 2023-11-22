// Замените на свой API-ключ
var token = "7fd18aaabd7d53ffa4846e4521c1f736c13490eb";

$("#party").change(function(e) {
    var promise = suggest(e.target.value);
    promise
        .done(function(response) {
            showParty(response.suggestions)
            console.log(response);
        })
        .fail(function(jqXHR, textStatus, errorThrown) {
            console.log(textStatus);
            console.log(errorThrown);
        });
});

function suggest(query) {
    var serviceUrl = "https://suggestions.dadata.ru/suggestions/api/4_1/rs/findById/party";
    var request = {
        "query": query
    };
    var params = {
        type: "POST",
        contentType: "application/json",
        headers: {
            "Authorization": "Token " + token
        },
        data: JSON.stringify(request)
    }

    return $.ajax(serviceUrl, params);
}

function clearParty() {
    $("#name_short").val("");
    $("#name_full").val("");
    $("#inn").val("");
    $("#kpp").val("");
    $("#address").val("");
}

function showParty(suggestions) {
    clearParty();
    if (suggestions.length === 0) return;
    var party = suggestions[0].data;
    $("#name_short").val(party.name.short_with_opf);
    $("#name_full").val(party.name.full_with_opf);
    $("#inn").val(party.inn);
    $("#kpp").val(party.kpp);
    $("#address").val(party.address.value);
    showManagement(party);
}

function showManagement(party) {
    if (party.management) {
        $("#management_post").text(party.management.post);
        $("#management_name").val(party.management.name);
    } else {
        $("#management_post").text("");
        $("#management_name").val("");
    }
}