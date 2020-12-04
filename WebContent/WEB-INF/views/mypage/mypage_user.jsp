<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html  >
<head>
  <!-- Site made with Mobirise Website Builder v5.2.0, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" type="image/x-icon">
  <meta name="description" content="Web Page Generator Description">
  
  <title>mypage</title>
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
  
	<jsp:include page="/WEB-INF/views/include/mypageheader.jsp"/>

	<section class="testimonails3 carousel slide testimonials-slider cid-sh9WSPbYRc" data-interval="false" id="testimonials3-1e">
	    <div class="text-center container-fluid">
	    	<h3 class="mb-4 mbr-fonts-style display-2">
	    		<strong style="color:#ffc800;">My Page</strong><br/><br/>
	    	</h3>
	        <div class="carousel slide" role="listbox" data-pause="true" data-keyboard="false" data-ride="false" data-interval="false">
				<div class="carousel-inner">
					<div class="carousel-item">
						<div class="user col-md-8">
							<div class="user_image">
								<a href="userEdit?mid=${sessionMid}">
									<img class="rounded-circle" style="border: 4px solid #ffc800;" src="<%=application.getContextPath()%>/mypage/myphotoDownload">
								</a>
							</div>
							<div class="user_text mb-4">
								<p class="mbr-fonts-style display-5">${memberInfo.mnick}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
	    </div>
	</section>

<section class="gallery5 mbr-gallery cid-shfcpp8srP" id="gallery5-2f">  
    <div class="container">
	    <section class="features3 cid-sh7HNKMuDe" id="features3-g">
			<h3 class="mbr-fonts-style align-center m-0 display-5">
				<strong>나의 강의</strong>
			</h3>
<%-- 			<div class="container p-0">
	        	<div class="row mt-4">
	        		<fmt:parseNumber var="listlength" value="${fn:length(userclassList)/4}" integerOnly="true" />
	        		<div id="demo" class="carousel slide" data-ride="carousel">
						<ul class="carousel-indicators">
							<c:forEach var="i" begin="0" end="${listlength}">
								 <li data-target="#demo" data-slide-to="${i}"></li>
							</c:forEach>
					  	</ul>
						<div class="carousel-inner">
							<c:forEach var="j" begin="0" end="${listlength}" varStatus="status">
								<div class="carousel-item">
									<fmt:parseNumber var="startvalue" value="${j*4}" integerOnly="true" />
									<c:if test="${status.last}">
										<fmt:parseNumber var="endvalue" value="${fn:length(userclassList)}" integerOnly="true" />
									</c:if>
									<c:if test="${!status.last}">
										<fmt:parseNumber var="endvalue" value="${startvalue+3}" integerOnly="true" />
									</c:if>
									
									<c:forEach var="classes" items="${userclassList}" begin="${startvalue}" end="${endvalue}">
										<div class="col-12 col-md-6 col-lg-3 item gallery-image" style="display:inline-block;">
									        <div class="item-wrapper" data-toggle="modal" data-target="${classes.class_nm_s}">
									            <a href="<%=request.getContextPath()%>/class/classdetail?classNo=${classes.class_no}">
									            	<img class="w-100 rounded" src="<%=request.getContextPath() %>/resources/images/class/${classes.class_thum}" alt="" data-slide-to="0" data-target="${classes.class_nm_s}">
									            </a>
									            <div class="icon-wrapper"> <!-- 돋보기 -->
									                <span class="mobi-mbri mobi-mbri-search mbr-iconfont mbr-iconfont-btn"></span>
									            </div>
									        </div>
									        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
									           [ ${classes.class_cate_nm} ] 
									        </h6>
									        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
									        	${classes.class_nm_s} <a href="<%=request.getContextPath()%>/class/classdetail?classNo=${classes.class_no}" class="text-success">Try</a>
									        </h6>
									    </div>
									</c:forEach>
								</div>
							</c:forEach>
						</div>
					  <a class="carousel-control-prev" href="#demo" data-slide="prev">
					    <span class="carousel-control-prev-icon"></span>
					  </a>
					  <a class="carousel-control-next" href="#demo" data-slide="next">
					    <span class="carousel-control-next-icon"></span>
					  </a>
					</div> 
				</div>
	   		</div> --%>
			
			<div class="container">
	        	<div class="row mt-4">
	        	
					<c:forEach var="classes" items="${userclassList}">
						<div class="col-12 col-md-6 col-lg-3 item gallery-image">
					        <div class="item-wrapper" data-toggle="modal" data-target="${classes.class_nm_s}">
					            <a href="<%=request.getContextPath()%>/class/classdetail?classNo=${classes.class_no}">
					            	<img class="w-100" src="<%=request.getContextPath() %>/resources/images/class/${classes.class_thum}" alt="" data-slide-to="0" data-target="${classes.class_nm_s}">
					            </a>
					            <div class="icon-wrapper"> <!-- 돋보기 -->
					                <span class="mobi-mbri mobi-mbri-search mbr-iconfont mbr-iconfont-btn"></span>
					            </div>
					        </div>
					        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
					           [ ${classes.class_cate_nm} ]
					        </h6> 
					        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
					           ${classes.class_nm_s} <a href="<%=request.getContextPath()%>/class/classdetail?classNo=${classes.class_no}" class="text-success">Try</a>
					        </h6>
					    </div>
					</c:forEach>
				</div>
	   		</div>
		</section>
    </div>
