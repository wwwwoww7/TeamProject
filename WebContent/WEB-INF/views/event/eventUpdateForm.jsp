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
  <meta name="description" content="Website Creator Description">
  
  
  <title>eventUpdate</title>
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
					<strong style="color: #ffc800;">이벤트 </strong><br />
					<br />
				</h3>
			</div>
	</section>

		<div class="container container-table">
			<div class="table-wrapper">
				<div class="container"></div>
				<div  class="container table-info-container">
					<input type="hidden" id="evnet_no" name="evnet_no" value="${evnet_no}"/>
					<div class="row justify-content-center mt-4">
						<div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
							<form onsubmit="return updateCheck();"action="eventUpdate" id="eventUpdate" method="POST" class="mbr-form form-with-styler" enctype="multipart/form-data">
								<div class="dragArea row" style="margin: 5px">
									<input type="hidden" id="event_no" name="event_no" value="${event.event_no}">
									<div class="col-md-6 input-group">
										<span class="input-group-text" style="width: 100px; background-color: #ffff;">작 성 자 </span> 
										<input type="text" id="mid" name="mid" class="form-control" value="${sessionMid}" readonly/>
										<span class="input-group-text" style="width: 100px; background-color: #ffff;">번호 </span>
										<input type="int" id="eenable" name="eenable" class="form-control" value="1" />
											
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px;">
									
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 이름</span> 
										<input type="text" id="event_nm" name="event_nm" class="form-control" value="${event.event_nm}"/>
										<span id="event_nmError" class="error"></span>
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px;">
									
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 상세 이름</span> 
										<input type="text" id="event_ti" name="event_ti" class="form-control" value="${event.event_ti}"/>
										<span id="event_tiError" class="error"></span>
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px;">
									
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 시작일</span> 
										<input type="date" id="event_start_picker" name="event_start_picker" class="form-control" placeholder="yyyy-MM-dd" value="${event.event_start}"/>
										<input type="hidden" id="event_start" name="event_start" value=""/>
										<span id="event_startError" class="error"></span>
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px;">
									
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 종료일</span> 
										<input type="date" id="event_end_picker" name="event_end_picker" class="form-control" placeholder="yyyy-MM-dd" value="${event.event_end}"/>
										<input type="hidden" id="event_end" name="event_end" value=""/>
										<span id="event_endError" class="error"></span>
									</div>
								</div>
								<div class="dragArea row" style="margin: 5px">
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 썸네일</span> 
										<input type="file" id="eventIMG" name="eventIMG" class="form-control"/>
									</div>
									
								</div>
								<div class="dragArea row" style="margin: 5px">
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff;">이벤트 상세이미지</span> 
										<input type="file" id="eventIMGDetail" name="eventIMGDetail" class="form-control"/>
									</div>
									
								</div>
								 <div class="dragArea row" style="margin: 5px">
									<div class="col-md-12 input-group">
										<span class="input-group-text" style="width: 140px; background-color: #ffff; text-align: center;">이벤트 내용 </span> 
										<textarea id="event_ct" name="event_ct" class="event_ct" 
											style="height: 250px; width: 800px;">${event.event_ct}</textarea>
										<span id="event_ctError" class="error"></span>
									</div>
								</div> 
								<div class="dragArea row">
									<div class="col-md-3"></div>
									<div class="col-md-3">
										<input type="submit" class="btn item-btn btn-success display-7 text-primary" value="글 수정"/>
										<!-- <script type="text/javascript">
											function eventUpdate(event_no) {
												$.ajax({
													url:"eventUpdate",
													data:{eventUpdate:eventUpdate},
													method:"POST",
													success:function(data) {
														$("#event_Detail").html(data); 
												
													}
												});
											}
										</script> -->
								<!-- 		
										<script type="text/javascript">
											 function eventUpdate(event_no) {
												
												var event_no = $("#event_no").val();
												
												var event_nm = $("#event_nm").val().trim();
												if(event_nm == "") { $("#event_nmError").text("필수입력"); }
												else { $("#event_nmError").text(""); }
												
												var event_ct = $("#event_ct").val().trim();
												if(event_ct == "") { $("#event_ctError").text("필수"); }
												else { $("#event_ctError").text(""); }
												
												var event_ti = $("#event_ti").val().trim();
												if(event_ti == "") { $("#event_tiError").text("필수"); }
												else { $("#event_tiError").text(""); }
												
												var event_start = $("#event_start").val().trim();
												if(event_start == "") { $("#event_startError").text("필수"); }
												else { $("#event_startError").text(""); }
												
												var event_end = $("#event_end").val().trim();
												if(event_end == "") { $("#event_end").text("필수"); }
												else { $("#event_endError").text(""); }
												
												var event_img = $("#event_img").val().trim();
												if(event_img == "") { $("#event_img").text("필수"); }
												else { $("#event_imgError").text(""); }
												
												var eventIMGDetail = $("#eventIMGDetail").val().trim();
												if(eventIMGDetail == "") { $("#eventIMGDetail").text("필수"); }
												else { $("#eventIMGDetailError").text(""); }
												
												if(event_nm == "" || event_ct == "") {
													return false;	
												} 
										/* 		
												var event_img = $("#event_img").val();
												
												var mid = $("#mid").val();
												
												
												return ;
											} 
											  */
											 $.ajax({
													url:"eventUpdate",
													method:"post",  
													data: {event_no:event_no, event_nm:event_nm, event_ct:event_ct, event_ti:event_ti, event_start:event_start,
															event_end:event_end, event_img:event_img, eventDetail:eventDetail},
													success: function(data) {
														if(data.result == "success") {
															eventList();
														}
														/* eventList(1);
														console.log(data); */
													}
												});
											  }
										</script> -->
										
										<script type="text/javascript">
											function updateCheck() {

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
													$("#eventUpdate").writeCheck();
												}
												return true;

											}
											
										</script>		
									</div>
									<div class="col-md-3">
									<input type=button  class="btn item-btn btn-success display-7 text-primary"value="취소" onClick="history.back();">
									</div>
									<div class="col-md-3"></div> 
								</div>
							</form>
						</div>
					</div>
				
				</div>
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
</body>
</html>	