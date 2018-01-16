/*****************************1.nav数据加载*******************************/
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
/*******************************2.人事数据加载*********************************/
$.ajax({
 type:"GET",
 url:"data/intr2_hr.php",
 success:function(data){
  var html="";
  for(var p of data){  
   html+=`
	<ul><h4 id="${p.id}">${p.title}</h4>
	${p.content}</ul>
   `;  
  }
  $("div.content_hr").html(html);
 },
 error:function(){alert("您的网络连接有问题，请您检查网络！");}
})

/**********************************3.制造数据加载*******************************/
$.ajax({
 type:"GET",
 url:"data/intr2.php",
 success:function(data){
  var html="";
  for(var p of data){  
   html+=`
	<h3 id="zhizao-1">${p.title}</h3>
	<div>${p.content}</div>
    <img src="${p.url}" class="${p.class}">
   `;  
  }
  $("div.text").html(html);
 },
 error:function(){alert("您的网络连接有问题，请您检查网络！");}
})
/**********************************联系我们上下移动动画*******************************/
var top1=parseFloat($("#float").css("top"));
var direction=1;
var timer2=setInterval(function(){
 top1+=100*direction;$("#float").css("top",top1+"px");
 if(top1>1200){direction=-1;}
 else if(top1<10){direction=1;}
},1500);
/**************************************楼层随鼠标滚动***************************************/
(()=>{
$(window).scroll(()=>{
 if($("div.main").scrollTop()>=0)
  $("#list").addClass("fixed_intr");
 else
  $("#list").removeClass("fixed_intr");
 console.log($("body").scrollTop());
});
})()