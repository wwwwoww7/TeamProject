<%@ page import="java.util.*"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 

<!DOCTYPE html>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v5.2.0, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" type="image/x-icon">
  <meta name="description" content="Site Creator Description">
  
  
  <title>BanSook</title>
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
  
  
  <style type="text/css">
  
 		.star-box, .star-box *{margin:0; padding:0;}
		.star{
		  display:inline-block;
		  width: 15px; height: 30px;
		  cursor: pointer;
		}
		.star_left{
		  background: url(http://gahyun.wooga.kr/main/img/testImg/star.png) no-repeat 0 0; 
		  background-size: 30px; 
		  margin-right: -3px;
		}
		.star_right{
		  background: url(http://gahyun.wooga.kr/main/img/testImg/star.png) no-repeat -12.5px 0; 
		  background-size: 30px; 
		  margin-left: -3px;
		}
		.star.on{
		  background-image: url(http://gahyun.wooga.kr/main/img/testImg/star_on.png);
		}
  
  </style>
</head>
<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>

	<section class="tabs content18 cid-shfqnnLy7B" id="tabs1-3u">

    
	    <div class="container">
	        <div class="row justify-content-center">
	            <div class="col-12 col-md-8">
	                <h3 class="mbr-section-title mb-0 mbr-fonts-style display-2">
	               	 <strong>${ classOne.class_nm_s }</strong>
	                </h3>
	            </div>
	        </div>
	        <div class="row justify-content-center">
	            <div class="col-12 col-md-8">
	                <h4 class="mbr-section-title mb-0 mbr-fonts-style display-4">
	                
	                <script type="text/javascript">
	                	var star =  Math.ceil(${classOne.review_star} *2 ) / 2;
	                </script>
	                
	              	 	<strong id="star_avg"> Rating  </strong>
	               		<div class="star-box">
							  <span class="star star_left"></span>
							  <span class="star star_right"></span>
							
							  <span class="star star_left"></span>
							  <span class="star star_right"></span>
							
							  <span class="star star_left"></span>
							  <span class="star star_right"></span>
							
							 <span class="star star_left"></span>
							 <span class="star star_right"></span>
							
							 <span class="star star_left"></span>
							 <span class="star star_right"></span>
						</div>
	                	
	                
	                </h4>
	               		
	            </div>
	        </div>
	        
	        <div class="row">
	        	<div class="col-sm-9"></div>
	        	<div class="col-sm-3">
	        		 <div class="mbr-section-btn">
		               	<a class="btn item-btn btn-warning display-4" href="javascript:putt()">장바구니 담기</a>
		             </div>
			         <script type="text/javascript">
						function putt(){
							var result = confirm("장바구니에 담으시겠습니까?");
							if(result){
								location.href="<%=application.getContextPath()%>/cart/pick_cl?classNo=${classOne.class_no}";
							}
						}
					</script>
	        	</div>
	        </div>
	        
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
								                 	   버튼 강의 구매자에게만 보여야 함..
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
								        <h2 class="mbr-section-title pb-3 mbr-fonts-style align-center display-5">
								        <strong>Curriculum</strong></h2>
								        <h3 class="mbr-section-subtitle pb-5 mbr-fonts-style align-center display-7">
								           	클래스를 신청하신 분들이 배우고 있는 커리큘럼입니다. <br/> 콘텐츠는 배우기 쉽게 영상, 수업노트, 첨부파일로 구성되어있습니다.
								        </h3>
								        <div class="media-container-row">
								        	<div class="container-fluid">
								        	
								        	
								        		<div class="row">
								        		
								        			<div class="col-md-6">
								        				<div class="media-block" >
											                <div class="mbr-figure">
											                    <img src="<%=application.getContextPath()%>/resources/assets/images/background6.jpg">
											                </div>
											            </div>
								        				
								        			</div>
								        			<div class="col-md-6">
								        			
								        				 <div class="step-container">
									            
											            <!-- 커리큘럼 시작 -->
											            
												            ${ classOne.class_curr}
												                
												            ${ classOne.class_curr2}
												                
												            ${ classOne.class_curr3}
			
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
								                <h2 class="pb-3 mbr-fonts-style display-5">
								                	<strong> Tutor Detail</strong>
								                </h2>
								                <h3 class="mbr-section-subtitle mbr-light pb-3 mbr-fonts-style display-5">
								                    	크리에이터  ${ tutorInfo.mnick } 입니다.
								                </h3>
								            </div>
								        </div>
								    </div>
								
								    <div class="container pt-3 mt-2">
								        <div class="media-container-row">
								            <div class="mbr-testimonial p-3 align-center col-12 col-md-7">
								                <div class="panel-item p-3">
								                    <div class="card-block">
								                        <div class="testimonial-photo">
								                            <img src="<%=application.getContextPath()%>/resources/profile/${tutorInfo.mpro_img}" class="rounded-circle" alt=" ${ tutorInfo.mnick }">
								                        </div>
								                        <p class="mbr-text mbr-fonts-style display-7">
								                        	${tutorInfo.minfo}
								                        </p>
								                        <br/>
								                        <c:if test="${fn:length(classList) > 1 }">
								                        	<div>
							                           			 <h5 class="pb-3 mbr-fonts-style display-7" id="tutoring_title">진행중 다른 강의</h5>
																<ul>
																	<c:forEach var="classItem" items="${classList}">
																		
																		<c:if test="${classItem.class_no != classOne.class_no }">
																			<li class="text-left">
																				<a href="<%=request.getContextPath()%>/class/classdetail?classNo=${classItem.class_no }" class="test-black">
																					${classItem.class_nm_s}
																				</a>
																			</li>
																		
																		</c:if>
																	
																	</c:forEach>
																	
																</ul>

								                        	</div>
								                        
								                        
								                        </c:if>
							                          
								                        
								                        
								                    </div>
								                    <div class="card-footer">
								                        <div class="mbr-author-name mbr-bold mbr-fonts-style display-7">
								                             ${ tutorInfo.mnick }
								                        </div>
								                        
								                        <small class="mbr-author-desc mbr-italic mbr-light mbr-fonts-style display-7">
								                              ${ tutorInfo.memail }
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
								            <strong>Reviews</strong></h3>
								        <div class="row justify-content-center">
								            
								            
								            <c:forEach var="review" items="${reviewList}">
								            	<div class="card col-12 col-md-6">
									                <p class="mbr-text mbr-fonts-style mb-4 display-7">
									                	<strong>${review.review_title }</strong>
									                	<br/>
									                	${review.review_content }
									                </p>
									                <div class="d-flex mb-md-0 mb-4">
									                    <div class="image-wrapper">
									                        <img id="" width="50px" height="50px" class="rounded-circle mr-2 prof_img" 
									                        	src="<%=application.getContextPath()%>/resources/profile/${review.mpro_img }" >
									                    </div>
									                    <div class="text-wrapper">
									                        <p class="name mbr-fonts-style mb-1 display-4">
									                            <strong>${review.mnick }</strong>
									                        </p>
									                        <p class="position mbr-fonts-style display-4">
									                            <strong><fmt:formatDate value="${review.review_date }" pattern="yyyy-MM-dd"/></strong>
									                        </p>
									                    </div>
									                </div>
									            </div>
								            
								            
								            </c:forEach>
								            
								            
								            
								            
								            
								            
								            
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
								                        <div class="col-lg-4 col-md-12 col-sm-12 mbr-section-btn align-center">
								                      	  <button type="submit" class="btn btn-success display-4">Submit</button>
								                        </div>
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
	  	
	  	.prof_img{
	  		width: 50px;
	  		height : 50px;
	  	}
	  	
	  	.test-black {
	  		color:black;
	  	}	
	  	.test-black:hover {
	  		color: #FFC800;
	  	}
	  	
	  	#tutoring_title {
	  	  font-family : 'NanumSquareRoundEB', sans-serif; 
		  font-display: swap;
	  	}
	  	
  		#star_avg {
  			font-style: italic;
  		}
  	</style>
  	
  	<script type="text/javascript"> 
  	
  		var star = Math.ceil(${classOne.review_star} *2 ) / 2; 
  		
  		console.log(star);
  		
  		for(var i=0; i<star*2; i++){
	        $(".star").eq(i).addClass("on");
	     }
     </script>
</body>
</html>