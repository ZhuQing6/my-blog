<?php
/**********************用户咨询表上删除操作*************************/
require("init.php");
@$id=$_REQUEST["id"];
$sql="update user_connect set isdel=1 where id=$id";
$result=mysqli_query($conn,$sql);
if($result==true){echo '{"code":1,"msg":"删除成功"}';}
else{echo '{"code":-1,"msg":"删除失败"}';}
?>