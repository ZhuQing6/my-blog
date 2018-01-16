/*********************1.nav************************/
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
/*****************************2.banner***************************/
$.ajax({
 type:"GET",
 url:"data/banner.php",
 success:function(data){
  var html="";
  for(var p of data){
   html+=`
	<li id="img${p.bid}"><a href="${p.href}"><img src="${p.url}"></a>
		<h1>${p.title}</h1>
	</li>
   `;  
  }
  $("ul.bannerBox").html(html);
 },
 error:function(){alert("您的网络连接有问题，请您检查网络！");}
})
/*********************************3.首页intr内容加载*******************************/
$.ajax({
    type:"GET",
    url:"data/index_intr.php",
    success:function(data){
        var html="";
        for(var p of data){
            html+=`
	      <div class="${p.class}">
			<a href="${p.href}"><h1>${p.title}</h1></a>
			<div><a href="${p.href}"><img src="${p.src1}"><h3>${p.itm1}</h3></a></div>
			<div><a href="${p.href}"><img src="${p.src2}"><h3>${p.itm2}</h3></a></div>
		  </div>
         `;
        }
        $("#intr").html(html);
    },
    error:function(){alert("您的网络连接有问题，请您检查网络！");}
})
/************************************联系我们上下移动动画*******************************/
var top1=parseFloat($("#float").css("top"));
var direction=1;
var timer2=setInterval(function(){
 top1+=100*direction;$("#float").css("top",top1+"px");
 if(top1>1300){direction=-1;}
 else if(top1<=10){direction=1;}
},1500);
/*************************************banner轮播动画******************************/
setTimeout(function(){
function banner(duration,playTime){
    var $newli=$("#banner li").eq(0).clone();
    $(".bannerBox").append($newli);
    var $oUl=$(".bannerBox");
    var $oLi=$oUl.children();
    var $navList=$(".yuandian").children();
    var $right=$(".right");
    var $left=$(".left");
    var index=0;
    var imglength=$oLi.length-1;
    $right.on("click",function(){
        index++;
        if(index>imglength){
            index=1;
            $oUl.css({"left":0+"px"})
        }
        move(index);
    })
    $left.on("click",function(){
        index--;
        if(index<0){
            index=2;
            $oUl.css({"left":(imglength)*$oLi.eq(0).width()+"px"})
        }
        move(index);
    })
    var timer=setInterval(function(){$right.click();},duration);
    clearTimer($oUl);
	clearTimer($left);
    clearTimer($right);
    clearTimer($navList);
	function clearTimer($ele){
	 $ele.hover(function(){clearInterval(timer);}
	  ,function(){
	   timer=setInterval(function(){$right.click();},duration);
	  })
	}
  $navList.each(function(){
    var _index=$(this).index();
    $(this).on("click",function(){
       if(_index>imglength){_index=1}
       move(_index);
    })
  })
  function move(index){
	$oUl.stop().animate({"left":index*(-$oLi.eq(0).width())+"px"},playTime);
	$navList.removeClass("Li");
	$navList.eq(index>=imglength?0:index).addClass("Li");
  }    
}
$(function(){
    var duration=3000;
    var playTime=2000;
    banner(duration,playTime);
});
},1000)

