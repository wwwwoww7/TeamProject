<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- <input type="hidden" id="notice" name="notice" value="${notice}"/> --%>
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
			<h2
				class="mbr-section-title mbr-fonts-style align-center pb-3 display-5">
				<strong>공지사항</strong>
			</h2>

			<div class="table-wrapper">
				<div class="container"></div>
	
				<div id="tutorNotice" class="container table-info-container">
					<div>
						<table class="table table-bordered">
							<colgroup>
							    <col width="15%">
							    <col width="35%">
							    <col width="15%">
							    <col width="*">
							</colgroup>
							<tbody>
							    <tr>
							        <th>강의명</th>
							        <td>${notice.class_nm_s}</td>
							        <th>제목</th>
							        <td>${notice.class_notice_title}</td>
							    </tr>
							    <tr>
							        <th>작성자</th>
							        <td>${notice.mid}</td>
							        <th>작성시간</th>
							        <td><span><fmt:formatDate value="${notice.class_notice_date}" pattern="yyyy-MM-dd"/></span></td>
							    </tr>
							    <tr>
							        <th>첨부파일</th>
							        <td colspan="3">
							        	<c:forEach var="loadfile" items="${newUpload}">
							        		<a id="fileloc"href="download?fileName=${loadfile.class_hw_file}">${fn:split(loadfile.class_hw_file,'_')[1]}</a> <!-- 오리지날파일이름만 보이게 하기 -->
							        	</c:forEach>
							        </td>
							    </tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="container table-info-container">
					<div>
						<table class="table table-bordered">
							<colgroup>
							    <col width="15%">
							    <col width="35%">
							    <col width="15%">
							    <col width="*">
							</colgroup>
							<tbody>   
							    <tr>
							        <td style="padding: 20px 80px 20px 62px;" valign="top" height="350">${notice.class_notice_content}</td>
							    </tr>
							</tbody>
						</table>
						<br/>
						<input type="hidden" id="mid" name="mid" value="${notice.mid}"/>
					    <a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="<%=request.getContextPath()%>/mypage/mypage_tutor">목록으로</a>	
					    <a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="<%=request.getContextPath()%>/mypage/noticeUpdateForm?class_notice_no=${notice.class_notice_no}">수정</a>
						<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="<%=request.getContextPath()%>/mypage/noticeDelete?class_notice_no=${notice.class_notice_no}">삭제</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<input type="hidden" id="mid" name="mid" value="${sessionMid}"/>
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
			a {color: black;}
			a:hover {text-decoration: underline; color: #ffc800;}
		</style>
</body>
</html>