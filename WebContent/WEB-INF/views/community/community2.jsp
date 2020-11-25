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

<section class="tabs content18 cid-shajdlT652" id="tabs1-1k">

    

    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-8">
                <h3 class="mbr-section-title mb-0 mbr-fonts-style display-2">
                    <strong>Community@!@@!@</strong></h3>
                
            </div>
        </div>
        <div class="row justify-content-center mt-4">
            <div class="col-12 col-md-8">
                <ul class="nav nav-tabs mb-4" role="tablist">
                    <li class="nav-item first mbr-fonts-style">
                    	<a  class="nav-link mbr-fonts-style show active display-7" role="tab" data-toggle="tab" aria-selected="true" href="javascript:fun1()">
                    		<strong>all</strong>
                    	</a>
               			<script>
							function fun1(){
								$.ajax({
									url : "community/communityAll" , 
									success : function(data) {
										$("#fun1_result").html(data);
									}
								});
							}
						</script>
                    </li>
                    <li class="nav-item">
                    	<a href="javascript:fun2()"  class="nav-link mbr-fonts-style active display-7" role="tab" data-toggle="tab" aria-selected="true">
                    		<strong>health</strong>
                    	</a>
                    </li>
                    <li class="nav-item"><a class="nav-link mbr-fonts-style active display-7" role="tab" data-toggle="tab" href="#tabs1-1k_tab2" aria-selected="true"><strong>career</strong></a></li>
                    <li class="nav-item"><a class="nav-link mbr-fonts-style active display-7" role="tab" data-toggle="tab" href="#tabs1-1k_tab3" aria-selected="true"><strong>money</strong></a></li>
                    <li class="nav-item"><a class="nav-link mbr-fonts-style active display-7" role="tab" data-toggle="tab" href="#tabs1-1k_tab4" aria-selected="true"><strong>review</strong></a></li>
                    
                </ul>
                <div class="tab-content">
                    <div id="tab1" class="tab-pane in active" role="tabpanel">
                        <div class="row">
                            <div class="col-md-12" id="fun1_result">
                                 
                            </div>
                        </div>
                    </div>
                    <div id="tab2" class="tab-pane" role="tabpanel">
                        <div class="row">
                            <div class="col-md-12">
                                <p class="mbr-text mbr-fonts-style display-7">
                                    table2 ìì¹  </p>
                            </div>
                        </div>
                    </div>
                    <div id="tab3" class="tab-pane" role="tabpanel">
                        <div class="row">
                            <div class="col-md-12">
                                <p class="mbr-text mbr-fonts-style display-7">
                                    Mobirise is an easy and simple free website builder - just drop site elements to
                                    your page, add content and style it to look the way you like.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div id="tab4" class="tab-pane" role="tabpanel">
                        <div class="row">
                            <div class="col-md-12">
                                <p class="mbr-text mbr-fonts-style display-7">
                                    Free Website Builder offers a huge collection of 2500+ website blocks, templates and
                                    themes with thousands flexible options. Combine blocks from different themes to
                                    create a unique mix.</p>
                            </div>
                        </div>
                    </div>
                    <div id="tab5" class="tab-pane" role="tabpanel">
                        <div class="row">
                            <div class="col-md-12">
                                <p class="mbr-text mbr-fonts-style display-7">
                                    Free Website Builder offers a huge collection of 2500+ website blocks, templates and
                                    themes with thousands flexible options. Combine blocks from different themes to
                                    create a unique mix.
                                </p>
                            </div>
                        </div>
                    </div>
                    
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