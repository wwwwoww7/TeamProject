<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
				<strong style="color: #ffc800;">회원정보수정</strong><br />
				<br />
			</h3>
			<%-- <div class="carousel slide" role="listbox" data-pause="true"
				data-keyboard="false" data-ride="false" data-interval="false">
				<div class="carousel-inner">
					<div class="carousel-item">
						<div class="user col-md-8">
							<div class="user_image">
								<img
									src="<%=application.getContextPath()%>/resources/assets/images/team3.jpg">
							</div>
							<div class="user_text mb-4">
								<p class="mbr-fonts-style display-5">닉네임</p>
							</div>
						</div>
					</div>
				</div>
			</div> --%>
		</div>
	</section>

		  <div class="row justify-content-center mt-4">
            <div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
                <form action="https://mobirise.eu/" method="POST" class="mbr-form form-with-styler" data-form-title="Form Name"><input type="hidden" name="email" data-form-email="true" value="YRLmS4KZ0lm+LGcWpuQxcNhFGHeSKkKc9ZhO4WBjl2aHqN64gamoCJiP4CGbZwZQuGVoS64mN03L7afuau3fpLE5TrAgTCYwLjHR3mHg4eWPPiHA+XM1HRhhv7MbytXn">
                    <div class="">
                        <div hidden="hidden" data-form-alert="" class="alert alert-success col-12">Thanks for filling out
                            the form!</div>
                        <div hidden="hidden" data-form-alert-danger="" class="alert alert-danger col-12">Oops...! some
                            problem!</div>
                    </div>
                    <div class="dragArea row">
                    	
                        <div class="col-md-12 input-group" data-for="mid">
                    		<span class="input-group-addon" style="width:80px;">아 이 디</span>
                          	<input type="text" name="mid" placeholder="ID" data-form-field="mid" class="form-control" value="" id="id-form5-29">
                        </div>
                        <div class="col-md-12 input-group" data-for="mpw">
                    		<span class="input-group-addon" style="width:80px;">비 밀 번 호 </span>
                          	<input type="password" name="mpw" placeholder="PASSWORD" data-form-field="mpw" class="form-control" value="" id="password-form5-29">
                        </div>
                        <div class="col-md-12 input-group" data-for="mname">
                    		<span class="input-group-addon" style="width:80px;">이 름</span>
                          	<input type="text" name="mname" placeholder="NAME" data-form-field="mname" class="form-control" value="" id="name-form5-29">
                        </div>
                        <div class="col-md-12 input-group" data-for="mnick">
                    		<span class="input-group-addon" style="width:80px;">닉 네 임 </span>
                          	<input type="password" name="mpw" placeholder="NICKNAME" data-form-field="mnick" class="form-control" value="" id="nickname-form5-29">
                        </div>
                        <div class="col-md-12 input-group" data-for="mtel">
                    		<span class="input-group-addon" style="width:80px;">핸드폰번호</span>
                          	<input type="text" name="mtel" placeholder="010-xxxx-xxxx" data-form-field="mtel" class="form-control" value="" id="tel-form5-29">
                        </div>
                        <div class="col-md-12 input-group" data-for="memail">
                    		<span class="input-group-addon" style="width:80px;">이 메 일</span>
                          	<input type="text" name="mtel" placeholder="xxx@xxxx.xxx" data-form-field="memail" class="form-control" value="" id="email-form5-29">
                        </div>
                      
                        <div class="col-md-12 input-group" data-for="mphotoAttach">
							<span class="input-group-addon" style="width:80px;">프로필사진</span>     
							<input type="file" name="mphotoAttach" class="form-control">
						</div>
						
                        <div class="col-lg-12 col-md-12 col-sm-12 align-center mbr-section-btn">
	                        <%-- <c:if test=""> <!-- 일반사용자일 경우 --> --%>
	                        	<a class="btn" style="margin: 10px; background-color: #ffc800;" href="mypage_user">수정완료</a>
	                        	<a class="btn" style="margin: 10px; background-color: #ffc800;" href="mypage_user">취소</a>
	                       <%-- 	</c:if>
                        	<c:if test=""> <!-- 튜터의 경우 --> --%>
                        	<a class="btn" style="margin: 10px; background-color: #ffc800;" href="mypage_tutor">수정완료</a>
                        	<a class="btn" style="margin: 10px; background-color: #ffc800;" href="mypage_tutor">취소</a>
                       	<%-- </c:if> --%>
                        </div>
                    </div>
                </form>
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