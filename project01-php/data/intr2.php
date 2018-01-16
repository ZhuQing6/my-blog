<?php
/**********************解决方案中制造外包数据*************************/
 require("init.php");
 $sql="select title,content,url,class from intr2";
 $result=mysqli_query($conn,$sql);
 $row=mysqli_fetch_all($result,MYSQLI_ASSOC);
 echo json_encode($row);
?>