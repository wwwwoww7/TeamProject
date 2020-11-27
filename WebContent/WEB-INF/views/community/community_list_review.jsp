<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container">
	
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
							<a class="dropdown-item" href="javascript:catereview2()">커리어</a>
							<script>
									function catereview2(){
										$.ajax({
											url : "community/catereview2" , 
											success : function(data) {
												$("#fun1_result").html(data);
											}
										});
									}
								</script>
							<a class="dropdown-item" href="javascript:catereview3()">머니</a>
							<script>
									function catereview3(){
										$.ajax({
											url : "community/catereview3" , 
											success : function(data) {
												$("#fun1_result").html(data);
											}
										});
									}
								</script>
						</div>
					</div>			 
				
				<%-- <c:if test="${sessionMid==null}"> --%>
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
					<%-- </c:if> --%>
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
			
			<tbody>
				<c:forEach var="ReviewDto" items="${catereview2}">
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
				<c:forEach var="ReviewDto" items="${catereview3}">
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
			<tr>
				<td colspan="8" style="text-align: center; ">
					<a class="btn btn-outline-primary btn-sm" href="javascript:boardList(1)">처음</a>
					
					<c:if test="${pager.groupNo > 1 }">
					<a class="btn btn-outline-info btn-sm" href="javascript:boardList(${pager.startPageNo-1})">이전</a>
					</c:if>
					
					<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
						<c:if test="${pager.pageNo == i }">
							<a class="btn btn-outline-danger btn-sm" href="javascript:boardList(${i})">${i}</a>
						</c:if>
						<c:if test="${pager.pageNo != i }">
							<a class="btn btn-outline-success btn-sm" href="javascript:boardList(${i})">${i}</a>
						</c:if>
					</c:forEach>
					<c:if test="${pager.groupNo <pager.totalGroupNo}">
					<a class="btn btn-outline-info btn-sm" href="javascript:boardList(${pager.endPageNo+1})">다음</a>
					</c:if>
					<a class="btn btn-outline-primary btn-sm" href="javascript:boardList(${pager.totalPageNo})">맨끝</a>
				</td>
			</tr>
		</table> 
	<script type="text/javascript">
		function boardList(pageNo) {
			if(!pageNo){
				pageNo=1;
			}
			$.ajax({
				url:"community/reviewAll",
				data: {pageNo:pageNo}, 
				success:function(data) {
					$("#fun1_result").html(data);
				}
			});
		}
	</script>
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