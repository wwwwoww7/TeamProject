<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
	<head>
		  <meta charset="UTF-8">
		  <meta http-equiv="X-UA-Compatible" content="IE=edge">
		  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
		  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
		  <link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/assets/images/mbr-96x48.png" type="image/x-icon">
		  <meta name="description" content="">
		  
		  
		  <title>BanSook</title>
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/web/assets/mobirise-icons2/mobirise2.css">
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/web/assets/mobirise-icons/mobirise-icons.css">
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/bootstrap/css/bootstrap.min.css">
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/bootstrap/css/bootstrap-grid.min.css">
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/bootstrap/css/bootstrap-reboot.min.css">
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/tether/tether.min.css">
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/dropdown/css/style.css">
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/socicon/css/styles.css">
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/theme/css/style.css">
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/gallery/style.css">
		  <link rel="preload"   as="style" href="<%=request.getContextPath() %>/resources/assets/mobirise/css/mbr-additional.css">
		  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
	</head>

<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>
	
	<section class="header1 cid-sh8TVI48I4 mbr-parallax-background" id="header1-o">
		 <div class="container">
		 
             <h3 class="mbr-section-subtitle align-center mbr-light pb-3 mbr-fonts-style display-5">
             	<%if(exception instanceof RuntimeException) {%>
					<img src="${pageContext.request.contextPath}/resources/images/500.png" width="500"/>
				<%}%>
            </h3>
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
