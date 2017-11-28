<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网站全局设置</title>
<jsp:include page="../public/head.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<h1><a href="${pageContext.request.contextPath }/admin/index">返回管理页面</a></h1>
		<table class="table">
			<tr>
				<td>网站名称(Title)</td>
				<td><input type="text" id="title" value="${webinfo.wtitle }"></td>
			</tr>
			<tr>
				<td>网站一级标题</td>
				<td><input type="text" id="firstTitle" value="${webinfo.wfirsttitle }"></td>
			</tr>
			<tr>
				<td>网站二级标题</td>
				<td><input type="text" id="secondTitle" value="${webinfo.wsectitle }"></td>
			</tr>
			<tr>
				<td>网站关键字</td>
				<td><input type="text" id="keywords" value="${webinfo.wkeyword }"></td>
			</tr>
			<tr>
				<td>网站描述</td>
				<td><input type="text" id="des" value="${webinfo.wdescribe }"></td>
			</tr>
		</table>
		<input type="button" class="btn btn-success" value="提交更改" id="submit" />
	</div>
<jsp:include page="../public/foot.jsp"></jsp:include>
<script type="text/javascript">
	$('#submit').click(function(){
		var title=$('#title').val();
		var ft = $('#firstTitle').val();
		var st = $('#secondTitle').val();
		var kw = $('#keywords').val();
		var de = $('#des').val();
		//ajax提交数据
		$.ajax({
			url:'${pageContext.request.contextPath}/admin/setting',
			method:'POST',
			datatype:'json',
			data:'title='+title+'&ft='+ft+'&st='+st+'&kw='+kw+'&de='+de,
			success:function(data){
				alert(data.message);
				location.reload();
			}
		});
	});
</script>
</body>
</html>