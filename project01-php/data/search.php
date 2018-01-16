<?php
/**********************header中搜索关键字*************************/
require("init.php");
@$kw=$_REQUEST["kw"];
$sql="SELECT title,url FROM user_search WHERE connect LIKE '%$kw%'";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);
?>