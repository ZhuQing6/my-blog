<?php
/***************************将用户咨询信息添加到数据库中*********************/
@$text=$_REQUEST["text"];
@$uname=$_REQUEST["uname"];
@$tel=$_REQUEST["tel"];
require("init.php");
$sql="INSERT INTO user_connect VALUES(null,'$uname','$tel','$text',0)";
$result=mysqli_query($conn,$sql);
if($result){echo '{"msg":"发送成功，部门人员会尽快与您联系，谢谢！"}';}
else{echo '{"msg":"发送失败，请检查您的网络或直接拨打专号咨询，谢谢！"}';}
?>