<?php
/*********************连接数据库********************/
header("Content-Type:application/json;charset=utf-8");
$conn = mysqli_connect("127.0.0.1","root","","yiyouze",3306);
mysqli_query($conn,"SET NAMES UTF8");
?>