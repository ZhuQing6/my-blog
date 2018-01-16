/*获取数据*/
/*****************************************1.nav**********************************/
$.ajax({
 type:"GET",
 url:"data/nav.php",
 success:function(data){
  var html="";
  for(var p of data){
   html+=`
	<li><a href="${p.url}">${p.title}</a></li>
   `;  
  }
  $("#nav_ul").html(html);
 },
 error:function(){alert("您的网络连接有问题，请您检查网络！");}
})
/*************************2.内容数据加载*************************************/
$.ajax({
 type:"GET",
 url:"data/intr1.php",
 success:function(data){
  var html="";
  for(var p of data){
   html+=`
	<div class="title"><h1>${p.title}</h1></div>
    <div class="content">${p.content}</div>
   `;  
  }
  $("div.accordion").html(html);
 },
 error:function(){alert("您的网络连接有问题，请您检查网络！");}
})
/********************************联系我们上下移动动画************************************/
var top1=parseFloat($("#float").css("top"));
var direction=1;
var timer2=setInterval(function(){
 top1+=100*direction;$("#float").css("top",top1+"px");
 if(top1>1200){direction=-1;}
 else if(top1<10){direction=1;}
},1500);

