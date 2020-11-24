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
	</head> 
	<script type="text/javascript">
		$(function(){
			$('#sidebar > ul').hide();
            $('#main-content').css({
                'margin-left': '0px'
            });
            $('#sidebar').css({
                'margin-left': '-180px'
            });
            $('#sidebar > ul').hide();
            $("#container").addClass("sidebar-closed");
		});
	
	</script>
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
								<i class="fa fa-shopping-cart fa-lg"></i>
								Class Detail
							</h3>
							<ol class="breadcrumb">
								<li><i class="fa fa-home"></i><a href="<%=application.getContextPath()%>">Home</a></li>
								<li><i class="fa fa-lg"></i>Class Detail</li>
							</ol>
						</div>
					</div>
					<div class="row">
						<!-- profile-widget -->
						<div class="col-lg-12">
							<div class="profile-widget profile-widget-info">
								<div class="panel-body">
									<div class="col-lg-2 col-sm-2">
										<h4>Jenifer Smith</h4>
										<div class="follow-ava">
											<img src="<%=application.getContextPath()%>/resources/img/profile-widget-avatar.jpg" alt="">
										</div>
										<h6>Administrator</h6>
									</div>
									<div class="col-lg-4 col-sm-4 follow-info">
										<p>Hello I’m Jenifer Smith, a leading expert in interactive
											and creative design.</p>
										<p>@jenifersmith</p>
										<p>
											<i class="fa fa-twitter">jenifertweet</i>
										</p>
										<h6>
											<span><i class="icon_clock_alt"></i>11:05 AM</span> <span><i
												class="icon_calendar"></i>25.10.13</span> <span><i
												class="icon_pin_alt"></i>NY</span>
										</h6>
									</div>
									<div class="col-lg-2 col-sm-6 follow-info weather-category">
										<ul>
											<li class="active">
												<a href="javascript:openpop()">
													<i class="fa fa-comments fa-2x"> </i><br>
													Contrary to popular belief, 강의 보기
												</a>
											</li>
												
									
										</ul>
									</div>
									<script type="text/javascript">
										function openpop(){
											open("classvideo","popup", "width=800, height=400, top=200, left=300");
										}
									</script>
									<div class="col-lg-2 col-sm-6 follow-info weather-category">
										<ul>
											<li class="active">
												<a href="classQA">
													<i class="fa fa-bell fa-2x"> </i><br>
													Contrary to popular belief, 강의 문의
												</a>
											</li>
	
										</ul>
									</div>
									<div class="col-lg-2 col-sm-6 follow-info weather-category">
										<ul>
											<li class="active">
												<a href="javascript:putt()">
													<i class="fa fa-shopping-cart fa-2x"> </i><br>
													Contrary to popular belief, 장바구니 담기
												</a>
											</li>
										</ul>
									</div>
									<script type="text/javascript">
										function putt(user_id,class_No ){
											var result = confirm("장바구니에 담으시겠습니까?");
											if(result==true){
												window.location.href="<%=application.getContextPath()%>/cart";
											}
																					
										}
									</script>
										
								</div>
							</div>
						</div>
					</div>
					<!-- page start-->
					<div class="row">
						<div class="col-lg-12">
							<section class="panel">
								<header class="panel-heading tab-bg-info">
									<ul class="nav nav-tabs">
										<li class="active">
											<a data-toggle="tab" href="#profile"> 
												<i class="icon-home"></i> 
												강의 소개
											</a>
										</li>
										<li>
											<a data-toggle="tab" href="#profile"> 
												<i class="icon-user"></i> 
												커리큘럼
											</a>
										</li>
										<li class="">
											<a data-toggle="tab" href="#edit-profile">
												<i class="icon-envelope"></i> 
												강사 설명
											</a>
										</li>
										<li class="">
											<a data-toggle="tab" href="#recent-activity">
												<i class="icon-envelope"></i> 
												후기
											</a>
										</li>
									</ul>
								</header>
								<div class="panel-body">
									<div class="tab-content">
										<!-- profile -->
										<div id="profile" class="tab-pane">
											<section class="panel">
												<div class="bio-graph-heading">
													Hello I’m Jenifer Smith,
													a leading expert in interactive and creative design
													specializing in the mobile medium. My graduation from Massey
													University with a Bachelor of Design majoring in visual
													communication.</div>
												<div class="panel-body bio-graph-info">
													<h1>Bio Graph</h1>
													<div class="row">
														<div class="bio-row">
															<p>
																<span>First Name </span>: Jenifer
															</p>
														</div>
														<div class="bio-row">
															<p>
																<span>Last Name </span>: Smith
															</p>
														</div>
														<div class="bio-row">
															<p>
																<span>Birthday</span>: 27 August 1987
															</p>
														</div>
														<div class="bio-row">
															<p>
																<span>Country </span>: United
															</p>
														</div>
														<div class="bio-row">
															<p>
																<span>Occupation </span>: UI Designer
															</p>
														</div>
														<div class="bio-row">
															<p>
																<span>Email </span>:jenifer@mailname.com
															</p>
														</div>
														<div class="bio-row">
															<p>
																<span>Mobile </span>: (+6283) 456 789
															</p>
														</div>
														<div class="bio-row">
															<p>
																<span>Phone </span>: (+021) 956 789123
															</p>
														</div>
													</div>
												</div>
											</section>
											<section>
												<div class="row"></div>
											</section>
										</div>
										<div id="recent-activity" class="tab-pane active">
											<div class="profile-activity">
												<div class="act-time">
													<div class="activity-body act-in">
														<span class="arrow"></span>
														<div class="text">
															<a href="#" class="activity-img"><img class="avatar"
																src="<%=application.getContextPath()%>/resources/img/chat-avatar.jpg" alt=""></a>
															<p class="attribution">
																<a href="#">Jonatanh Doe</a> at 4:25pm, 30th Octmber 2014
															</p>
															<p>It is a long established fact that a reader will be
																distracted layout</p>
														</div>
													</div>
												</div>
												<div class="act-time">
													<div class="activity-body act-in">
														<span class="arrow"></span>
														<div class="text">
															<a href="#" class="activity-img"><img class="avatar"
																src="<%=application.getContextPath()%>/resources/img/chat-avatar.jpg" alt=""></a>
															<p class="attribution">
																<a href="#">Jhon Loves </a> at 5:25am, 30th Octmber 2014
															</p>
															<p>Knowledge speaks, but wisdom listens.</p>
														</div>
													</div>
												</div>
												<div class="act-time">
													<div class="activity-body act-in">
														<span class="arrow"></span>
														<div class="text">
															<a href="#" class="activity-img"><img class="avatar"
																src="<%=application.getContextPath()%>/resources/img/chat-avatar.jpg" alt=""></a>
															<p class="attribution">
																<a href="#">Rose Crack</a> at 5:25am, 30th Octmber 2014
															</p>
															<p>Pellentesque habitant morbi tristique senectus et
																netus et malesuada fames ac turpis egestas.</p>
														</div>
													</div>
												</div>
												<div class="act-time">
													<div class="activity-body act-in">
														<span class="arrow"></span>
														<div class="text">
															<a href="#" class="activity-img"><img class="avatar"
																src="<%=application.getContextPath()%>/resources/img/chat-avatar.jpg" alt=""></a>
															<p class="attribution">
																<a href="#">Jimy Smith</a> at 5:25am, 30th Octmber 2014
															</p>
															<p>Pellentesque habitant morbi tristique senectus et
																netus et malesuada fames ac turpis egestas. Vestibulum
																tortor quam, feugiat vitae, ultricies eget, tempor sit
																amet, ante. Donec eu libero sit amet quam egestas semper.
																Aenean ultricies mi vitae est. Mauris placerat eleifend
																leo.</p>
														</div>
													</div>
												</div>
												<div class="act-time">
													<div class="activity-body act-in">
														<span class="arrow"></span>
														<div class="text">
															<a href="#" class="activity-img"><img class="avatar"
																src="<%=application.getContextPath()%>/resources/img/chat-avatar.jpg" alt=""></a>
															<p class="attribution">
																<a href="#">Maria Willyam</a> at 5:25am, 30th Octmber
																2014
															</p>
															<p>Pellentesque habitant morbi tristique senectus et
																netus et malesuada fames ac turpis egestas. Vestibulum
																tortor quam, feugiat vitae, ultricies eget, tempor sit
																amet, ante. Donec eu libero sit amet quam egestas semper.
																Aenean ultricies mi vitae est. Mauris placerat eleifend
																leo. Quisque sit amet est et sapien ullamcorper pharetra.
																Vestibulum erat wisi, condimentum sed, commodo vitae,
																ornare sit amet, wisi. Aenean fermentum, elit eget
																tincidunt condimentum, eros ipsum rutrum orci, sagittis
																tempus lacus enim ac dui. Donec non enim in turpis
																pulvinar facilisis. Ut felis. Praesent dapibus, neque id
																cursus faucibus, tortor neque egestas augue, eu vulputate
																magna eros eu erat. Aliquam erat volutpat. Nam dui mi,
																tincidunt quis, accumsan porttitor, facilisis luctus,
																metus</p>
														</div>
													</div>
												</div>
												<div class="act-time">
													<div class="activity-body act-in">
														<span class="arrow"></span>
														<div class="text">
															<a href="#" class="activity-img"><img class="avatar"
																src="<%=application.getContextPath()%>/resources/img/chat-avatar.jpg" alt=""></a>
															<p class="attribution">
																<a href="#">Sarah saw</a> at 5:25am, 30th Octmber 2014
															</p>
															<p>Knowledge speaks, but wisdom listens.</p>
														</div>
													</div>
												</div>
												<div class="act-time">
													<div class="activity-body act-in">
														<span class="arrow"></span>
														<div class="text">
															<a href="#" class="activity-img"><img class="avatar"
																src="<%=application.getContextPath()%>/resources/img/chat-avatar.jpg" alt=""></a>
															<p class="attribution">
																<a href="#">Layla night</a> at 5:25am, 30th Octmber 2014
															</p>
															<p>Pellentesque habitant morbi tristique senectus et
																netus et malesuada fames ac turpis egestas.</p>
														</div>
													</div>
												</div>
												<div class="act-time">
													<div class="activity-body act-in">
														<span class="arrow"></span>
														<div class="text">
															<a href="#" class="activity-img"><img class="avatar"
																src="<%=application.getContextPath()%>/resources/img/chat-avatar.jpg" alt=""></a>
															<p class="attribution">
																<a href="#">Andriana lee</a> at 5:25am, 30th Octmber 2014
															</p>
															<p>Pellentesque habitant morbi tristique senectus et
																netus et malesuada fames ac turpis egestas. Vestibulum
																tortor quam, feugiat vitae, ultricies eget, tempor sit
																amet, ante. Donec eu libero sit amet quam egestas semper.
																Aenean ultricies mi vitae est. Mauris placerat eleifend
																leo.</p>
														</div>
													</div>
												</div>
												<div class="act-time">
													<div class="activity-body act-in">
														<span class="arrow"></span>
														<div class="text">
															<a href="#" class="activity-img"><img class="avatar"
																src="<%=application.getContextPath()%>/resources/img/chat-avatar.jpg" alt=""></a>
															<p class="attribution">
																<a href="#">Maria Willyam</a> at 5:25am, 30th Octmber
																2014
															</p>
															<p>Pellentesque habitant morbi tristique senectus et
																netus et malesuada fames ac turpis egestas. Vestibulum
																tortor quam, feugiat vitae, ultricies eget, tempor sit
																amet, ante. Donec eu libero sit amet quam egestas semper.
																Aenean ultricies mi vitae est. Mauris placerat eleifend
																leo. Quisque sit amet est et sapien ullamcorper pharetra.
																Vestibulum erat wisi, condimentum sed, commodo vitae,
																ornare sit amet, wisi. Aenean fermentum, elit eget
																tincidunt condimentum, eros ipsum rutrum orci, sagittis
																tempus lacus enim ac dui. Donec non enim in turpis
																pulvinar facilisis. Ut felis. Praesent dapibus, neque id
																cursus faucibus, tortor neque egestas augue, eu vulputate
																magna eros eu erat. Aliquam erat volutpat. Nam dui mi,
																tincidunt quis, accumsan porttitor, facilisis luctus,
																metus</p>
														</div>
													</div>
												</div>
	
											</div>
										</div>
										
										<!-- edit-profile -->
										<div id="edit-profile" class="tab-pane">
											<section class="panel">
												<div class="panel-body bio-graph-info">
													<h1>Profile Info</h1>
													<form class="form-horizontal" role="form">
														<div class="form-group">
															<label class="col-lg-2 control-label">First Name</label>
															<div class="col-lg-6">
																<input type="text" class="form-control" id="f-name"
																	placeholder=" ">
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label">Last Name</label>
															<div class="col-lg-6">
																<input type="text" class="form-control" id="l-name"
																	placeholder=" ">
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label">About Me</label>
															<div class="col-lg-10">
																<textarea name="" id="" class="form-control" cols="30"
																	rows="5"></textarea>
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label">Country</label>
															<div class="col-lg-6">
																<input type="text" class="form-control" id="c-name"
																	placeholder=" ">
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label">Birthday</label>
															<div class="col-lg-6">
																<input type="text" class="form-control" id="b-day"
																	placeholder=" ">
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label">Occupation</label>
															<div class="col-lg-6">
																<input type="text" class="form-control" id="occupation"
																	placeholder=" ">
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label">Email</label>
															<div class="col-lg-6">
																<input type="text" class="form-control" id="email"
																	placeholder=" ">
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label">Mobile</label>
															<div class="col-lg-6">
																<input type="text" class="form-control" id="mobile"
																	placeholder=" ">
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label">Website URL</label>
															<div class="col-lg-6">
																<input type="text" class="form-control" id="url"
																	placeholder="http://www.demowebsite.com ">
															</div>
														</div>
	
														<div class="form-group">
															<div class="col-lg-offset-2 col-lg-10">
																<button type="submit" class="btn btn-primary">Save</button>
																<button type="button" class="btn btn-danger">Cancel</button>
															</div>
														</div>
													</form>
												</div>
											</section>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
	
				</section>
				
				
				
				
			</section>
			
			<jsp:include page="/WEB-INF/views/include/footer.jsp" />



		</section>
	</body>
</html>