<?php
/*
 * Template Name: MySQL
 * Description: A Page Template to get My SQL data using MySQLi libruary.
 * 
 */
echo '<!DOCTYPE html><html><head><meta charset="UTF-8">
<style>
table,th,td {
border:1px solid 
}
table,th,td {
border-collapse:collapse
}
</style>
</head>';
echo"<body>";

$page_id=19;	//4
$page_url='http://cl1'; //'http://localhost/codelobster';
//-------------Установим соединение с сервером  MySQL----------
$user_mysql="root";
$server="localhost";
$objMysqli= new mysqli($server,$user_mysql,"");
if($objMysqli->connect_errno)	{
	die("Невозможно установить соединение:" . "(".$objMysqli->connect_errno .") ". $objMysqli->connect_error);	
}
//echo "<pre>". "connection established". "</pre>";
//------Получим список баз данных и выведем их в табличке----------
$strQuery = "SHOW DATABASES"; //запрос к MySQL на получение списка баз данных
$objdb_list=$objMysqli->query($strQuery);
//echo "column count: " . $objdb_list->field_count . "row count: " . $objdb_list->num_rows . "<br>";
echo("<div name='wrapper_left' style='float:left'><form id='db' action='' method='GET'><table><tr>");
while($col_info=$objdb_list->fetch_field()) { //формируем заголовок таблицы с названиями полей
	echo "<th>".$col_info->name . "</th>";
}
echo("</tr>");
while($row=$objdb_list->fetch_row()) {//получим данные очередной строки результата запроса
	echo("<tr>");
	foreach($row as $cell)	//формируем ряд таблицы с данными
		if($_REQUEST['database'] == $cell ) 	$checked="checked='checked'";
		else $checked="";
		echo "<td>".$cell .  "<input type='radio' value = $cell name ='database' ". $checked."></td>";
	echo("</tr>");
}
$objdb_list->free();	//освободим объект с результатами запроса
echo("</table><input type='submit' value='click'><input type='text' name='page_id' value=$page_id hidden><br><a href=$page_url>HOME</a></div>");
//-------------Выведем список таблиц из выбранной базы данных------
if($_REQUEST['database']) {
	$strQuery = "SHOW TABLES FROM " . $_REQUEST['database']; //запрос к MySQL на получение списка баз данных
	$objTbl_list=$objMysqli->query($strQuery);
	//echo "column count: " . $objdb_list->field_count . "row count: " . $objdb_list->num_rows . "<br>";
	echo("<div name='wrapper_right' style='float:right'><table><tr>");
	while($col_info=$objTbl_list->fetch_field()) { //формируем заголовок таблицы с названиями полей
		echo "<th>".$col_info->name . "</th>";
	}
	echo("</tr>");
	while($row=$objTbl_list->fetch_row()) {//получим данные очередной строки результата запроса
		echo("<tr>");
		foreach($row as $cell)	//формируем ряд таблицы с данными
			if($_REQUEST['tbl_name'] == $cell ) 	$checked="checked='checked'";
			else $checked="";
			echo "<td>".$cell .  "<input type='radio' value = $cell name ='tbl_name' ". $checked."></td>";
		echo("</tr>");
	}
	echo("</table></div>");
	$objTbl_list->free();
}//if($_REQUEST['database']) {
	
//-------------Выведем  строку выбранной таблицы ------
echo("<div name='wrapper_centre' style='clear: both'>");	//секция во всю ширину страницы
if($_REQUEST['nav_value'])$nav = $_REQUEST['nav_value'];
else $nav = 0;	//начальное значение смещения
if($_REQUEST['nav'])	{
	if($_REQUEST['nav'] == 'decrease') $nav=--$nav;
	else $nav=++$nav;
	if($nav <0 ) $nav=0;	//смещение не может быть меньше 0
}
echo("<input type='submit' name = 'nav' value='decrease'><input type='submit' name = 'nav' value='increase'><br><label>ROW:<input type='text' name = 'nav_value' value=$nav ></label>");	//кнопки навигации по записям таблицы и смещение для запроса нужной строки

if(($_REQUEST['database'])and($_REQUEST['tbl_name'])) {
	$strQuery = "SELECT * FROM " . $_REQUEST['tbl_name']." LIMIT $nav,1;"; //запрос к MySQL на получение списка баз данных
	$objMysqli->select_db($_REQUEST['database']);	//Укажем базу данных к которой будет обращён запрос
	$objTbl_data=$objMysqli->query($strQuery);
	//echo "column count: " . $objdb_list->field_count . "row count: " . $objdb_list->num_rows . "<br>";
	echo("<table><tr>");
	while($col_info=$objTbl_data->fetch_field()) { //формируем заголовок таблицы 
		echo "<th>".$col_info->name . "</th>";		//с названиями полей
	}
	$objTbl_data->field_seek(0);	//перейдём на начало списка данных столбцов
	echo("</tr>");
	echo("<tr>");
	while($col_info=$objTbl_data->fetch_field()) { //формируем заголовок таблицы 
		echo "<th>".$col_info->type . "</th>";		//с типом данных в колонке
	}
	echo("</tr>");
	while($row=$objTbl_data->fetch_row()) {//получим данные очередной строки результата запроса
		echo("<tr>");
		foreach($row as $cell)	//формируем ряд таблицы с данными
			echo "<td>".$cell .  "</td>";
		echo("</tr>");
	}
	echo("</table></div></form>");
	$objTbl_data->free();
}//if($_REQUEST['database'])	
	
//-------------Разорвём соединение с сервером  MySQL----------
$objMysqli->close();
echo "</body></html>";
?>