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
  
  <title>my page</title>
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

	<jsp:include page="/WEB-INF/views/include/mypageheader.jsp" />

	<section
		class="testimonails3 carousel slide testimonials-slider cid-sh9WSPbYRc"
		data-interval="false" id="testimonials3-1e">
		<div class="text-center container-fluid">
			<h3 class="mb-4 mbr-fonts-style display-2">
				<strong style="color: #ffc800;">강의 관리</strong><br />
				<br />
			</h3>
			<div class="carousel slide" role="listbox" data-pause="true"
				data-keyboard="false" data-ride="false" data-interval="false">
				<div class="carousel-inner">
					<div class="carousel-item">
						<div class="user col-md-8">
							<div class="user_image">
								<a href="userEdit?mid=${sessionMid}">
									<img class="rounded-circle" style="border: 4px solid #ffc800;"src="<%=application.getContextPath()%>/mypage/myphotoDownload">
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

	<!--  나의 강의  -->
	<section class="gallery5 mbr-gallery cid-shfdgokGZw" id="gallery5-2k">
		<div class="container">
			<section class="features3 cid-sh7HNKMuDe" id="features3-g">
				<h3 class="mbr-fonts-style align-center m-0 display-5">
					<strong>나의 강의</strong>
				</h3>
				<hr style="background-color: #ffc800; height:2px;">
				<div class="container p-0">
	        	<div class="row mt-4">
	        		<fmt:parseNumber var="listlength" value="${fn:length(tutorclassList)/4}" integerOnly="true" />
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
										<fmt:parseNumber var="endvalue" value="${fn:length(tutorclassList)}" integerOnly="true" />
									</c:if>
									<c:if test="${!status.last}">
										<fmt:parseNumber var="endvalue" value="${startvalue+3}" integerOnly="true" />
									</c:if>
									
									<c:forEach var="classes" items="${tutorclassList}" begin="${startvalue}" end="${endvalue}">
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
	<section class="section-table cid-shfdiSEq9c" id="table1-2l">
		<div class="container container-table">
			<h2
				class="mbr-section-title mbr-fonts-style align-center display-5">
				<strong>공지사항</strong>
			</h2>
			<hr style="background-color: #ffc800; height:2px;">	
			<div class="table-wrapper">
			<%-- <div class="dropdown"  style="display: inline-block;">
				<button id="cateselect" align="right" type="button" class="btn btn-primary dropdown-toggle " data-toggle="dropdown">전체</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="javascript:tutorClassNotice(1,${sessionMid})">전체</a>
					<c:forEach var="classList" items="${tutorclassList}">
						<a class="dropdown-item" href="javascript:catereview(${classList.class_no})">${classList.class_nm_s}</a>
					</c:forEach>
				</div>
			</div>	 --%>
				<div class="container"></div>

				<div id="tutorNotice" class="container table-info-container"></div>
			</div>
		</div>
	</section>

	<section class="section-table cid-shfdjfFbld" id="table1-2m">

		<div class="container container-table">
			<h2
				class="mbr-section-title mbr-fonts-style align-center display-5">
				<strong>강의 문의</strong>
			</h2>
			<hr style="background-color: #ffc800; height:2px;">
			<div class="table-wrapper">
				<div class="container"></div>

				<div id="tutorClassQA" class="container scroll"></div>
				
				<div class="container table-info-container"></div>
			</div>
		</div>
	</section>

	<jsp:include page="/WEB-INF/views/include/footer.jsp" />

	<script
		src="<%=application.getContextPath()%>/resources/assets/web/assets/jquery/jquery.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/popper/popper.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/tether/tether.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/smoothscroll/smooth-scroll.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/dropdown/js/nav-dropdown.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/dropdown/js/navbar-dropdown.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/touchswipe/jquery.touch-swipe.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/parallax/jarallax.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/masonry/masonry.pkgd.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/imagesloaded/imagesloaded.pkgd.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/theme/js/script.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/gallery/player.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/gallery/script.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/slidervideo/script.js"></script>
		 
	 <style type="text/css">
	 	.w-100 {
			width: 100%;
		  	height: 100%;
		  	height: 170px;
		  	object-fit: cover;
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
		
		@media screen and (max-width: 768px){ 
			.table #no {
				display: none;
			}
			.table #noTD {
				display: none;
			}	
			.table #qaMid {
				display: none;
			}
			.table #qaMidTD {
				display: none;
			}
			.display-7 {
				font-size: 15px;
			}		
		}
		
		@media screen and (max-width: 576px){ 
			.table #noticeDate {
				display: none;
			}
			.table #noticeDateTD {
				display: none;
			}	
			.table #qaDate {
				display: none;
			}
			.table #qaDateTD {
				display: none;
			}
			.display-7 {
				font-size: 12px;
			}		
		}
	 </style>
	<script type="text/javascript">
		/* 공지사항 */
	
		function tutorClassNotice(pageNo){
			if(!pageNo){ //페이지수가 0이면 기본값으로 1로 줌
				pageNo =1;
			}
			$.ajax({
				url:"tutorClassNotice",
				method: "post",
				data:{pageNo:pageNo},
				success: function(data){
						$("#tutorNotice").html(data);
					}
		
				});
			}
	    	     
		/*강의문의*/
	   function tutorClassQA(pageNo){
		   if(!pageNo){ 
				pageNo =1;
			}
			$.ajax({
				url:"tutorClassQA",
				method: "POST",
				data:{pageNo:pageNo},
				success: function(data){
						$("#tutorClassQA").html(data);
					}
	
				});
			
			}
	
	   		$(function(){
	    	  	tutorClassNotice(1);
	   	   		tutorClassQA(1);
		   	   	$("#demo > ul > li:nth-child(1)").addClass("active");
				$(".carousel-inner div:nth-child(1)").addClass("active");
	      	}); 
	</script>
	<style type="text/css">
			a {color: black;}
			a:hover {text-decoration: underline; color: #ffc800;}
	</style>
</body>
</html>