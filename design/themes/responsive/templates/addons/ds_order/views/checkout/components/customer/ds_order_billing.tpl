<div class="ds_block_order">
    <section class="container">
        <h1>Заполнить реквизиты компании по ИНН</h1>
        Введите ИНН и нажмите Enter:<br>
        <input id="party" name="party" type="text" autocomplete="off" />
    </section>

    <section class="result">
        <p id="type"></p>
        <div class="row">
            <label>Краткое наименование</label>
            <input id="name_short" readonly>
        </div>
        <div class="row">
            <label>Полное наименование</label>
            <input id="name_full" readonly>
        </div>
        <div class="row">
            <label>ИНН</label>
            <input id="inn" readonly>
        </div>
        <div class="row">
            <label>КПП</label>
            <input id="kpp" readonly>
        </div>
        <div class="row">
            <label>Адрес</label>
            <input id="address" readonly>
        </div>
        <div class="row">
            <label id="management_post"></label>
            <input id="management_name" readonly>
        </div>
    </section>

</div>