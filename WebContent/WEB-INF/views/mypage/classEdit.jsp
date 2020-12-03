<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<jsp:include page="/WEB-INF/views/include/userEditheader.jsp" />
		<section class="testimonails3 carousel slide testimonials-slider cid-sh9WSPbYRc"
				data-interval="false" id="testimonials3-1e">
			<div class="text-center container-fluid">
				<h3 class="mb-4 mbr-fonts-style display-2">
				<strong style="color: #ffc800;">강의정보수정</strong>
				<br/><br/>
				</h3>
			</div>
		</section>
		<div class="row justify-content-center mt-4">
			<div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
				<form  action="<%=request.getContextPath() %>/email/classEdit" method="POST" class="mbr-form form-with-styler" id="classeditform">
					<div class="dragArea row" style=" margin: 5px">
						<input type="hidden" id="class_no" name="class_no" value="${classOne.class_no}"/>
						<input type="hidden" id="tutor_id" name="tutor_id" value="${classOne.tutor_id}"/>
						
						<div class="col-md-12 input-group">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">강의명</span> 
							<input type="text" id="class_nm_s" name="class_nm_s" class="form-control" value="${classOne.class_nm_s}" />
						</div>
						
						<div class="col-md-12 input-group">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">소강의명</span> 
							<input type="text" id="class_nm" name="class_nm" class="form-control" value="${classOne.class_nm}" />
						</div>
						
						<div class="col-md-12 input-group" data-for="mpw">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">강의 소개</span> 
							<input type="textarea" id="class_sub" name="class_sub" style="word-break:break-all;" rows="5" cols="100" value="${classOne.class_sub}"/>
						
						</div>
						<div class="col-md-12 input-group" data-for="mname">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">커리큘럼</span> 
							<input type="textarea" id="class_curr" name="class_curr" style="word-break:break-all;" rows="7" cols="100" value="${classOne.class_curr}"/>
						</div>
						
						<!--  일단 썸네일은 바꾸지 마!! -->
						<%-- <div class="col-md-12 input-group" data-for="mphotoAttach">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">썸네일 선택</span>
							<input type="file" id="class_thum" name="cphotoAttach" class="form-control" value="${classOne.class_thum}" onchange="loadFile(event)"/>
						</div>
											
						<div class="col-md-12 input-group" data-for="mphoto">
							<span class="input-group-text" style="width: 120px; background-color: #ffff;">썸네일 이미지</span>
							<img  class="rounded-circle" id="id_mphoto" class="max-small" border="0" src="<%=application.getContextPath()%>/resources/images/class"/>
						</div> --%>
					</div>
					
					<div style="height: 60px;"></div>
					<div class="col-lg-12 col-md-12 col-sm-12 align-center mbr-section-btn">
	
						<input type="submit" class="btn item-btn btn-success display-7 text-primary" style="margin: 10px;" value="수정완료"/>
						<input type="reset" class="btn item-btn btn-success display-7 text-primary" style="margin: 10px;" value="취소"/>
				
					</div>
				</form>

				<div style="height: 100px;"></div>
			</div>
		</div>
	
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
	</body>

</html>