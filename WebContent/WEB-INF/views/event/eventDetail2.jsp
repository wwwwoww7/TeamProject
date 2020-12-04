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
  <meta name="description" content="Website Creator Description">
  
  
  <title>eventDetail</title>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons2/mobirise2.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/tether/tether.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/theme/css/style.css">
  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>


	<section class="testimonails3 carousel slide testimonials-slider cid-sh9WSPbYRc mb-5" data-interval="false" id="testimonials3-1e">
	    <div class="text-center container">
	    	
	    	<h3 class="mb-4 mbr-fonts-style display-2">
	    		<strong style="color:#ffc800;">${eventD2.event_nm}</strong>
	    	</h3>
<!-- 	    </div> -->
<!-- 	    <div class="container-fluid m-5" align="center" > -->
	    	
			<div class="row">
				<div class="col-12">
					<hr style="border: 2px solid #ffc800;"/>
					<input type="hidden" value="${eventD2.event_no}" />
					<h3>${eventD2.event_ti}</h3>
					<br/>
				</div>
			</div>
			
	    	<div class="row">
	    		<div class="col-sm-6"  align="center">
	    			<p>${eventD2.event_ct}</p>
	    			<p>내용 적어보세요 </p>
	    		</div>
	    		<div class="col-sm-6"  align="center">
	    			<img width="100%" src="<%=application.getContextPath()%>/resources/img/ar/${eventD2.event_detail}">
	    		</div>
	    	</div>
	    	
	    
			
			
			
			<div class="mbr-section-btn mt-4" >
				<input type=button  class="btn btn-md btn-success display-4 text-primary"value="취소" onClick="history.back();">
				<a  class="btn btn-md btn-success display-4 text-primary" href="#" >클래스 구경하러가기</a>
			</div>
			<!-- <div class="container">
						
			</div> <p></p> -->
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
	 	 <style type="text/css">
	 	 
	 	 #gallery5-2f {
	 	 	background: #fff;
	 	 }
	 	/* .cid-shfcpp8srP2 {
	 		height: 100%;
	 		/* padding-bottom: 100rem; */
		 	background-color: #ffffff;
	    }  */
	    img {display: block;
	    	 margin-left:auto; 
	    	  float: right;
	    	  vspace="10";
	    	   hspace="10";}
	 </style>  
</body>
</html>