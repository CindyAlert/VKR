<!doctype html>
<style>
form {
    margin: auto;
    width: 35%;

}
.result {
    margin: auto;
    width: 35%;
    border: lpx solid #ccc;

}
</style>

<head>
    <title>Прогнозирование размеров сварного шва </title>
</head>

<form action ="{{url_for('main')}}" method="POST">
    <fieldset>
        <legend>Введите значения</legend>
        IW - величина сварочного тока
        <input name ="IW" type="number"
        required>
        <br>
        <br>
        IF - ток фокусировки электронного пучка
        <input name ="IF" type="number"
        required>
        <br>
        <br>
        VW - скорость сварки
        <input name ="VW" type="number"
        required>
        <br>
        <br>
        FP - расстояние от поверхности образцов до электронно-оптической системы
        <input name ="FP" type="number"
        required>
        <br>
        <br>
        <input type = "submit">
    </fieldset>
</form>

<div class="result" align="center">
    {% if resultb %}
        <br>
        <p style = "font-size:50px">
        Прогнозные значения глубины (Depth) и ширины шва (Width)
        </p>
        <p style = "font-size:50px"> {{result}}</p>
    {% endif %}
</div>