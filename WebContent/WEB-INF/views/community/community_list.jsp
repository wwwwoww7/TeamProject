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
										url:"community/boardWrite",
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
	
	
	<table style="width:auto" class="table table-hover">
			<thead>
			<tr>
				<th>번호</th>
				<th>날짜</th>
				<th>제목</th>
				<th>내용</th>
				<th>조회</th>
				<th>아이디</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="communityDto" items="${list}">
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
		<thead>
			<tr>
				<th>번호</th>
				<th>날짜</th>
				<th>제목</th>
				<th>내용</th>
				<th>조회</th>
				<th>아이디</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>2020.11.23</td>
				<td><a href="javascript:boardDetail()">야구방공지</a></td>
				<td>룰루랄라</td>
				<td>1254</td>
				<td>fall</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2020.11.23</td>
				<td>축구방공지</td>
				<td>메롱</td>
				<td>3</td>
				<td>angel</td>

			</tr>
			<tr>
				<td>2</td>
				<td>2020.11.23</td>
				<td>나는 커리어우먼</td>
				<td>이 될거얀</td>
				<td>2</td>
				<td>winter</td>
			</tr>

			<tr>
				<td>3</td>
				<td>2020.11.23</td>
				<td>나는 머니가 좋아</td>
				<td>돈이 최고지?</td>
				<td>3</td>
				<td>summer</td>
			</tr>
		</tbody>
		
		
		
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
			function CommunityDetail() {
				$.ajax({
					url:"<%=request.getContextPath()%>/community/boardDetail",
					success:function(data) {
						$("#fun1_result").html(data);
					}
				});
			}
	</script>
</div>