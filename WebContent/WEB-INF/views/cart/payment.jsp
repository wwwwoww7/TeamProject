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
		#blah {
			border : 1px solid black; 
			height : auto;
			margin : 10px;
			color: #000;
		}
		#blah2 {
			margin : 10px;
		}
		#blah2 ol{
			color: #690700;
			font-weight:bold;
			margin-top:10px;
		}
		.pay_table {
			border-top:2px solid #945b00;
			margin: auto;
			position: relative;
			
		}
		
		.pay_table tr{
			text-align:center;
			height:30px;
			/* border : 1px solid #000;
			/* border-top:2px solid #945b00; */
			/* border-bottom:1px solid #CCC;  */ 
			font-weight: bold;
			font-size: 15px;
		}
		.pay_table td{
			text-align:center;
			padding: 20px 0 ;
			margin : 10px; 
			height:20px;
			font-size: 14px 
		}
		.pay_table td.name{
			text-align:center;
			width:100px;
			height:30px;
			border-right:1px solid #CCC;  
			border-bottom:1px solid #CCC; 
			font-weight: bold;
			font-size: 15px;
			color: #690700;
		}
		.pay_table td.cont{
			border-bottom:1px solid	#CCC;
			text-align:center;
			width:200px;
			height:30px;
			font-size: 15px;
		}
		.pay_table tfoot{
			width:300px;
			height:30px;
			font-weight: bold;
			font-size: 15px;
		}
		.pay_table tr.warr{ 
			font-size: 5px;
			border-top:2px solid #945b00;
			color:red; 
			margin:10px;
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
							<span>01 장바구니 ></span> <span style="color: #690700; font-weight: bold">02 주문서작성/결제 > </span> <span>03 주문완료</span>
						</div>
						</div>
					</div>	
					<br/>
					<br/>
					<div class="col-lg-12">
						<div id="blah">
							<div id="blah2">
								결제를 하기 위하여 아래 정보를 확인 하여 결제를 완료하여 주십시오.
									<ol>
										<li>결제금액이 맞는지 확인 하여 주십시오.</li>
										<li>본인 아이디가 맞는지 확인 하여 주십시오.</li>
										<li>체크 확인완료 시 바로결제 버튼을 눌러 결제를 진행하여 주십시오.</li>
									</ol>
							</div>
						</div>
						<table class="pay_table">
							<thead>
								<tr>
									<td class="name" >상점명</td>
									<td class="cont">BAN숙 에듀(주)</td>
								</tr>
								<tr>
									<td class="name">결제금액</td>
									<td class="cont">결제 총액 끌어왕</td>
								</tr>
								<tr>
									<td class="name">결제자 ID</td>
									<td class="cont">결제할 사람 id 끌어오기</td>
								</tr>
								<tr>
									<td class="name">휴대전화</td>
									<td class="cont">휴대전화번호 끌어왑</td>
								</tr>
								<tr class="warr">
									<td colspan="2">*이용동의에 체크가 완료되지 않으면 결제진행의 어려움이 있습니다.</td>
								</tr>
							</thead>
							<tbody>
						        <tr>
						   			<td colspan="2">
							   			<div class="checkbox_group">
							   				<input type="checkbox" name="checkAll" class="chk" id="checkAll" />전체동의
							   				<input type="checkbox" name="chk" class="chk" id="chk"/>이용약관동의
							   				<input type="checkbox" name="chk" class="chk" id="chk"/>개인정보 처리방침 동의
							   			</div>
						 	  		<script type="text/javascript">
							 	  		
							 	  		// 체크박스 전체 선택
									   			$("#checkAll").click(function () {
									   				if($("#checkAll").is(":checked")){
									   					$(".chk").prop("checked", true);
									   				}else{
									   					$(".chk").prop("checked", false);
									   				}
									   			});
									   			 
									   		 // 체크박스 개별 선택
									   			$(".chk").click(function(){
													if($("input[name='chk']:checked").length==2){
														$("#checkAll").prop("checked",true);
													}else{
														$("#checkAll").prop("checked",false);
													}
												}); 
							 	  		
						   			</script>
						   			</td>
						        </tr>
					   		</tbody>
					   		<tfoot>
								<tr>
									<td colspan="2">
										<a class="btn btn-info" href="javascript:paycomplate()">결제하기</a>	
										<script type="text/javascript">
						   					function paycomplate(){
						   						if($("input[name='checkAll']:checked").length>0){
						   							location.href="<%=application.getContextPath()%>/cart/pay_complate";
						   						}else{
						   							var result = alert("이용약관동의 모두 체크 부탁드립니다."); 
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