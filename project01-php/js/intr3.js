/************************************1.nav数据加载**********************************/
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
/**************************2.易优伙伴之合作案例数据加载：内容1与内容2***************************/
$.ajax({
 type:"GET",
 url:"data/intr3.php",
 success:function(data){
  var html="";
  for(var i=0;i<data.length;i++){
   html+=`<h2>合作案例${i+1}</h2>`;
   for(var j=0;j<data[i].length;j++){
    if(j%2==0){html+=`<h3>${data[i][j]}</h3>`;}
    if(j%2==1){html+=`<div>${data[i][j]}</div>`;}
   }
  }
  $("#content1").html(html);
 },
 error:function(){alert("您的网络连接有问题，请您检查网络！");}
})

$.ajax({
 type:"GET",
 url:"data/intr3.php",
 success:function(data){
  var html="";
  for(var p of data){
  html+=`<h2>合作案例${p.nid}</h2>
   <h3>${p.title1}</h3>
   <div>${p.content1}</div>
   <h3>${p.title2}</h3>
   <div>${p.content2}</div>
   <h3>${p.title3}</h3>
   <div>${p.content3}</div>
   <h3>${p.title4}</h3>
   <div>${p.content4}</div>
   <h3>${p.title5}</h3>
   <div>${p.content5}</div>
   <h3>${p.title6}</h3>
   <div>${p.content6}</div>
  `;
  }
  $("#content1").html(html);
 },
 error:function(){alert("您的网络连接有问题，请您检查网络！");}
})
/***************************联系我们上下移动动画*****************************/
var top1=parseFloat($("#float").css("top"));
var direction=1;
var timer2=setInterval(function(){
 top1+=100*direction;$("#float").css("top",top1+"px");
 if(top1>1200){direction=-1;}
 else if(top1<10){direction=1;}
},1500);