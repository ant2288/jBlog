<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文章管理</title>
<jsp:include page="../public/head.jsp"></jsp:include>
</head>
<body>
	<div class="container">
	<h1><a href="${pageContext.request.contextPath }/admin/index">返回管理页面</a></h1>
		<table class="table">
			<tr>
				<th>编号</th>
				<th>时间</th>
				<th>标题</th>
				<th>删除</th>
			</tr>
			<tr>
				<td>1</td>
				<td>2017-10-20</td>
				<td>这个是标题</td>
				<td>删除</td>
			</tr>
		</table>
		<center>
			<nav aria-label="Page navigation">
				  <ul class="pagination">
				    <li>
				      <a href="javascript:go(1);" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li><a href="#">1</a></li>
				    <li><a href="#" class="action">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li>
				      <a aria-label="Next" href="javascript:go('+pageCount+')">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
			</nav>
		</center>
	</div>
<jsp:include page="../public/foot.jsp"></jsp:include>
<script>
var pageCount = 0;

function del(pid){
	//alert(pid);
	$.ajax({
		url:'${pageContext.request.contextPath }/admin/delPage',
		type:'POST',
		datatype:'json',
		data:'pid='+pid,
		success:function(data){
			alert(data.message);
			location.reload();
		}
	});
}

function go(page){
	var p = (page - 1 ) * 20;
	$.ajax({
		url:'${pageContext.request.contextPath }/api/getPage',
		type:'POST',
		datatype:'json',
		data:'offset='+p+'&limit=20',//请求5条数据，偏移p行
		success:function(data){
			//清空表格内容
			var tbodychildren = $('tbody').children();
			var tb = $('tbody');
			for(var i =1;i<tbodychildren.length;i++){
			    tbodychildren[i].remove();
			}
			//插入内容
			for(var i=0;i<data.length;i++){
				var x = '<tr><td>'+data[i].pid+'</td><td>'+data[i].pdate+'</td><td>'+data[i].ptitle+'</td><td><a href="javascript:del('+data[i].pid+')">删除</a></td></tr>';
				tb.append(x);
			}
			//清空导航
			var ul = $('ul');
			ul.empty();
			//返回第一页
			ul.append('<li><a href="javascript:go(1);" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>');
			//当前页前面的
			if(page - 1 > 3){
				ul.append('<li><a href="#" onclick="return false;">...</a></li>');
				for(var i=3;i>=1;i--){
					ul.append('<li><a href="javascript:go('+(page-i)+')">'+(page-i)+'</a></li>');
				}
			}else{
				for(var i = 1;i<=page-1;i++){
					ul.append('<li><a href="javascript:go('+(i)+')">'+(i)+'</a></li>');
				}
			}
			//当前页
			ul.append('<li class="active"><a href="javascript:go('+page+')">'+page+'</a></li>');
			//当前页后面那些
			if(pageCount - page > 3){
				for(var i=1;i<=3;i++){
					ul.append('<li><a href="javascript:go('+(page+i)+')">'+(page+i)+'</a></li>');
				}
				ul.append('<li><a href="#" onclick="return false;">...</a></li>');
			}else{
				for(var i = page+1;i<=pageCount;i++){
					ul.append('<li><a href="javascript:go('+(i)+')">'+(i)+'</a></li>');
				}
			}
			//返回最后一页
			ul.append('<li><a aria-label="Next" href="javascript:go('+pageCount+')"><span aria-hidden="true">&raquo;</span></a></li>');
		}
	});
}


window.onload=function(){
	//初始化数据
	$.ajax({
		url:'${pageContext.request.contextPath }/api/getAllPageNum',
		type:'POST',
		dataType:'json',
		data:'limit=20',
		success:function(data){
			pageCount = data.last;
		}			
	});
	go(1);
}


</script>
</body>
</html>