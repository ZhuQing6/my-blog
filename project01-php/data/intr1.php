<?php
 require("init.php");
 $sql="select title,content from intr1";
 $result=mysqli_query($conn,$sql);
 $row=mysqli_fetch_all($result,MYSQLI_ASSOC);
 echo json_encode($row);
?>