<%@ page contentType="text/html; charset=UTF-8"%>
<%-- 2020. 10. 29. --%>

<!DOCTYPE html>
<html>
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
		.complete_table {
			margin:auto;
			padding:20px;
			position: relative;
		
		}
		.complete_table tr{
			text-align:center;
			border: 2px solid #FAFAFA;
			
		}
		.complete_table td.ico{
			font-weight: bold;
			font-size: 35px;
		}
		.complete_table tbody{
			font-size: 20px;
			border: 2px solid #FAFAFA;
		}
		.complete_table td.ico5{
			height:60px;
			font-size: 35px;
		}
		.complete_table tfoot td{
			height:100px;
			margin:20px;
			border: 2px solid #FAFAFA;
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
			
			<jsp:include page="/WEB-INF/views/include/header.jsp"/>
			
			<%-- <jsp:include page="/WEB-INF/views/include/menu.jsp"/> --%>

			<section class="section-table cid-shasoJbvYr" id="table1-23">
	
	  
	  
	  <div class="container container-table">
	      <h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-2"><strong>
	         CART</strong></h2>
	      <h3 class="mbr-section-subtitle mbr-fonts-style align-center pb-5 mbr-light display-5">Get your Classes!</h3>
			
					<div class="col-lg-12">
						<div id="basket">
							<h3>주문완료</h3>
						
						<div id="sm_title">
							<span>01 장바구니 > </span><span id="2">02 주문서작성/결제 > </span><span style="color:#690700; font-weight: bold">03 주문완료</span>
						</div>
						</div>
					</div>	
					
					<div class="col-lg-12">
						<table class="complete_table">
							<thead>
								<tr>
									<td class="ico">
										<div style="font-size:250px; color:#ccc">
										<span class="mbri-gift"></span>
										</div>
										<p style="color:#470000; font-weight: bold">주문이 완료되었습니다!</p>
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
						         	<td class="ico4">
						         		주문내역 확인은 <a class="text-warning" href="#">[마이페이지]</a>에서 조회 하실 수 있습니다. 
						         	</td>
						        </tr>
						        
					   		</tbody>
					   		<tfoot>
					   			<tr>
					   				<td class="btnf">
					   					<div class="mbr-section-btn item-footer mt-2">
	   								       	<a class="btn item-btn btn-success display-7" href="<%=application.getContextPath()%>">홈으로 가기</a>
	   									</div>
					   				</td>
					   			</tr>
					   		</tfoot>
					   			
					   			
						</table>						
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

