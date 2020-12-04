<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container container-table mt-5">
	<div class="table-wrapper">
	<!-- 수정/삭제/목록가기 -->
	
		<div class="row">
		<div class="col-12"  align="right">
			<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:reviewUpdateform(${reviewDetail.review_no})">수정</a>	
			<script type="text/javascript">
			function reviewUpdateform(review_no) {
				$.ajax({
						url:"community/reviewUpdateform",
						data : {review_no:review_no},
						success:function(data) {
							$("#fun1_result").html(data);
						}
					});
				}
			</script>
			<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:communityDeleteform(${reviewDetaill.review_no})">삭제</a>	
			<script type="text/javascript">
			function communityDeleteform(review_no) {
				$.ajax({
						url:"community/communityDeleteform",
						data : {review_no:review_no},
						success:function(data) {
							if(data.result=="success"){
								allFunction(1);
							}
						}
					});
				}
			</script>
			<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:allFunction(6)">목록</a>
			<!-- <a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:allFunction(${communityDetail.comm_cate_no+1})" >목록</a>	 -->	
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		<div class="container scroll">
		
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
				        <th>카테고리</th>
				        <td>${reviewDetail.class_cate_nm}</td>
				        <th>닉네임</th>
				        <td>${reviewDetail.mnick}</td>
				    </tr>
				   
					<tr>
						<th>제목</th>
				        <td colspan="10">${reviewDetail.review_title}</td>
					</tr>
				    <tr>
				        <th>내용</th>
				        <td colspan="10">${reviewDetail.review_content}</td>
				        
				    </tr>
					</tbody>
				</table>
				
				<br/>
				<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:allFunction(6)">목록</a>		
			</div>
		
		</div>
		
		<div class="container table-info-container"></div>
	</div>
</div>