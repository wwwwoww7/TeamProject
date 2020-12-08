<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
  
  <title>EVENT REGISTERING</title>
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

	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<section
			class="testimonails3 carousel slide testimonials-slider cid-sh9WSPbYRc"
			data-interval="false" id="testimonials3-1e">
			<div class="text-center container-fluid">
				<h3 class="mb-4 mbr-fonts-style display-2">
					<strong style="color: #ffc800;">이벤트 등록</strong><br />
					<br />
				</h3>
			</div>
	</section>
	<!-- 이벤트 등록 -->

		<div class="container container-table">
			<div class="table-wrapper">
				<div class="container"></div>
				<div class="container table-info-container">
					<input type="hidden" id="evnet_no" name="evnet_no" value="${evnet_no}"/>
					<div class="row justify-content-center mt-4">
						<div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
							<form onsubmit="return writeCheck();" id="eventWrite" action="eventWriteForm" method="POST" class="mbr-form form-with-styler" enctype="multipart/form-data">
								<div class="dragArea row" style="margin: 5px">
									<%-- <div class="col-md-6 input-group"> 
										<select id="event_no" name="event_no" style="width: 70%; display: inline;" >
											<c:forEach var="event_nm" items="${event_nm}">
												<option value="${className.class_no}" selected>${className.class_nm_s}</option>
											</c:forEach>
										</select>
									</div> --%>
									<div class="col-md-8 input-group">
										<span class="input-group-text" style="width: 100px; background-color: #ffff;">작 성 자 </span> 
										<input type="text" id="mid" name="mid" class="form-control" value="${sessionMid}" readonly/>
										<span class="input-group-text" style="width: 100px; background-color: #ffff;">번호 </span>
										<input type="int" id="eenable" name="eenable" class="form-control" value="1" />
											
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px;">
									
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 이름</span> 
										<input type="text" id="event_nm" name="event_nm" class="form-control"/>
										<span id="event_nmError" class="error"></span>
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px;">
									
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 상세 제목</span> 
										<input type="text" id="event_ti" name="event_ti" class="form-control"/>
										<span id="event_tiError" class="error"></span>
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px;">
									
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 시작일</span> 
										<input type="date" id="event_start_picker" name="event_start_picker" class="form-control" placeholder="yyyy-MM-dd"/>
										<input type="hidden" id="event_start" name="event_start" value=""/>
										<span id="event_startError" class="error"></span>
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px;">
									
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 종료일</span> 
										<input type="date" id="event_end_picker" name="event_end_picker" class="form-control" placeholder="yyyy-MM-dd"/>
										<input type="hidden" id="event_end" name="event_end" value=""/>
										<span id="event_endError" class="error"></span>
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px">
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 썸네일</span> 
										<input type="file" id="eventIMG" name="eventIMG" class="form-control"/>
										<span id="event_ctError" class="error"></span>
									</div>
									
								</div>
								<div class="dragArea row" style="margin: 5px">
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 상세이미지</span> 
										<input type="file" id="eventIMGDetail" name="eventIMGDetail" class="form-control"/>
										<span id="event_ctError" class="error"></span>
									</div>
									
								</div>
								 <div class="dragArea row" style="margin: 5px">
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff; text-align: center;">이벤트 내용 </span> 
										<textarea id="event_ct" name="event_ct" class="event_ct" 
											style="height: 250px; width: 800px;"></textarea>
										<span id="event_ctError" class="error"></span>
									</div>
								</div> 
								<div class="dragArea row">
									<div class="col-md-3" > </div>
									<div class="mbr-section-btn mt-4" >
										 <input type="submit" class="btn btn-md btn-success display-4 text-primary" style="border-radius: 100px" value="등록"/> 
										
										<!-- <script type="text/javascript">
											 function eventWrite() {
												 
												 console.log("나와주세요 ");
												 
												var event_no = $("#event_no").val();

												var event_nm = $("#event_nm").val().trim();
												if(event_nm == "") { 
													$("#event_nmError").text("필수입력"); 
												}
												else { $("#event_nmError").text(""); }
												
												var event_ct = $("#event_ct").val().trim();
												if(event_ct == "") { $("#event_ctError").text("필수입력"); }
												else { $("#event_ctError").text(""); }
												
												var event_ti = $("#event_ti").val().trim();
												if(event_ti == "") { $("#event_tiError").text("필수입력"); }
												else { $("#event_tiError").text(""); }
												
												var event_start = $("#event_start").val().trim();
												if(event_start == "") { $("#event_startError").text("필수입력"); }
												else { $("#event_startError").text(""); }
												
												var event_end = $("#event_end").val().trim();
												if(event_end == "") { $("#event_endError").text("필수입력"); }
												else { $("#event_endError").text(""); }
												
												var event_img = $("#event_img").val().trim();
												if(event_img == "") { $("#event_imgError").text("필수입력"); }
												else { $("#event_imgError").text(""); }
												
												var event_detail = $("#event_detail ").val().trim();
												if(detail  == "") { $("#event_detail Error").text("필수입력"); }
												else { $("#event_detailError").text(""); }
												
												
												if(event_nm == "" || event_ct == "") {
													
													
													return;	
												} 
												
												return true;
											} 
										</script> -->
										<script type="text/javascript">
											function writeCheck() {

												var ntitle = $("#event_nm").val();
												if(ntitle == "") { 
													
													alert("이벤트제목을 입력해주세요");
													$("#event_nm").focus();
													return false;
												}
												
												var eventTitle = $("#event_ti").val();
												if(eventTitle == "") { 
													
													alert("이벤트 상세 제목을 입력해주세요");
													$("#event_ti").focus();
													return false;
												}
												
												var eventStart = $("#event_start").val();
												if(eventStart == "") { 
													
													alert("이벤트 시작일을 입력해주세요");
													$("#event_start").focus();
													return false;
												}
												
												var eventEnd = $("#event_end").val();
												if(eventEnd == "") { 
													
													alert("이벤트 종료일을 입력해주세요");
													$("#event_end").focus();
													return false;
												}
												var eventImg = $("#eventIMG").val();
												if(eventImg == "") { 
													
													alert("이벤트 사진을 등록해주세요");
													$("#eventIMG").focus();
													return false;
												}	
												
												var eventDetail = $("#event_detail").val();
												if(eventDetail == "") { 
													
													alert("이벤트 상세사진을 등록해주세요");
													$("#event_detail").focus(); event_ct
													return false;
												}
												var eventCt = $("#event_ct").val();
												if(eventCt == "") { 
													
													alert("이벤트 상세정보를 입력해주세요");
													$("#event_ct").focus();
													return false;
												}	
												else{
													$("#eventWrite").writeCheck();
												}
												return true;

											}
											
										</script>		
									</div>
										<div class="col-md-3">
										<div class="mbr-section-btn mt-4">
											<a class="btn btn-md btn-success display-4 text-primary"   href="javascript:history.back()">취소</a>
										</div>			
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
		
// 		$("#event_start_picker, #event_end_picker").datepicker({ minDate: 0});

		$("#event_start_picker").change(function(){
			var date = $(this).val();
			$("#event_start").val(date);
		});
		$("#event_end_picker").change(function(){
			var date = $(this).val();
			$("#event_end").val(date);
		});
	});
	


	</script>
	
	<style type="text/css">
	#table
	
	</style>
	
</body>
</html>	