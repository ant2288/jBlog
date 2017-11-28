<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="${webinfo.wdescribe}" />
<meta name="keywords" content="${webinfo.wkeyword}" />
<title>${webinfo.wtitle}</title>
<jsp:include page="public/head.jsp"></jsp:include>
<style>
ul.pagination {
    display: inline-block;
    padding: 0;
    margin: 0;
}

ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
    border: 1px solid #ddd;
    font-size: 22px;
}

ul.pagination li a.active {

    color: black;
    font-size: 22px;
    font-weight: 600;
    background-color: gray;

}
#category{
    position: absolute;
    top:40%;
    left:40px; 
}

ul.pagination li a:hover:not(.active) {background-color: #ddd;}
</style>
</head>
<body>
	<div id="row" class="row" style="margin-right: 0px;margin-left: 0px">
	<div id="leftRoot" class="col-md-3" style="padding:0;">
		<div id="left" class="col-md-3">
			<div id="leftContext">
				<p style="text-align: center;">
    				<span style="font-size: 36px;">${webinfo.wfirsttitle}</span>
				</p>
				<p style="text-align: center;">
				    <span style="font-size: 25px;">${webinfo.wsectitle}</span>
				</p>
			</div>
			
			<div id="category">
				<c:forEach items="${category }" var="itmes">
					<u><h4><a href="javascript:getPageByCid(${itmes.cid })" style="color:black">${itmes.cname }</a></h4></u>
				</c:forEach>
			</div>
		</div>
	</div>

	<div id="right" class="col-md-9">
		<div id="right2">
		
			<!-- 草稿 -->
			<article class="myContext">
				<header class="entry-header">
					<h2 class="entry-title">1134. Vertex Cover (25)-PAT甲级真题</h2>
				</header>
				
				<div class="entry-content">
					<p>这个是内容</p>
				</div>
				
				<footer class="entry-footer">
					这个是页脚
				</footer>
			</article>
		</div>
		
		<div>
			
			<center style="
			    margin-top: 80px;
			    margin-bottom: 80px;
			">
			
			<ul class="pagination" id="daohang">
			  <li><a href="#">«</a></li><!-- 首页 -->
			  <li><a href="#">1</a></li>
			  <li><a class="active" href="#">2</a></li>
			  <li><a href="#">3</a></li>
			  <li><a href="#">4</a></li>
			  <li><a href="#">5</a></li>
			  <li><a href="#">6</a></li>
			  <li><a href="#">7</a></li>
			  <li><a href="#">»</a></li>
			</ul>
			</center>
			
		</div>
		</div>
	</div>

<jsp:include page="public/foot.jsp"></jsp:include>
<script>
	var pageCount = 0;//总页数
	var categoryPage = -1;//分页总数
	function go(page){
		var p = window.parseInt(page);
		var p1 = p;
		p = (p-1) * 5;//请求偏移行数
		var r = $('#right2');//内容页面
		var dh = $("#daohang");//导航
		$.ajax({//请求数据
			url:'${pageContext.request.contextPath }/api/getPage',
			type:'POST',
			dataType:'json',
			data:'offset='+p+'&limit=5',//请求5条数据，偏移p行
			success:function(data){
				r.empty();//清空文章内容并重写文章内容
				for(var i = 0;i<data.length;i++){
					r.append('<article class="myContext"><header class="entry-header"><h2 class="entry-title">'+data[i].ptitle+'</h2></header><div class="entry-content">'+data[i].pcontext+'</div><footer class="entry-footer"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>'+data[i].pdate+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span> '+data[i].cname+'</footer></article>');		
				}			
				//重绘导航栏
				dh.empty();
				dh.append('<li><a href="javascript:go(1)">«</a></li>');//第一页
				//当前页前面的那些
				if(p1 - 1 > 3){
					dh.append('<li><a href="#" onclick="return false;">...</a></li>');//省略符号			
					for(var i=3;i>=1;i--){
						dh.append('<li><a href="javascript:go('+(p1-i)+')">'+(p1-i)+'</a></li>');
					}
					dh.append('<li><a class="active" href="javascript:go('+p1+')">'+p1+'</a></li>');//当前页
				}else{
					for(var i = 1;i<=p1-1;i++){
						dh.append('<li><a href="javascript:go('+(i)+')">'+(i)+'</a></li>');
					}
					dh.append('<li><a class="active" href="javascript:go('+p1+')">'+p1+'</a></li>');
				}
				
				//当前页后面的那些
				if(pageCount - p1 > 3){
					for(var i = 1;i<=3;i++){
						dh.append('<li><a href="javascript:go('+(p1+i)+')">'+(p1+i)+'</a></li>');
					}
					dh.append('<li><a href="#" onclick="return false;">...</a></li>');
				}else{
					for(var i = p1+1;i<=pageCount;i++){
						dh.append('<li><a href="javascript:go('+(i)+')">'+(i)+'</a></li>');
					}
				}
				dh.append('<li><a href="javascript:go('+pageCount+')">»</a></li>');//最后一页
				scrollTo(0,0);
			}
		});
	}
	
	function go2(page,cid){
		var r = $('#right2');//内容页面
		var p1 = page;
		var dh = $("#daohang");//导航
		var pp = (page-1) * 5;
		$.ajax({
			url:'${pageContext.request.contextPath}/api/getPageByCid',
			type:'POST',
			datatype:'json',
			data:'cid='+cid+'&offset='+pp+'&limit='+5,
			success:function(data){
				r.empty();//清空文章内容并重写文章内容
				for(var i = 0;i<data.length;i++){
					r.append('<article class="myContext"><header class="entry-header"><h2 class="entry-title">'+data[i].ptitle+'</h2></header><div class="entry-content">'+data[i].pcontext+'</div><footer class="entry-footer"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>'+data[i].pdate+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span> '+data[i].cname+'</footer></article>');		
				}
				//重绘导航栏
				dh.empty();
				dh.append('<li><a href="javascript:go2(1,'+cid+')">«</a></li>');//第一页
				if(p1 - 1 > 3){
					dh.append('<li><a href="#" onclick="return false;">...</a></li>');//省略符号			
					for(var i=3;i>=1;i--){
						dh.append('<li><a href="javascript:go2('+(p1-i)+','+cid+')">'+(p1-i)+'</a></li>');
					}
					dh.append('<li><a class="active" href="javascript:go2('+p1+','+cid+')">'+p1+'</a></li>');//当前页
				}else{
					for(var i = 1;i<=p1-1;i++){
						dh.append('<li><a href="javascript:go2('+(i)+','+cid+')">'+(i)+'</a></li>');
					}
					dh.append('<li><a class="active" href="javascript:go2('+p1+','+cid+')">'+p1+'</a></li>');
				}
				
				//当前页后面的那些
				if(categoryPage - p1 > 3){
					for(var i = 1;i<=3;i++){
						dh.append('<li><a href="javascript:go2('+(p1+i)+','+cid+')">'+(p1+i)+'</a></li>');
					}
					dh.append('<li><a href="#" onclick="return false;">...</a></li>');
				}else{
					for(var i = p1+1;i<=categoryPage;i++){
						dh.append('<li><a href="javascript:go2('+(i)+','+cid+')">'+(i)+'</a></li>');
					}
				}
				dh.append('<li><a href="javascript:go2('+categoryPage+','+cid+')">»</a></li>');//最后一页
			}
		});
	}
	
	function getPageByCid(cid){
		//todo:获取符合分类的页面总数;
		categoryPage = 1;//清空页数
		//获取分类之后的导航总页数
		$.ajax({
			url:'${pageContext.request.contextPath}/api/getCategroyPageNum',
			type:'POST',
			data:'cid='+cid,
			datatype:'JSON',
			async:false,
			success:function(data){
				categoryPage = window.parseInt(data.last);
			}
		});
		go2(1,cid);
	}
	
	function windowHeight() {
	      var h = document.documentElement.clientHeight; //获取当前窗口可视操作区域高度
	      var w = document.documentElement.clientWidth;
	      if(w < 500) {
	      	h = 120;
	      	$('#row').height(120);
	      }
	      //设置#left宽度
	      var leftRoot = $('#leftRoot');
	      leftRoot.height(h);
	      $('#left').width(leftRoot.width());
	      $('#left').height(leftRoot.height());
	      
	}
	
	    
	window.onload=function(){
		//初始化数据
		$.ajax({
			url:'${pageContext.request.contextPath }/api/getAllPageNum',
			type:'POST',
			dataType:'json',
			data:'limit=5',
			success:function(data){
				pageCount = data.last;
				var dh = $("#daohang");
				dh.empty();//清空导航，重新写入
			}			
		});
		go(1);	
		windowHeight(); //页面载入完毕执行函数
		setInterval(windowHeight, 1000);
	}
</script>
</body>
</html>