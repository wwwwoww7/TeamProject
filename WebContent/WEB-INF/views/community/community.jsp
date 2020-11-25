<%@ page contentType="text/html; charset=UTF-8"%>
<%-- 2020. 10. 29. --%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>TEAM1</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
		<meta name="author" content="GeeksLabs">
		<meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
		<link rel="shortcut icon" href="img/favicon.png"> 
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script src="<%=application.getContextPath()%>/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="<%=application.getContextPath()%>/resources/js/jquery.slimscroll.min.js"></script>
    	<script src="<%=application.getContextPath()%>/resources/js/jquery.autosize.min.js"></script> 
		<script src="<%=application.getContextPath()%>/resources/js/scripts.js"></script>
		<!-- bootstrap theme -->
		<link href="<%=application.getContextPath()%>/resources/css/bootstrap-theme.css" rel="stylesheet">
		<!--external css-->
		<!-- font icon -->
		<link href="<%=application.getContextPath()%>/resources/css/elegant-icons-style.css" rel="stylesheet" />
		<link href="<%=application.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet" /> 
		<link href="<%=application.getContextPath()%>/resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
		<!-- Custom styles -->
		<link href="<%=application.getContextPath()%>/resources/css/style.css" rel="stylesheet"> 
		<link href="<%=application.getContextPath()%>/resources/css/style-responsive.css" rel="stylesheet"> 
	
		<script type="text/javascript">
			$(function(){
				fun1();
			});
		</script>
	</head>
	
	<body>
		<!-- container section start -->
  		<section id="container" class="">
			
			<jsp:include page="/WEB-INF/views/include/header.jsp"/>
			
			<jsp:include page="/WEB-INF/views/include/menu.jsp"/>

			<!--main content start-->
			<section id="main-content">
				<section class="wrapper">
					<!--overview start-->
					<div class="row">
						<div class="col-lg-12">
							<h3 class="page-header">
								<i class="fa fa-laptop"></i> Community
							</h3>
							<ol class="breadcrumb">
								<li><i class="fa fa-home"></i><a href="<%=application.getContextPath()%>">Home</a></li>
								<li><i class="fa fa-laptop"></i>Community</li>
							</ol>
						</div>
					</div>
					<div class="row">
					<div class="container">
						<ul class="nav nav-tabs">
							<li class="nav-item"><a class="nav-link " href="javascript:fun1()">전체</a></li>
								<script>
									function fun1(){
										$.ajax({
											url : "community/communityAll" , 
											success : function(data) {
												$("#fun1_result").html(data);
											}
										});
									}
								</script>
							<li class="nav-item"><a class="nav-link" href="javascript:fun2()">건강</a></li>
								<script>
									function fun2(){
										$.ajax({
											url  : "community/communityHealth" , 
											success : function(data) {
												
												$("#fun1_result").html(data);
											}
										});
									}
								</script>
							<li class="nav-item"><a class="nav-link" href="javascript:fun3()">커리어</a></li>
								<script>
									function fun3(){
										$.ajax({
											url : "community/communityCareer" , 
											success : function(data) {
												$("#fun1_result").html(data);
											}
										});
									}
								</script>
							<li class="nav-item"><a class="nav-link" href="javascript:fun4()">머니</a></li>
								<script>
									function fun4(){
										$.ajax({
											url : "community/communityMoney" , 
											success : function(data) {
												$("#fun1_result").html(data);
											}
										});
									}
								</script>
							<li class="nav-item"><a class="nav-link" href="javascript:fun5()">후기</a></li>
								<script>
									function fun5(){
										$.ajax({
											url : "community/communityReview" , 
											success : function(data) {
												$("#fun1_result").html(data);
											}
										});
									}
								</script>
						</ul>
						<div id="fun1_result"></div>
					</div>
				</div>
			</section>
		</section>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</section>
</body>
</html>