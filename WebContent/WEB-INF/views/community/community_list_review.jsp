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
							<a class="dropdown-item" href="#">건강</a>
							<a class="dropdown-item" href="#">커리어</a>
							<a class="dropdown-item" href="#">머니</a>
						</div>
					</div>			 
				
				<c:if test="${sessionMid==null}">
					<a class="btn btn-outline-primary" style="border:1px solid #007BFF; float:right; " href="javascript:boardWriteReview()">글쓰기</a>
						<script type="text/javascript">
							function boardWriteReview() {
								$.ajax({
										url:"community/boardWriteReview",
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
			function boardDetailReview() {
				$.ajax({
					url:"<%=request.getContextPath()%>/community/boardDetailReview",
					success:function(data) {
						$("#fun1_result").html(data);
					}
				});
			}
	</script>
</div>