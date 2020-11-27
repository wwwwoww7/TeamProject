<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
	<head>
	  <!-- Site made with Mobirise Website Builder v5.2.0, https://mobirise.com -->
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
	  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
	  <link rel="shortcut icon" href="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" type="image/x-icon">
	  <meta name="description" content="Web Site Maker Description">
	  <title>login</title>
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
		<!-- style="background-color:#c3d0d8" -->
		<section class="form4 cid-shauVUIa9i mbr-fullscreen"  id="form4-27">
		<div class="container">
	        <div class="row content-wrapper justify-content-center">
	            <div class="col-lg-3 offset-lg-1 mbr-form" data-form-type="formoid">
	                <form action="<%=application.getContextPath()%>/login" method="POST" class="mbr-form form-with-styler" data-form-title="loginform">
	            
	                    <div class="dragArea row">
	                        <div class="col-lg-12 col-md-12 col-sm-12">
	                            <h1 class="mbr-section-title mb-4 display-2">
	                                <strong>Login</strong></h1>
	                        </div>
	                        <div class="col-lg-12 col-md-12 col-sm-12"></div>
	                        
	                    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	                        <div class="col-lg-12 col-md col-12 form-group" data-for="mid">
	                            <input type="text" name="mid" placeholder="ID" data-form-field="mid" class="form-control" value="" id="name-form4-27">
	                        </div>
	                        <div class="col-lg-12 col-md col-12 form-group" data-for="memail">
	                            <input type="password" name="mpw" placeholder="Password" data-form-field="mpw" class="form-control" value="" id="password-form4-27">
	                        </div>
	                    
	                    </div>
	                    
	                  	<div class="col-lg-12 col-md-12 col-sm-12">
							<span class="pull-right">
								<a href="<%=request.getContextPath()%>/login/findpw" style="color:black "> Forgot Password?</a>
							</span>
						</div>
						
						<div class="col-12 col-md-auto mbr-section-btn">
							<button type="submit" class="btn btn-success display-4">Login</button>
						</div>
						<div class="col-12 col-md-auto mbr-section-btn">
							<button type="button" class="btn btn-success display-4" onclick="join()">Join</button>
						</div>
						
						<script>
							function join() {
								location.href = "<%=application.getContextPath()%>/login/join";
							}
						</script>
	                    
	                </form>
	                <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">		
						<div class="alert alert-danger" style="margin-top:10px" role="alert" style="width:auto;">
							아이디 또는 비밀번호가 잘못되었습니다. 
						</div>
					</c:if>
	            </div>
	            
				
	            <div class="col-lg-7 offset-lg-1 col-12">
	                <div class="image-wrapper">
	                     <img src="<%=application.getContextPath()%>/resources/assets/images/features4.jpg" alt="Mobirise" style="height: 30rem;">
	                </div>
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