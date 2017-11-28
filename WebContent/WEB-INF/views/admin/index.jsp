<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JBlog登陆</title>
<jsp:include page="../public/head.jsp"></jsp:include>
</head>
<body>
<div class="container">
	<div class="row" >
		<div class="col-md-3"></div>
		<div class="col-md-6">
		
			<div class="alert alert-danger" role="alert" id="error">用户名或者密码错误</div>
			<form method="post" action="${pageContext.request.contextPath}/login/validate">
				用户名:<input type="text" name="username"></br>
				密  码:<input type="password" name="password"></br></br>
				<input type="submit" class="btn btn-success">
			</form>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>
<jsp:include page="../public/foot.jsp"></jsp:include>
<script type="text/javascript">

window.onload=function(){
	if('${errorMessage}'.length > 1){
		$('#error').show();
	}else{
		$('#error').hide();
	}
}

</script>
</body>
</html>