<?php
/************************首页的轮播图数据***********************/
require("init.php");
$sql="select bid,url,title,href from banner";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);
?>