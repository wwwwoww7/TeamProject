<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container">
	<p>${cate}</p>
		<!-- 글쓰기 -->
		<div class="sector"> 
			<div align="right">
				
				 <!-- selectbox --> 
					<div class="dropdown">
						<button align="right" type="button" class="btn btn-primary dropdown-toggle " data-toggle="dropdown" style="float:right;">
							 전체
						</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="javascript:catereview1()">건강</a>
							<script>
									function catereview1(){
										$.ajax({
											url : "community/catereview1" , 
											success : function(data) {
												$("#fun1_result").html(data);
											}
										});
									}
								</script>
							<a class="dropdown-item" href="#">커리어</a>
							<a class="dropdown-item" href="#">머니</a>
						</div>
					</div>			 
				
				<c:if test="${sessionMid==null}">
					<a class="btn btn-outline-primary" style="border:1px solid #007BFF; float:right; " href="javascript:communityWriteReview()">글쓰기</a>
						<script type="text/javascript">
							function communityWriteReview() {
								$.ajax({
										url:"community/communityWriteReview",
										success:function(data) {
										$("#fun1_result").html(data);
										}
									});
								}
						</script>
					</c:if>
				</div>
			</div>	
	<div id="fun1_result"></div>
	
	
	 <table class="table table-hover">
		<thead>
				<tr>
					<th style="width:70px">번호</th>
					<th style="width:70px">강의분야</th>
					<th style="width:70px">별점</th>
					<th style="width:100px">날짜</th>
					<th style="width:100px">제목</th>
					<th style="width:200px">내용</th>
					<th style="width:70px">조회수</th>
					<th style="width:80px">아이디</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ReviewDto" items="${review}">
					<tr>
						<td><a href="javascript:communityDetail()">${ReviewDto.review_no}</a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.class_cate_nm}</a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.review_star}</a></td>
						<td><a href="javascript:communityDetail()"><fmt:formatDate value="${ReviewDto.review_date}" pattern="yyyy-MM-dd"/></a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.review_title}</a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.review_content}</a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.review_hitno}</a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.mid}</a></td>
						
					</tr>
				</c:forEach>
			</tbody>
			<tbody>
				<c:forEach var="ReviewDto" items="${catereview1}">
					<tr>
						<td><a href="javascript:communityDetail()">${ReviewDto.review_no}</a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.class_cate_nm}</a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.review_star}</a></td>
						<td><a href="javascript:communityDetail()"><fmt:formatDate value="${ReviewDto.review_date}" pattern="yyyy-MM-dd"/></a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.review_title}</a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.review_content}</a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.review_hitno}</a></td>
						<td><a href="javascript:communityDetail()">${ReviewDto.mid}</a></td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table> 
	
	
	
	
	<table class="table table-hover">
			<tr>	
				<td colspan="4" style="text-align: center;">
					<a class="btn btn-outline-primary btn-sm" href="#">처음</a>
					<a class="btn btn-outline-info btn-sm" href="#">이전</a>
							<a class="btn btn-outline-danger btn-sm" href="#">1</a>
							<a class="btn btn-outline-success btn-sm" href="#">2</a>
							<a class="btn btn-outline-success btn-sm" href="#">3</a>
							<a class="btn btn-outline-success btn-sm" href="#">4</a>
							<a class="btn btn-outline-success btn-sm" href="#">5</a>
					<a class="btn btn-outline-info btn-sm" href="#">다음</a>
					<a class="btn btn-outline-primary btn-sm" href="#)">맨끝</a>
				</td>
			</tr>
	</table>
	<script type="text/javascript">
			function communityDetailReview() {
				$.ajax({
					url:"<%=request.getContextPath()%>/community/communityDetailReview",
					success:function(data) {
						$("#fun1_result").html(data);
					}
				});
			}
	</script>
</div>