<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>TEAM1 Login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
		<meta name="author" content="GeeksLabs">
		<meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
		<link rel="shortcut icon" href="img/favicon.png"> 
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link href="<%=application.getContextPath()%>/resources/css/bootstrap-theme.css" rel="stylesheet">
		<!--external css-->
		<!-- font icon -->
		<link href="<%=application.getContextPath()%>/resources/css/elegant-icons-style.css" rel="stylesheet" />
		<link href="<%=application.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet" /> 
		<!-- Custom styles -->
		<link href="<%=application.getContextPath()%>/resources/css/style.css" rel="stylesheet"> 
		<link href="<%=application.getContextPath()%>/resources/css/style-responsive.css" rel="stylesheet"> 

	</head>
	<body class="login-img3-body">
		<div class="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"/>
				<form class="login-form" action="login">
				<div class="login-wrap">
					<p class="login-img">
						<i class="icon_lock_alt"></i>
					</p>
					
					<sec:authorize access="isAnonymous()">
						<div>
							<form method="post" action="<%=application.getContextPath()%>/login/login">
								<div class="input-group">
									<span class="input-group-addon"><i class="icon_profile"></i> 아 이 디 </span>
									<input type="text" class="form-control" placeholder="ID" value="${user_id}" name="user_id" autofocus>
								</div>
								<div class="input-group">
									<span class="input-group-addon"><i class="icon_key_alt"></i>비밀번호</span>
									<input type="password" class="form-control" placeholder="Password" name="user_pw">
								</div>
								<label class="checkbox">
									<span class="pull-right">
										<a href="<%=request.getContextPath()%>/login/findpw"> Forgot Password?</a>
									</span>
								</label>
								<input class="btn btn-primary btn-lg btn-block" name="submit" type="submit" value="Login"/>
								<input class="btn btn-info btn-lg btn-block" name="submit" type="button" value="Join" onclick="join()"/>
								<script>
									function join() {
										location.href = "<%=application.getContextPath()%>/login/join";
									}
								</script>
							</form>
							<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">		
								<div class="alert alert-danger" style="margin-top:10px" role="alert" style="width:auto;">
									아이디 또는 비밀번호가 잘못되었습니다. 
								</div>
							</c:if>
						</div>
					</sec:authorize>			
					<sec:authorize access="isAuthenticated()">
							<sec:authentication property="user_id"/>님 환영합니다.
							<form method="post" action="${pageContext.request.contextPath}/logout" style="display:inline-block;">
								<input class="btn btn-info" type="submit" value='Logout'/><!-- 로그아웃 할 때도 POST 방식으로 선언해야 한다. -->
							</form>
							
							<a class="btn btn-info" href="<%=application.getContextPath()%>/login/loginInfo">Login Info</a>
					</sec:authorize>	
				</div>
			</form>
		</div>	
	</body>
</html>