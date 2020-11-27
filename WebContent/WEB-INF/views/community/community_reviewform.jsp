<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<p>${board}</p>


<form id="boardReviewForm">
	<!-- <table style="width:auto" class="table table-sm table-bordered"> -->
	
	<!-- 새로운테이블입니다 -->
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
	        <td>강의명이 들어옴</td>
	        <th>문의 분류</th>
	        <td>과제제출/환불문의</td>
	    </tr>
	    <tr>
	        <th>작성자</th>
	        <td>사용자ID</td>
	        <th>작성일</th>
	        <td><span><fmt:formatDate value="" pattern="yyyy-MM-dd HH.mm.ss"/></span>2020-11-20</td>
		</tr>
		<tr>
			<th>답변완료여부</th>
	        <td colspan="10">답변완료/미완료</td>
		</tr>
		<tr>
			<th>제목</th>
	        <td colspan="10">문의 제목이 들어오네요</td>
		</tr>
	    <tr>
	        <th>내용</th>
	        <td colspan="10">강의문의 내용이 들어옴</td>
	    </tr>
		</tbody>
	</table>
	
	 
	
	강의선택 : <select id="mcity" name="mcity">
 				<c:forEach var="city" items="${cityList}">
 					<c:if test="${city.value != ch11Member.mcity}">
 						<option value="${city.value}">${city.label}</option>
 					</c:if>
 					<c:if test="${city.value == ch11Member.mcity}">
 						<option value="${city.value}" selected>${city.label}</option>
 					</c:if>
 					</c:forEach>
 			</select>
 			
 	<!-- 글쓰기폼 -->			
	 	<%-- 
	 	<article>
			<div class="container" role="main">
				<h2>board Form</h2>
				<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/saveBoard">
					<div class="mb-3">
						<label for="title">제목</label>
						<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
					</div>
					<div class="mb-3">
						<label for="reg_id">작성자</label>
						<input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="이름을 입력해 주세요">
					</div>
					<div class="mb-3">
						<label for="content">내용</label>
						<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>
					</div>
					<div class="mb-3">
						<label for="tag">TAG</label>
						<input type="text" class="form-control" name="tag" id="tag" placeholder="태그를 입력해 주세요">
					</div>
				</form>
				<div >
					<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>
					<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
				</div>
			</div>
		</article> 
		--%>
 		 	
 		 	<!-- 추가 -->		
	
	<div class="input-group">
		<div class="input-group-prepend"><span class="input-group-text">btitle</span></div>
		<input id="btitle" type="text" name="btitle" class="form-control">
		<span id="btitleError" class="error"></span>
	</div>
	
	<div class="input-group">
		<div class="input-group-prepend"><span class="input-group-text">bcontent</span></div>
		<textarea id="bcontent" name="bcontent" class="form-control"></textarea>
		<span id="bcontentError" class="error"></span>
	</div>
	
	<div class="input-group">
		<div class="input-group-prepend"><span class="input-group-text">mid</span></div>
		<input id="mid" type="text" name="mid" class="form-control" 
			<c:if test="${sessionMid!=null}">value="${sessionMid}"</c:if>
			<c:if test="${sessionMid==null}">value="fall"</c:if>
			readonly>
		<span id="btitleError" class="error"></span>
	</div>
		
	<div style="margin-top: 10px">
		<a class="btn btn-info" href="javascript:boardWrite()">글쓰기</a>
		<script type="text/javascript">
			function boardWrite() {
				console.log("후기 글작성 완료");
				
				
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
					url:"community/boardWriteReview",
					method:"post",
					data: {btitle:btitle, bcontent:bcontent, mid:mid},
					success:function(data) {
						
						
						fun5();
						
						
					}
				});
			}
		</script>		
		
		<a class="btn btn-info" href="community">취소</a>
	</div>
</form> 