</section>

<!-- 나의 찜 목록 -->
<section class="gallery5 mbr-gallery cid-shfcy6XY5o" id="gallery5-2h">
    <div class="container">
	    <section class="features3 cid-sh7HNKMuDe" id="features3-g">
			<h3 class="mbr-fonts-style align-center m-0 display-5">
				<strong>찜 목록</strong>
			</h3>
			<div class="container p-0">
	        	<div class="row mt-4">
	        		<fmt:parseNumber var="listlength" value="${fn:length(userPickList)/4}" integerOnly="true" />
	        		<div id="demo" class="carousel slide" data-ride="carousel">
						<ul class="carousel-indicators">
							<c:forEach var="i" begin="0" end="${listlength}">
								 <li data-target="#demo" data-slide-to="${i}"></li>
							</c:forEach>
					  	</ul>
						<div class="carousel-inner">
							<c:forEach var="j" begin="0" end="${listlength}" varStatus="status">
								<div class="carousel-item">
									<fmt:parseNumber var="startvalue" value="${j*4}" integerOnly="true" />
									<c:if test="${status.last}">
										<fmt:parseNumber var="endvalue" value="${fn:length(userPickList)}" integerOnly="true" />
									</c:if>
									<c:if test="${!status.last}">
										<fmt:parseNumber var="endvalue" value="${startvalue+3}" integerOnly="true" />
									</c:if>
									
									<c:forEach var="classes" items="${userPickList}" begin="${startvalue}" end="${endvalue}">
										<div class="col-12 col-md-6 col-lg-3 item gallery-image" style="display:inline-block;">
									        <div class="item-wrapper" data-toggle="modal" data-target="${classes.class_nm_s}">
									            <a href="<%=request.getContextPath()%>/class/classdetail?classNo=${classes.class_no}">
									            	<img class="w-100 rounded" src="<%=request.getContextPath() %>/resources/images/class/${classes.class_thum}" alt="" data-slide-to="0" data-target="${classes.class_nm_s}">
									            </a>
									            <div class="icon-wrapper"> <!-- 돋보기 -->
									                <span class="mobi-mbri mobi-mbri-search mbr-iconfont mbr-iconfont-btn"></span>
									            </div>
									        </div>
									        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
									           [ ${classes.class_cate_nm} ] 
									        </h6>
									        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
									        	${classes.class_nm_s} <a href="<%=request.getContextPath()%>/class/classdetail?classNo=${classes.class_no}" class="text-success">Try</a>
									        </h6>
									    </div>
									</c:forEach>
								</div>
							</c:forEach>
						</div>
					  <a class="carousel-control-prev" href="#demo" data-slide="prev">
					    <span class="carousel-control-prev-icon"></span>
					  </a>
					  <a class="carousel-control-next" href="#demo" data-slide="next">
					    <span class="carousel-control-next-icon"></span>
					  </a>
					</div> 
				</div>
	   		</div>
		</section>
    </div>
</section>


	<!-- 공지사항 -->
	<section class="section-table cid-shfdiSEq9c" id="table1-2g">
		<div class="container container-table">
			<h2
				class="mbr-section-title mbr-fonts-style align-center pb-3 display-5">
				<strong>공지사항</strong>
			</h2>

			<div class="table-wrapper">
				<div class="container"></div>

				<div id="userNotice" class="container table-info-container"></div>
			</div>
		</div>
	</section>

	<!-- 나의 문의 -->
	<section class="section-table cid-shfcHOKpqJ" id="table1-2i">
	  <div class="container container-table">
		<h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-5">
			<strong>강의 문의</strong>
		</h2>
		<div class="table-wrapper">
			<div class="container"></div>
			<div id="myqa" class="container scroll"></div>
			<div class="container table-info-container"></div>
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
	 	.w-100 {
			width: 100%;
		  	height: 100%;
		  	height: 170px;
		  	object-fit: cover;
		}
		.cid-sh7HNKMuDe .item-wrapper {
		    height: 80%;
		} 
		@media (min-width: 768px){
			.col-md-6 {
			    max-width: 49%;
			}
		}
		@media (min-width: 992px){
			.col-lg-3{
				max-width: 24%
			}
		
		}
		
	
	 </style>
  	 <script type="text/javascript">
  		/* 공지사항 */

		function userClassNotice(pageNo){
			if(!pageNo){ //페이지수가 0이면 기본값으로 1로 줌
				pageNo =1;
			}
			$.ajax({
				url:"userClassNotice",
				method: "post",
				data:{pageNo:pageNo},
				success: function(data){
						$("#userNotice").html(data);
					}
		
			});
		}
  	 
		function myQa(pageNo){
			$.ajax({
				url:"myQa",
				data:{pageNo:pageNo},
				success: function(data){
					$("#myqa").html(data);
				}
			});
		}
		
		$(function() {
			myQa(1);
			userClassNotice(1);
			$("#demo > ul > li:nth-child(1)").addClass("active");
			$(".carousel-inner div:nth-child(1)").addClass("active");
			
			
			/* $('html, body').animate({
				scrollTop: $('#gallery5-2h').offset().top
			}, 'slow'); */
		});

	</script> 
</body>
</html>