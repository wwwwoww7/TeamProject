<%@page import="java.util.*"%>
<%@ page contentType="text/html; charset=UTF-8"%>



<!DOCTYPE html>
<html  >
<head>
  <!-- Site made with Mobirise Website Builder v5.2.0, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/mbr-96x48.png" type="image/x-icon">
  <meta name="description" content="Site Creator Description">
  
  
  <title>classDetail</title>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons2/mobirise2.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/tether/tether.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/formstyler/jquery.formstyler.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/formstyler/jquery.formstyler.theme.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/datepicker/jquery.datetimepicker.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/theme/css/style.css">
  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>

	<section class="tabs content18 cid-shfqnnLy7B" id="tabs1-3u">

    
	    <div class="container">
	        <div class="row justify-content-center">
	            <div class="col-12 col-md-8">
	                <h3 class="mbr-section-title mb-0 mbr-fonts-style display-2">
	               	 <strong>Class Detail</strong>
	                </h3>
	            </div>
	        </div>
	        
	        
	        
	         <div class="mbr-section-btn">
               	<a class="btn item-btn btn-success display-4" href="javascript:putt()">장바구니 담기</a>
             </div>
	         <script type="text/javascript">
				function putt(){
					var result = confirm("장바구니에 담으시겠습니까?");
					if(result==true){
							location.href="<%=application.getContextPath()%>/cart/pick_cl";
					}
				}
			</script>
	        
	        <div class="row justify-content-center mt-4">
	            <div class="col-12 col-md-12">
	                <ul class="nav nav-tabs mb-4" role="tablist">
	                    <li class="nav-item first mbr-fonts-style">
	                    	<a class="nav-link mbr-fonts-style show active display-7" role="tab" data-toggle="tab" href="#" aria-selected="true">
	                    		<strong>강의 소개</strong>
	                    	</a>
	                    </li>
	                    <li class="nav-item">
	                    	<a class="nav-link mbr-fonts-style active display-7" role="tab" data-toggle="tab" href="#" aria-selected="true">
	                            <strong>커리큘럼</strong>
	                        </a>
	                    </li>
	                    <li class="nav-item">
	                        <a class="nav-link mbr-fonts-style display-7" role="tab" data-toggle="tab" href="#" aria-selected="true">
	                            <strong>강사설명</strong>
	                        </a>
	                    </li>
	                    <li class="nav-item">
	                        <a class="nav-link mbr-fonts-style display-7" role="tab" data-toggle="tab" href="#" aria-selected="true">
	                            <strong>후기</strong>
	                        </a>
	                    </li>
	                    
	                    
	                    <li class="nav-item">
	                        <a class="nav-link mbr-fonts-style display-7" role="tab" data-toggle="tab" href="#" aria-selected="true">
	                            <strong>문의</strong>
	                        </a>
	                    </li>
	                    
	                </ul>
	                <div class="tab-content">
	                    <div id="tab1" class="tab-pane in active" role="tabpanel">
	                        <div class="row">
	                            <div class="col-md-12">
	                                <p class="mbr-text mbr-fonts-style display-7">
	                                    
	                                    <!-- 강의 소개 -->
	                                </p>
	                                
	                                
	                                
	                                
	                                <div class="container">
								        <div class="row justify-content-center">
								            <div class="card col-12 col-lg">
								                <div class="card-wrapper">
								                    <h6 class="card-title mbr-fonts-style mb-4 display-5">
								                        <strong>${ classOne.class_nm }</strong>
								                    </h6>
								                    <p class="mbr-text mbr-fonts-style display-7">
								                        ${ classOne.class_sub }

													</p>
								                    <div class="mbr-section-btn">
								                    	<a class="btn btn-success display-4" href="javascript:openpop()">Show Class</a>
								                    </div>
								                </div>
								            </div>
								            <script type="text/javascript">
												function openpop(){
													open("classvideo","popup", "width=1300, height=600, top=200, left=300");
												}
											</script>
								            
								            
								            
								            <div class="col-12 col-lg-6">
								                <div class="image-wrapper">
								                    <img src="<%=application.getContextPath()%>/resources/images/class/${ classOne.class_thum}" alt="Mobirise">
								                </div>
								            </div>
								        </div>
								    </div>
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                            </div>
	                        </div>
	                    </div>
	                    <div id="tab2" class="tab-pane" role="tabpanel">
	                        <div class="row">
	                            <div class="col-md-12">
	                                <p class="mbr-text mbr-fonts-style display-7">
	                              		<!--  커리큘럼 -->
	                                    
	                                </p>
	                                
	                                
	                                <div class="container">
								        <h2 class="mbr-section-title pb-3 mbr-fonts-style align-center display-5"><strong>
								            curr</strong></h2>
								        <h3 class="mbr-section-subtitle pb-5 mbr-fonts-style align-center display-5">
								            Lorem ipsum dolor sit amet, consectetur adipisicing elit
								        </h3>
								        <div class="media-container-row">
								            <div class="media-block" style="width: 49%;">
								                <div class="mbr-figure">
								                    <img src="assets/images/background6.jpg">
								                </div>
								            </div>
								            <div class="step-container">
								                <div class="card separline pb-4">
								                    <div class="step-element d-flex">
								                        <div class="step-wrapper pr-3">
								                            <div class="step d-flex align-items-center justify-content-center">
								                                1
								                            </div>
								                        </div>          
								                        <div class="step-text-content">
								                            <h4 class="mbr-step-title pb-3 mbr-fonts-style display-5">
								                            	Specification
								                            </h4>
								                            <p class="mbr-step-text mbr-fonts-style display-7">
