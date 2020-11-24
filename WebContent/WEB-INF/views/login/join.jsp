<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>	
	<head>
		<meta charset="utf-8">
		<title>TEAM1 JOIN</title>
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
			<div class="sector">	
				<form class="login-form" method="post" action="<%=request.getContextPath() %>/login/join" enctype="multipart/form-data">
					<div class="login-wrap">
						<p class="login-img">
							<i class="icon-pen"></i>
						</p>
						<div class="input-group">
							<span class="input-group-addon"><i class="icon_profile"></i> 아 이 디 </span>
							<input type="text" name="user_id" class="form-control" placeholder="ID"autofocus>
						</div>
						<div class="input-group">
							<span class="input-group-addon"><i class="icon_key_alt"></i>비 밀 번 호</span>
							<input type="password" name="user_pw" class="form-control" placeholder="Password">
						</div>	
						<div class="input-group">
							<span class="input-group-addon"><i class="icon_profile"></i> 이 름 </span>
							<input type="text" name="user_nm" class="form-control" placeholder="Username"autofocus>
						</div>
						<div class="input-group">
							<span class="input-group-addon"><i class="icon_profile"></i> 닉 네 임</span>
							<input type="text" name="user_nick" class="form-control" placeholder="Nickname"autofocus>
						</div>
						<div class="input-group">
							<span class="input-group-addon"><i class="icon_profile"></i>핸드폰번호</span>
							<input type="text" name="user_tel" class="form-control" placeholder="010-xxxx-xxxx" autofocus>
						</div>
						<div class="input-group">
							<span class="input-group-addon"><i class="icon-envelope-l"></i>이 메 일</span>
							<input type="text" name="user_email" class="form-control" placeholder="xxx@xxxx.xxx">
						</div>
					
						<div class="input-group">
							<div class="input-group-prepend"><span class="input-group-text">가입 유형</span></div>
							<select name="user_type" class="form-control">
								<!-- <option value="ROLE_ADMIN">관리자</option> -->
								<option value="ROLE_TUTOR">강사</option>
								<option value="ROLE_USER" selected>수강생</option>
							</select>
						</div>
						<div class="input-group">
							<div class="input-group-prepend"><span class="input-group-text">프로필 사진</span></div>
							<input type="file" name="mphotoAttach" class="form-control">
						</div>
						
					</div>
					
					<button type="submit" class="btn btn-danger btn-lg btn-block">Sign up</button>

				</form>
			</div>
			<div class="text-right">
				<div class="credits">
					copyright 2020 TEAM1 All right reserved. &nbsp;
				</div>
			</div>
		</div>
	</body>

</html>



