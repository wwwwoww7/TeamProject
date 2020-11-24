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
		
		
		.cartlist { 
			margin: auto;
			position: relative;
			
		}
		.cartlist thead th{
			text-align:center;
			height:40px;
			border-top:2px solid #945b00;
			border-bottom:1px solid #CCC;  
			font-weight: bold;
			font-size: 15px;
		}
		.cartlist tbody td{
			text-align:center;
			padding: 20px 0 ;
			margin : 10px;
			border-bottom:1px solid #CCC; 
			height:20px;
			font-size: 14px 
		}
		.bak_item {
			height: 170px;
			margin:30px;
		}
		.cartlist tfoot tr.pay_start{
			border-top:2px solid #945b00;
			
		}
		.cartlist tfoot td{
			border-top:2px solid #945b00;
			text-align:center;
			padding: 20px 0 ;
			margin : 10px;	
			font-size: 14px; 
			font-weight: bold;
			font-style: black;
		
		}
		.cartlist #id{
			text-align: center;
		}
		#cnum{
			text-align:left;
			margin-left: 15px;
		}
		#csum{
			text-align:right;
			margin-right: 15px;
		}
		#btn{
			margin:2px;
			float: right;
		}
		#go{
			border-bottom:none;
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
							<h3>주문상품확인</h3>
						
						<div id="sm_title">
							<span style="color: #690700; font-weight: bold">01 장바구니 > </span><span id="2">02 주문서작성/결제 > </span><span>03 주문완료</span>
						</div>
						</div>
					</div>	
					<br/>
					<br/>
					<div class="col-lg-12">
						<table class="cartlist">
							<thead>
								<tr>
									<th width="50"  class="notice_title">체크</th>
									<th width="600" class="notice_title">상품/옵션 정보</th>
									<th width="350" class="notice">상품금액</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${list}==null">
									<tr>
										<td colspan="3"><b>담긴 상품이 없습니다.</b></td>
									</tr>
								</c:if>
								<c:forEach var="cart" items="${list}">
									<tr>
										<td>
										<label>
											<input type="checkbox" name="cartnum" id="cartnum"/> ${cart.class_no}
										</label>
										</td>
										<td>
											<a href="<%=application.getContextPath() %>/class/classdetail?classNo=${cart.class_no}" target="_blank">
											${cart.class_nm}<br>
											<img src="<%=application.getContextPath() %>/resources/profile/${cart.class_thum}" class="img-thumbnail"
											alt="${cart.class_nm}" style="width:140px">
											</a>
										</td>
									
										<td>
											<fmt:formatNumber value="${cart.class_price}" pattern="###,###"/>원</fmt>
											
										</td>
										
									</tr>
									</c:forEach>
									
						          <td width="50">
						          	<input type="checkbox" name="" value="">
						          </td>
						          <td width="450">
						          	<div class="bak_item">
										<div class="pro_img"></div>
									</div>
						          </td>
						          <td width="200">상품금액</td>
						        </tr>
								<tr>
									<td colspan="5" style="text-align: center;">
										<a class="btn btn-outline-primary btn-sm" href="#">처음</a> 
										<a class="btn btn-outline-info btn-sm" href="#">이전</a> 
											<c:forEach var="i" begin="1" end="5">
												<a class="btn btn-outline-success btn-sm" href="#">${i}</a>
											</c:forEach> 
										<a class="btn btn-outline-info btn-sm" href="#">다음</a> 
										<a class="btn btn-outline-primary btn-sm" href="#">맨끝</a></td>
								</tr>
					   		</tbody>
					   		<tfoot>
								<tr>
					   				<td colspan="1" id="cnum">선택한 상품의 개수</td>
					   				<td colspan="2" id="csum">최종 결제금액</td>
					   			</tr>
					   			<tr class="pay_start">
					   				<td colspan="5">
					   				
										<a class="btn btn-info" href="javascript:payment()">결제하기</a>
										<script type="text/javascript">
											function payment(){
						   							var result = confirm("로그인 후 결제 하실 수 있습니다."); 
													if(result==true){
						   								location.href="<%=application.getContextPath()%>/login/login";
						   							}else{
						   								return;
						   						}
											}
										</script>
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