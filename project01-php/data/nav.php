<?php
/**********************导航条的数据*************************/
 require("init.php");
 $sql="select title,url from nav_list";
 $result=mysqli_query($conn,$sql);
 $row=mysqli_fetch_all($result,MYSQLI_ASSOC);
 echo json_encode($row);
?>