<%-- 								                                ${ classOne.class_curr } --%>
								                            </p>
								                        </div>
								                    </div>
								                </div>
								
								                <div class="card separline pb-4">
								                    <div class="step-element d-flex">
								                        <div class="step-wrapper pr-3">
								                            <div class="step d-flex align-items-center justify-content-center">
								                                2
								                            </div>
								                        </div>          
								                        <div class="step-text-content">
								                            <h4 class="mbr-step-title pb-3 mbr-fonts-style display-5">Project Planning</h4>
								                            <p class="mbr-step-text mbr-fonts-style display-7">
								                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam erat libero, bibendum in libero tempor, luctus volutpat ligula. Integer fringilla porttitor pretium.</p>
								                        </div>
								                    </div>
								                </div>
								
								                <div class="card">
								                    <div class="step-element d-flex">
								                        <div class="step-wrapper pr-3">
								                            <div class="step d-flex align-items-center justify-content-center">
								                                3
								                            </div>
								                        </div>          
								                        <div class="step-text-content">
								                            <h4 class="mbr-step-title pb-3 mbr-fonts-style display-5">Deployment
								                            </h4>
								                            <p class="mbr-step-text mbr-fonts-style display-7">
								                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam erat libero, bibendum in libero tempor, luctus volutpat ligula. Integer fringilla porttitor pretium.</p>
								                        </div>
								                    </div>
								                </div>
								
								                
								
								                
								
								                
								
								                
								
								                
								
								                
								            </div>
								        </div>
								    </div>
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                            </div>
	                        </div>
	                    </div>
	                    <div id="tab3" class="tab-pane" role="tabpanel">
	                        <div class="row">
	                            <div class="col-md-12">
	                                <p class="mbr-text mbr-fonts-style display-7">
	                                   
	                                   <!-- 강사설명 -->
	                                   
	                                    
	                                   
	                                </p>
	                                
	                                
	                                
	                                <div class="container">
								        <div class="media-container-row">
								            <div class="title col-12 align-center">
								                <h2 class="pb-3 mbr-fonts-style display-5"><strong>
								                    Tutor Detail</strong></h2>
								                <h3 class="mbr-section-subtitle mbr-light pb-3 mbr-fonts-style display-5">
								                    This theme is based on Bootstrap 4 - most powerful mobile first framework
								                </h3>
								            </div>
								        </div>
								    </div>
								
								    <div class="container pt-3 mt-2">
								        <div class="media-container-row">
								            <div class="mbr-testimonial p-3 align-center col-12 col-md-6">
								                <div class="panel-item p-3">
								                    <div class="card-block">
								                        <div class="testimonial-photo">
								                            <img src="assets/images/face1.jpg">
								                        </div>
								                        <p class="mbr-text mbr-fonts-style display-7">
								                           Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, aspernatur, voluptatibus, atque, tempore molestiae.
								                        </p>
								                    </div>
								                    <div class="card-footer">
								                        <div class="mbr-author-name mbr-bold mbr-fonts-style display-7">
								                             John Smith
								                        </div>
								                        <small class="mbr-author-desc mbr-italic mbr-light mbr-fonts-style display-7">
								                               Developer
								                        </small>
								                    </div>
								                </div>
								            </div>
								
								            
								
								            
								
								            
								
								            
								
								            
								        </div>
								    </div>   
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                                
	                            </div>
	                        </div>
	                    </div>
	                    <div id="tab4" class="tab-pane" role="tabpanel">
	                        <div class="row">
	                            <div class="col-md-12">
	                                <p class="mbr-text mbr-fonts-style display-7">
	                                    <!-- 후기 -->
									</p>
									
									
									
									<div class="container">
								        <h3 class="mbr-section-title mbr-fonts-style align-center mb-4 display-5">
								            <strong>reviews</strong></h3>
								        <div class="row justify-content-center">
								            <div class="card col-12 col-md-6">
								                <p class="mbr-text mbr-fonts-style mb-4 display-7">Themes in the Mobirise website builder offer multiple blocks: intros, sliders, galleries, forms, articles, and so on. Start a project and click on the red plus buttons to see the blocks available for your theme.</p>
								                <div class="d-flex mb-md-0 mb-4">
								                    <div class="image-wrapper">
								                        <img src="assets/images/team1.jpg" alt="Mobirise">
								                    </div>
								                    <div class="text-wrapper">
								                        <p class="name mbr-fonts-style mb-1 display-4">
								                            <strong>Martin Smith</strong>
								                        </p>
								                        <p class="position mbr-fonts-style display-4">
								                            <strong>Client</strong>
								                        </p>
								                    </div>
								                </div>
								            </div>
								            <div class="card col-12 col-md-6">
								                <p class="mbr-text mbr-fonts-style mb-4 display-7">You can have multiple pages in each project in Mobirise website builder software. Don't forget to set links to your pages after creating them. You can use menu blocks to create navigation for your site visitors.</p>
								                <div class="d-flex mb-md-0 mb-4">
								                    <div class="image-wrapper">
								                        <img src="assets/images/team2.jpg" alt="Mobirise">
								                    </div>
								                    <div class="text-wrapper">
								                        <p class="name mbr-fonts-style mb-1 display-4">
								                            <strong>Jessica Brown</strong>
								                        </p>
								                        <p class="position mbr-fonts-style display-4">
								                            <strong>Client</strong>
								                        </p>
								                    </div>
								                </div>
								            </div>
								        </div>
								    </div>
									
									
									
									
									
									
									
									
									
									
	                            </div>
	                        </div>
	                    </div>
	                    <div id="tab5" class="tab-pane" role="tabpanel">
	                        <div class="row">
	                            <div class="col-md-12">
	                                <p class="mbr-text mbr-fonts-style display-7">
	                                    <!-- 강의 문의 -->
									</p>
									
									
									<div class="container">
								        <div class="mbr-section-head">
								            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-5"><strong>class QA</strong></h3>
								            
								        </div>
								        <div class="row justify-content-center mt-4">
								            <div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
								                <form action="" method="POST" class="mbr-form form-with-styler mx-auto" data-form-title="Form Name"><input type="hidden" name="email" data-form-email="true" value="JARFjkw3m2gJpaVnqU3mmcOaQJeIHQdqYdtpb0ASm3L6laY9m5jF82+gKIWQUX0i5P5qBWvFL5h4L9TkGHqYzi/D8+VqYXuw+4RTLTdW1Pla+f6u06XFWQBPCRGdxgO/">
								                    <div class="">
								                        <div hidden="hidden" data-form-alert="" class="alert alert-success col-12">Thanks for filling out the form!</div>
								                        <div hidden="hidden" data-form-alert-danger="" class="alert alert-danger col-12">Oops...! some problem!</div>
								                    </div>
								                    <div class="dragArea row">
								                        <div class="col-lg-4 col-md-12 col-sm-12 form-group" data-for="name">
								                            <input type="text" name="name" placeholder="Name" data-form-field="name" class="form-control" value="" id="name-form8-40">
								                        </div>
								                        <div class="col-lg-4 col-md-12 col-sm-12 form-group" data-for="email">
								                            <input type="email" name="email" placeholder="Email" data-form-field="email" class="form-control" value="" id="email-form8-40">
								                        </div>
								                        <div class="col-lg-4 col-md-12 col-sm-12 mbr-section-btn align-center"><button type="submit" class="btn btn-success display-4">Submit</button></div>
								                    </div>
								                </form>
								            </div>
								        </div>
								    </div>
									
									
									
									
									
									
									
									
									
									
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
	  <style type="text/css">
	  
	  	img {
	  	  width: 100%;
	  	 
	  	}
  
  	</style>
</body>
</html>