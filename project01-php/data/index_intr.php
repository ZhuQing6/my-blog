<?php
/***************************首页intr部分的内容*******************************/
 require("init.php");
 $sql="select class,href,title,src1,itm1,src2,itm2 from index_intr";
 $result=mysqli_query($conn,$sql);
 $row=mysqli_fetch_all($result,MYSQLI_ASSOC);
 echo json_encode($row);
?>