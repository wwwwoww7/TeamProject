<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
	<div class="input-group">
		<textarea id="bcontent" name="bcontent" class="form-control">답변 내용 여기다 입력</textarea>
		<div class="input-group-prepend"><span class="input-group-text"><a class="btn" href="javascript:tutorClassQA()">답변</a></span></div>
		<span id="bcontentError" class="error"></span>
	</div>
	<!-- <a class="btn" href="javascript:tutorClassQA()">답변</a> -->
	<script type="text/javascript">
	function tutorClassQA(){
			$.ajax({
				url:"tutorClassQA",
				type: "POST",
				success: function(data){
						$("#tutorClassQA").html(data);
					}
				});
			} 
	</script>
	<br/>
	<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:tutorClassQA()">확인</a>
	<script type="text/javascript">
	function tutorClassQA(){
			$.ajax({
				url:"tutorClassQA",
				type: "POST",
				success: function(data){
						$("#tutorClassQA").html(data);
					}
				});
			} 
	</script>			
</div>