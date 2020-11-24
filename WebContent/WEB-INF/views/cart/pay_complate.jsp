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
	<style>
		#basket {
			border-bottom: 1px solid #CCC; 
			-webkit-border-radius: 0px;
			-moz-border-radius: 0px;
			border-radius: 0px;
			position: relative;
			overflow: hidden;
			opacity: 0.8;
		}
		#basket h3{
		  	color:#000;
			font-size: 35px;
		}
		#sm_title {
			float: right;
			Font-size: 15px;
			position: relative;
			margin:0px;
		}
		.complate_table {
			margin:auto;
			position: relative;
		}
		.complate_table tr{
			border:1px solid #fff;
			text-align:center;
			
		}
		.complate_table td.ico{
			font-weight: bold;
			font-size: 35px;
		}
		.complate_table tbody{
			font-size: 20px;
			font-weight: bold;
		}
		.complate_table td.ico5{
			height:60px;
			font-weight: bold;
			font-size: 35px;
		}
		.complate_table tfoot td{
			height:100px;
			margin:20px;
		}
	</style>
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
								<i class="fa fa-shopping-cart fa-lg"></i> Cart
							</h3>
							<ol class="breadcrumb">
								<li><i class="fa fa-home"></i><a href="<%=application.getContextPath()%>">Home</a></li>
								<li><i class="fa fa-shopping-cart fa-lg"></i>Cart</li>
							</ol>
						</div>
					</div>
	
				<div class="h-50">
					<div class="col-lg-12">
						<div id="basket">
							<h3>주문완료</h3>
						
						<div id="sm_title">
							<span>01 장바구니 > </span><span id="2">02 주문서작성/결제 > </span><span style="color:#690700; font-weight: bold">03 주문완료</span>
						</div>
						</div>
					</div>	
					
					<div class="col-lg-12">
						<table class="complate_table">
							<thead>
								<tr>
									<td class="ico">
										<div style="font-size: 250px; color:#ccc">
											<i class="fa fa-gift fa-10x"></i>
										</div>
										<p style="color:#470000">주문이 완료되었습니다!</p>
									</td>
								</tr>
							</thead>
							<tbody>
						        <tr>
						         	<td>
						         		고객님! <span>BAN숙 에듀</span>를 이용해 주셔서 감사합니다.
						         	</td>
						        </tr>
						        <tr>
						         	<td>
						         		고객님, <span>주문이 완료</span> 되었습니다.
						         	</td>
						        </tr>
						        <tr>
						         	<td class="ico4">
						         		주문내역 확인은 [마이페이지]에서 조회 하실 수 있습니다. 
						         	</td>
						        </tr>
						        
					   		</tbody>
					   		<tfoot>
					   			<tr>
					   				<td class="btnf">
					   				<a class="btn btn-info" href="<%=application.getContextPath()%>">홈으로 가기</a>
					   				</td>
					   			</tr>
					   		</tfoot>
					   			
					   			
						</table>
						
					</div>
					
				</div>
				</section>
			
			</section>
			<jsp:include page="/WEB-INF/views/include/footer.jsp" />



		</section>
	</body>
</html>