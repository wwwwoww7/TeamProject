<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container">
	<p>${cate}</p>
		<!-- 글쓰기 -->
		<div class="sector"> 
			<div align="right">
				<c:if test="${sessionMid==null}">
					<a class="btn btn-outline-primary" style="border:1px solid #007BFF; float:right; " href="javascript:boardWrite()">글쓰기</a>
						<script type="text/javascript">
							function boardWrite() {
								$.ajax({
										url:"community/communityWrite",
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
				<th style="width:100px">번호</th>
				<th style="width:200px">날짜</th>
				<th style="width:250px">제목</th>
				<th style="width:250px">내용</th>
				<th style="width:200px">조회</th>
				<th style="width:200px">아이디</th>
			</tr>
		</thead>
		<tbody>
		
			<c:forEach var="communityDto" items="${all}">
				<tr>
					<td>${communityDto.comm_no}</td>
					<td><fmt:formatDate value="${communityDto.comm_date}" pattern="yyyy-MM-dd"/></td>
					<td>${communityDto.comm_title}</td>
					<td>${communityDto.comm_content}</td>
					<td>${communityDto.comm_hitno}</td>
					<td>${communityDto.user_id}</td>
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
			function communityDetail() {
				$.ajax({
					url:"<%=request.getContextPath()%>/community/communityDetail",
					success:function(data) {
						$("#fun1_result").html(data);
					}
				});
			}
	</script>
</div>