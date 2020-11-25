<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>		
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">
</head>
<body>
	<div class="wrap">
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>

		<div class="mainCenter">
			<div class="content">	
				<div class="sector" style="width:500px; margin: auto;">
					<h5>Login Form</h5>
					<img src="<%=application.getContextPath()%>/resources/images/security.png" width="100%"/>
					<div>
						<form method="post" action="<%=application.getContextPath()%>/login">
							<div class="input-group">
								<span class="input-group-addon"><i class="icon_profile"></i> 아 이 디 </span>
								<input type="text" class="form-control" placeholder="ID" value="${mid}" name="mid" autofocus>
							</div>
							<div class="input-group">
								<span class="input-group-addon"><i class="icon_key_alt"></i>비밀번호</span>
								<input type="password" class="form-control" placeholder="Password" name="mpw">
							</div>
							<label class="checkbox">
								<%-- <span class="pull-right">
									<a href="<%=request.getContextPath()%>/login/findpw"> Forgot Password?</a>
								</span> --%>
							</label>
							<input class="btn btn-primary btn-lg btn-block" name="submit" type="submit" value="Login" />
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
				</div>
			</div>
		</div>
	</div>
</body>
</html>