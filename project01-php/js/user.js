/****************************1.加载数据及分页数据*******************************************/
var uname=sessionStorage.getItem("uname");
console.log(uname);
$("#right").html(`welcome管理员☺:${uname}`);
function load(page){
    $.ajax({
        type:"GET",
        url:"data/login_do.php",
        data:{page:page},
        success:function(pager){
            var html="";
            for(var p of pager.data){
                html+=`
                 <tr>
                   <td>${p.id}</td>
                   <td>${p.uname}</td>
                   <td>${p.tel}</td>
                   <td>${p.connect}</td>
                   <td>
                    <a href="${p.id}" class="del">删除</a>
                   </td>
                 </tr>
                `;
            }
            $("#tb1").html(html);

            var html="";
            if(pager.page-2>0){html+=`<li><a href="${pager.page-2}">${pager.page-2}</a></li>`;}
            if(pager.page-1>0){html+=`<li><a href="${pager.page-1}">${pager.page-1}</a></li>`;}
            html+=`<li class="active"><a href="${pager.page}">${pager.page}</a></li>`;
            if(pager.page+1<=pager.pageCount){html+=`<li><a href="${pager.page+1}">${pager.page+1}</a></li>`;}
            if(pager.page+2<=pager.pageCount){html+=`<li><a href="${pager.page+2}">${pager.page+2}</a></li>`;}
            $("#page").html(html);
        },
        error:function(data){alert("网络连接有误！请检查！")}
    });
}
load(1);
/****************************2.为页数绑定单击事件*******************************************/
$("#page").on("click","li a",function(e){
    e.preventDefault();
    var val=$(this).attr("href");
    load(val);
})
/****************************3.为删除绑定单击事件*******************************************/
$("#tb1").on("click","a.del",function(e){
    e.preventDefault();
    var c=window.confirm("确定要删除该数据吗？");
    if(c==false){return;}
    var tr=$(this).parents("tr");
    var id=$(this).attr("href");
    $.ajax({
        type:"GET",
        url:"data/login_del.php",
        data:{id:id},
        success:function(data){
            if(data.code>0){
                alert("删除成功");
                tr.remove();
            }
        },
        error:function(data){alert("网络连接错误！请检查！")}
    })
})