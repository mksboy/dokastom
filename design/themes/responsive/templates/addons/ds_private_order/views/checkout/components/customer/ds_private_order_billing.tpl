
<div class="ds_litecheckout__group">
    {include
    file="addons/ds_private_order/views/checkout/components/ds_profile_fields.tpl"
    profile_fields=$profile_fields
    section="ProfileFieldSections::CONTACT_INFORMATION"|enum
    }
    <input type="button" name="Next" value="Далее" id="ds_order_next">
</div>

{*{include file="views/profiles/components/profiles_scripts.tpl"}*}

{*<div class="ds_block_order" id="ds_block_order_id">*}
{*    <h4>Получатель</h4>*}
{*    <div class="ds_order_select-person">*}
{*        <div class="ds_order_item ds_order_private-person">*}
{*            <label>*}
{*                <input type="checkbox"*}
{*                       name="private"*}
{*                       id="ds_select_private"*}
{*                       checked="checked"*}
{*                >*}
{*                <span>Юридическое лицо </span>*}
{*            </label>*}
{*        </div>*}
{*        <div class="ds_order_item ds_order_inn">*}
{*            <label>*}
{*                <input type="checkbox" name="inn" id="ds_select_inn">*}
{*                <span>Физическое лицо </span>*}
{*            </label>*}
{*        </div>*}
{*    </div>*}
{*</div>*}



{*    <section class="container">*}
{*        <h1>Заполнить реквизиты компании по ИНН</h1>*}
{*        Введите ИНН и нажмите Enter:<br>*}
{*        <input id="party" name="party" type="text" autocomplete="off" />*}
{*    </section>*}

{*    <section class="result">*}
{*        <p id="type"></p>*}
{*        <div class="row">*}
{*            <label>Краткое наименование</label>*}
{*            <input id="name_short" readonly>*}
{*        </div>*}
{*        <div class="row">*}
{*            <label>Полное наименование</label>*}
{*            <input id="name_full" readonly>*}
{*        </div>*}
{*        <div class="row">*}
{*            <label>ИНН</label>*}
{*            <input id="inn" readonly>*}
{*        </div>*}
{*        <div class="row">*}
{*            <label>КПП</label>*}
{*            <input id="kpp" readonly>*}
{*        </div>*}
{*        <div class="row">*}
{*            <label>Адрес</label>*}
{*            <input id="address" readonly>*}
{*        </div>*}
{*        <div class="row">*}
{*            <label id="management_post"></label>*}
{*            <input id="management_name" readonly>*}
{*        </div>*}
{*    </section>*}

