<?php
/**********************用户咨询表的加载*************************/
require("init.php");
@$page=$_REQUEST["page"];
if(!$page){$page=1;}else{$page=intval($page);}
$pageList=8;
$sql="select count(*) from user_connect";
$count=mysqli_fetch_row(mysqli_query($conn,$sql))[0];
//echo $count;
$output=[];
$output["page"]=$page;
$output["count"]=$count;
$output["pageList"]=8;
$output["pageCount"]=ceil($count/$pageList);
$pageStart=$pageList*($page-1);
$output["pageStart"]=$pageStart;
$sql="select id,uname,tel,connect from user_connect limit $pageStart,$pageList";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
$output["data"]=$rows;
echo json_encode($output);
?>