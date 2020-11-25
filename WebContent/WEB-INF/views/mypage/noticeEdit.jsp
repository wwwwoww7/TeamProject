<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form id="noticeEditForm">
	<!-- <table style="width:auto" class="table table-sm table-bordered"> -->
	<div class="input-group">
		<div class="input-group-prepend"><span class="input-group-text">강의명 선택</span>
			<select id="mtype" name="mtype">
				<%-- <c:forEach var="" items="">
					<c:if test=""> --%>
						<option value="강의명1" selected>강의명1</option>
						<option value="강의명2" selected>강의명2</option>
						<option value="강의명3" selected>강의명3</option>
					<%-- </c:if> --%>
				<%-- </c:forEach> --%>
			</select>
		</div>
		<!-- <input id="btitle" type="text" name="btitle" class="form-control" value="강의명"> -->
		<span id="btitleError" class="error"></span>
	</div>
	
	<div class="input-group">
		<div class="input-group-prepend"><span class="input-group-text">제목</span></div>
		<input id="btitle" type="text" name="btitle" class="form-control" value="강의명">
		<span id="btitleError" class="error"></span>
	</div>
	
	<div class="input-group">
		<div class="input-group-prepend"><span class="input-group-text">내용</span></div>
		<textarea id="bcontent" name="bcontent" class="form-control">여긴 공지사항 내용이에요</textarea>
		<span id="bcontentError" class="error"></span>
	</div>
	
	<div class="input-group">
		<div class="input-group-prepend"><span class="input-group-text">파일첨부</span></div>
		<input type="file" name="attach" class="form-control"/>
	</div>
		
	<div style="margin-top: 10px">
		<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:tutorClassNotice()">공지사항등록</a>
		<script type="text/javascript">
		//
			/* function boardWrite() {
				var btitle = $("#btitle").val().trim();
				if(btitle == "") { $("#btitleError").text("필수"); }
				else { $("#btitleError").text(""); }
				
				var bcontent = $("#bcontent").val().trim();
				if(bcontent == "") { $("#bcontentError").text("필수"); }
				else { $("#bcontentError").text(""); }
				
				if(btitle == "" || bcontent == "") {
					return;	
				} 
				
				var mid = $("#mid").val().trim();
				
				$.ajax({
					url:"boardWrite",
					method:"post",
					data: {btitle:btitle, bcontent:bcontent, mid:mid},
					success:function(data) {
						if(data.result == "success") {
							boardList();
						}
						console.log(data);
					}
				});
			} */
			
			function tutorClassNotice(){
					$.ajax({
						url:"tutorClassNotice",
						type: "POST",
						success: function(data){
								$("#tutorNotice").html(data);
							}
						});
					} 
			
		</script>		
		
		<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:tutorNoticeCancel()">취소</a>
			<script type="text/javascript">
				function tutorNoticeCancel(){
						$.ajax({
							url:"tutorClassNotice",
							type: "POST",
							success: function(data){
									$("#tutorNotice").html(data);
								}
							});
						} 
			</script>
	</div>
</form> 
<br/>
<!-- <a class="btn" href="javascript:tutorClassNotice()">완료</a>
	<script type="text/javascript">
		function tutorClassNotice(){
				$.ajax({
					url:"tutorClassNotice",
					type: "POST",
					success: function(data){
							$("#tutorClassNotice").html(data);
						}
					});
				} 
	</script> -->	
<!-- <a class="btn" href="javascript:tutorClassNotice()">취소</a>
	<script type="text/javascript">
		function tutorClassNotice(){
				$.ajax({
					url:"tutorClassNotice",
					type: "POST",
					success: function(data){
							$("#tutorClassNotice").html(data);
						}
					});
				} 
	</script>	 -->