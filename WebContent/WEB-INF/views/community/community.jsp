<%@ page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html  >
<head>
  <!-- Site made with Mobirise Website Builder v5.2.0, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" type="image/x-icon">
  <meta name="description" content="Site Builder Description">
  
  
  <title>community</title>
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
  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>

	<section class="tabs content18 cid-shajdlT652">
	
	    <div class="container">
	        <div class="row justify-content-center">
	            <div class="col-12 col-md-8">
	                <h3 class="mbr-section-title mb-0 mbr-fonts-style display-2">
	                    <strong>Community</strong></h3>
	                
	            </div>
	        </div>
	        
	        <ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active" href="javascript:fun1()">전체</a></li>
					<script type="text/javascript">
						function fun1(){
							$.ajax({
								url : "community/communityAll" , 
								success : function(data) {
									$("#fun1_result").html(data);
								}
							});
						}
					</script>
				<li class="nav-item"><a class="nav-link" href="javascript:fun2()">잡담</a></li>
					<script>
						function fun2(){
							$.ajax({
								url  : "community/communityChat" , 
								success : function(data) {
									
									$("#fun1_result").html(data);
								}
							});
						}
					</script>
				<li class="nav-item"><a class="nav-link" href="javascript:fun3()">꿀팁</a></li>
					<script>
						function fun3(){
							$.ajax({
								url : "community/communityTips" , 
								success : function(data) {
									$("#fun1_result").html(data);
								}
							});
						}
					</script>
				<li class="nav-item"><a class="nav-link" href="javascript:fun4()">자랑</a></li>
					<script>
						function fun4(){
							$.ajax({
								url : "community/communityBoast" , 
								success : function(data) {
									$("#fun1_result").html(data);
								}
							});
						}
					</script>
					<li class="nav-item"><a class="nav-link" href="javascript:fun5()">양도</a></li>
					<script>
						function fun5(){
							$.ajax({
								url : "community/communityAssign" , 
								success : function(data) {
									$("#fun1_result").html(data);
								}
							});
						}
					</script>
				<li class="nav-item"><a class="nav-link" href="javascript:fun6()">후기</a></li>
					<script>
						function fun6(pageNo){
							if(!pageNo){
								pageNo=1;
							}
							
							$.ajax({
								url : "community/reviewAll" , 
								data: {pageNo:pageNo}, 
								success : function(data) {
									$("#fun1_result").html(data);
								}
							});
						}
				</script>
			</ul>
			<div id="fun1_result"></div>
	        
	        
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
	 
	 <script type="text/javascript">
		$(function(){
			fun1();
		});
	</script>
	
	<style type="text/css">
		a {
			color : black;
		}
		#table1-1l {
			padding-top: 30px;
		}
		
		#fun1_result , #table1-1l {
			background: #FFF;
		}
		
		.input-group-text {
			background-color : #FFF;
			background: #FFF;
			width:  100%;
		}
		
	</style>
	
</body>
</html>