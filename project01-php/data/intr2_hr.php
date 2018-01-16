<?php
/**********************解决方案中人事外包数据*************************/
 require("init.php");
 $sql="select id,title,content from intr2_1";
 $result=mysqli_query($conn,$sql);
 $row=mysqli_fetch_all($result,MYSQLI_ASSOC);
 echo json_encode($row);
?>