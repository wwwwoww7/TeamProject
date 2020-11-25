<%@ page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html  >
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  
  <title>cart</title>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons2/mobirise2.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/tether/tether.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/datatables/data-tables.bootstrap4.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/theme/css/style.css">
  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additionalcart.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
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
			border-right:1px solid #c1c1c1;
			border-top: 1px solid #c1c1c1;  
			font-weight: bold;
			font-size: 15px;
			color: #690700;
		}
		.pay_table td.cont{
			border-top: 1px solid #c1c1c1;  
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
			border-top:2px solid #945b00;
			font-size: 5px;
			color:red; 
			margin:10px;
		}
	</style>
<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>
	
	
	<section class="section-table cid-shasoJbvYr" id="table1-23">
	
	  
	  
	  <div class="container container-table">
	      <h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-2"><strong>
	         CART</strong></h2>
	      <h3 class="mbr-section-subtitle mbr-fonts-style align-center pb-5 mbr-light display-5">Get your Classes!</h3>
	     
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
	        <div class="container">
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
						<table class="pay_table" style="width:600px">
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
						 	  		<script type="text/javascript">
							 	  		
							 	  		// 체크박스 전체 선택
									   			$("#checkAll").click(function() {
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
						   			</div>
						   			</td>
						        </tr>
					   		</tbody>
					   		<tfoot>
									<tr>
										<td colspan="2">
											<div class="mbr-section-btn item-footer mt-2">
	   								       	<a class="btn item-btn btn-warning display-7" href="javascript:paycomplate()">결제하기</a>
												<script type="text/javascript">
								   					function paycomplate(){
								   						if($("input[name='checkAll']:checked").length>0){
								   							location.href="<%=application.getContextPath()%>/cart/pay_complete";
								   						}else{
								   							var result = alert("이용약관동의 모두 체크 부탁드립니다."); 
								   						}
								   					}
							   						
							   					</script>
							   					</div>
					   					</td>
					   				</tr>
					   		</tfoot>
						</table>
					</div>
				</div>
			</div>
			</section>
<jsp:include page="/WEB-INF/views/include/footer.jsp"/>

	
	 <script src="<%=application.getContextPath()%>/resources/assets/web/assets/jquery/jquery.min.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/popper/popper.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/bootstrap/js/bootstrap.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/tether/tether.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/smoothscroll/smooth-scroll.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/dropdown/js/nav-dropdown.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/dropdown/js/navbar-dropdown.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/touchswipe/jquery.touch-swipe.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/parallax/jarallax.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/masonry/masonry.pkgd.min.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/imagesloaded/imagesloaded.pkgd.min.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/theme/js/script.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/gallery/player.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/gallery/script.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/slidervideo/script.js"></script>  
  
</body>
</html>