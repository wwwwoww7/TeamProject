<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html >
	<head>
	  <!-- Site made with Mobirise Website Builder v5.2.0, https://mobirise.com -->
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
	  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
	  <link rel="shortcut icon" href="assets/images/mbr-96x48.png" type="image/x-icon">
	  <meta name="description" content="Website Maker Description">
 
	  <title>classApply</title>
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons2/mobirise2.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons/mobirise-icons.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap.min.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-grid.min.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-reboot.min.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/tether/tether.min.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/formstyler/jquery.formstyler.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/formstyler/jquery.formstyler.theme.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/datepicker/jquery.datetimepicker.min.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/dropdown/css/style.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/socicon/css/styles.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/theme/css/style.css">
	  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css">
	  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
  
	</head>
	<body>
	  
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		
		<section class="form5 cid-shfia0Fnvw" id="form5-30">
	    
	    
	    <div class="container">
	        <div class="mbr-section-head">
	            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2"><strong>Class Apply</strong></h3>
	            
	        </div>
	        <div class="row justify-content-center mt-4">
	            <div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
	
	                <form action="<%=request.getContextPath() %>/email/apply_class" method="POST" class="mbr-form form-with-styler" id="applyclass" name="apply_class">
	            
	                    <div class="dragArea row">
	                        <div class="col-md col-sm-12 form-group" data-for="name">
	                            <input type="text" name="applyname" placeholder="Name" data-form-field="name" class="form-control"  id="applyname">
	                        	
	                        </div>
	                        <div class="col-md col-sm-12 form-group" data-for="email">
	                            <input type="email" name="applyemail" placeholder="E-mail" data-form-field="email" class="form-control"  id="applyemail">
	                            
	                        </div>
	                        <div class="col-12 form-group" data-for="title">
	                            <input type="text" name="applytitle" placeholder="Title" data-form-field="title" class="form-control"  id="applytitle">
	                        </div>
	                        <div class="col-12 align-center">
	                   
								Subject:
								<span>
									<input type="radio" style="margin-left: 10px"id="mkind1" name="mkind" value="health">
									<label for="mkind1">health</label>
								</span>
								 
								<span>
									<input type="radio" style="margin-left: 10px"id="mkind2" name="mkind" value="money">
									<label for="mkind2">money</label>
								</span>
								<span>
									<input type="radio" style="margin-left: 10px"id="mkind3" name="mkind" value="career">
									<label for="mkind3">career</label>
								</span>
								
								<span>
									<input type="radio" style="margin-left: 10px"id="mkind4" name="mkind" value="cooking">
									<label for="mkind4">cooking</label>
								</span>
								<br/>
							</div>
							
							<div class="col-lg-12 col-md-12 col-sm-12 align-center mbr-section-btn">
								<input type="submit" class="btn btn-success display-4">Send Request 
							</div>	
	                    </div>
	                </form>
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