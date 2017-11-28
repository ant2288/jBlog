<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${USER.uusername }的管理页面</title>
<jsp:include page="../public/head.jsp"></jsp:include>
</head>
<body>
	
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<ul>
					<li><a href="${pageContext.request.contextPath }/admin/write">写文章</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/management">文章管理</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/setting">网站设置</a></li>
					<li><a href="${pageContext.request.contextPath }/">网站首页</a></li>
				</ul>
			</div>
			<div class="col-md-6">
				asdasdasdaaasd
			</div>
		</div>
	</div>


<jsp:include page="../public/foot.jsp"></jsp:include>
</body>
</html>