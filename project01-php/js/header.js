/*******引用header页头*********************/
/*
$.ajax({
 type:"GET",
 url:"header.html",
 success:function(data){
  $("#header").html(data);
  document.head.innerHTML=
      document.head.innerHTML+`<link rel="stylesheet" href="css/header.css">`;
  $("#weixin").hide();
  $("#weibo").hide();
  $("#share").hide();
  $("#a1").hover(function(){$("#weixin").show()},function(){$("#weixin").hide()});
  $("#a2").hover(function(){$("#weibo").show()},function(){$("#weibo").hide()});
  $("#a3").mouseenter(function(){$("#share").show()});
  $("#share").mouseleave(function(){$("#share").hide()});
*/
/*******引用header页头*********************/
/*******页头搜索功能*********************/
(()=>{
 ajax("get","header.html")
     .then(html=>{
      $("#header")[0].innerHTML=html;
      document.head.innerHTML=
          document.head.innerHTML+
          '<link rel="stylesheet" href="css/header.css">';
      $("#weixin").hide();
      $("#weibo").hide();
      $("#share").hide();
      $("#a1").hover(function(){$("#weixin").show()},function(){$("#weixin").hide()});
      $("#a2").hover(function(){$("#weibo").show()},function(){$("#weibo").hide()});
      $("#a3").mouseenter(function(){$("#share").show()});
      $("#share").mouseleave(function(){$("#share").hide()});
      var shelper=$("#shelper")[0];
      $("#search_input")[0].onkeyup=function(){
       var txt=this;
       ajax("get","data/search.php?kw="+txt.value)
           .then(data=>{
            if(data.length>0){
             var html="";
             for(var obj of data){
              html+=
                  `<li title="${obj.title}">
                    <div class="search-item"><a href="${obj.url}">${obj.title}</a></div>
                   </li>`;
              $("#pic").attr("href",obj.url);
             }
             shelper.innerHTML=html;
             shelper.style.display="block";
            }else{
             shelper.style.display="none";
            }
           })
      }
     })
})();