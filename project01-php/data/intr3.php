<?php
/**********************易优伙伴页面中客户案例数据*************************/
require("init.php");
$sql="select nid,title1,content1,title2,content2,title3,content3,title4,content4,title5,content5,title6,content6 from intr3";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($row);
?>