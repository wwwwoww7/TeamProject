<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
					<strong style="color: #ffc800;">공지사항</strong><br />
					<br />
				</h3>
			</div>
	</section>
	<!-- 공지사항 -->
	<section class="section-table cid-shfdiSEq9c" id="table1-2l">
		<div class="container container-table">
			<!-- <h2
				class="mbr-section-title mbr-fonts-style align-center pb-3 display-5">
				<strong>공지사항</strong>
			</h2> -->

			<div class="table-wrapper">
				<div class="container"></div>

				<div id="tutorNotice" class="container table-info-container">
					<input type="hidden" id="class_notice_no" name="class_notice_no" value="${notice.class_notice_no}"/>
					<div class="row justify-content-center mt-4">
						<div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
							<form onsubmit="return writeCheck();" action="noticeWrite" method="POST" id="noticeWrite" class="mbr-form form-with-styler" enctype="multipart/form-data">
								<div class="dragArea row" style="margin: 5px">
									<div class="col-md-6 input-group">
										<span class="input-group-text" style="width: 30%; background-color: #ffff;">강 의 선 택</span> 
										<select id="class_no" name="class_no" style="width: 70%; display: inline;" >
											<c:forEach var="className" items="${classNames}">
												<option value="${className.class_no}" selected>${className.class_nm_s}</option>
											</c:forEach>
										</select>
									</div>
									<div class="col-md-6 input-group">
										<span class="input-group-text" style="width: 100px; background-color: #ffff;">작 성 자 </span> 
										<input type="text" id="mid" name="mid" class="form-control" value="${sessionMid}" readonly/>
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px;">
									
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 100px; background-color: #ffff;">제	목</span> 
										<input type="text" id="class_notice_title" name="class_notice_title" class="form-control"/>>
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px">
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 100px; background-color: #ffff;">첨부파일</span> 
										<input type="file" id="class_hwFile" name="class_hwFile" class="form-control"/>
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px">
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 100px; background-color: #ffff; text-align: center;">내	용 </span> 
										<textarea id="class_notice_content" name="class_notice_content" class="form-control" 
											style="height: 250px;"></textarea>
									</div>
								</div>
								<div class="dragArea row">
									<div class="col-md-3"></div>
									<div class="col-md-3">
										<input type="submit" class="btn item-btn btn-success display-7 text-primary" style="margin-left: 5px;" value="글쓰기"/>
										<script type="text/javascript">
											function writeCheck() {

												var ntitle = $("#class_notice_title").val();
												if(ntitle == "") { 
													
													alert("제목을 입력해주세요");
													$("#class_notice_title").focus();
													return false;
												}
												
												
												var ncontent = $("#class_notice_content").val();
												if(ncontent == "") {
													alert("내용을 입력해주세요");
													$("#class_notice_content").focus();
													return false;
												}
												else{
													$("#noticeWrite").writeCheck();
												}
												return true;

											}
											
										</script>		
									</div>
									<div class="col-md-3">
										<a class="btn item-btn btn-success display-7 text-primary" href="<%=request.getContextPath()%>/mypage/mypage_tutor?mid=${sessionMid}">취소</a>
									</div>
									<div class="col-md-3"></div>
								</div>
							</form>
						</div>
					</div>
				
				</div>
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
	
	<script type="text/javascript">
		$(function(){
			$("#class_no").show();
		});
	</script>
	</body>
</html>		