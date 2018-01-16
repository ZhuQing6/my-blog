<?php
/**********************管理员登录核对用户名与密码*************************/
require("init.php");
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
$sql="select * from employer_list where emp='$uname' and pwd='$upwd'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
if($row==null){
   echo '{"code":-1,"msg":"用户名或密码不正确"}';
 }else{
  $eid = $row["eid"];
  echo '{"code":1,"msg":"登录成功","eid":'.$eid.'}';
 }
?>