<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container">
	<section class="section-table cid-shajIi4vc3" id="table1-1l">
	  <div class="container container-table">
	      <div class="table-wrapper">
	        <div class="container">
	          <div class="row search">
	            <div class="col-md-6"></div>
	            <div class="col-md-6">
	                <div  class="mbr-section-btn" align="right">
               	   		<%-- <c:if test="${sessionMid==null}"> --%>
		                  <a class="btn item-btn btn-warning display-4" href="javascript:communityWriteReview()" >글쓰기</a>
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
							<script type="text/javascript">
							function communityDetailReview(review_no) {
								$.ajax({
										url:"community/communityDetailReview",
										data : {review_no:review_no},
										success:function(data) {
										$("#fun1_result").html(data);
										}
									});
								}
							</script>	
		                  <%-- </c:if>--%>
	                	<div class="dropdown"  style="display: inline-block;">
							<button id="cateselect" align="right" type="button" class="btn btn-primary dropdown-toggle " data-toggle="dropdown">
								 전체
							</button>
							<div class="dropdown-menu">
							<a class="dropdown-item" href="javascript:allFunction(6,1)">전체</a>
							<c:forEach var="cateitem" items="${catelist}">
								<a class="dropdown-item" href="javascript:catereview(${cateitem.class_cate_no})">${cateitem.class_cate_nm}</a>
							</c:forEach>
							
							
								
								<script>
										function catereview(cateno){ 
											$.ajax({
												url : 'community/catereview' , 
												data : {cateno:cateno},
												success : function(data) {
													$("#fun1_result").html(data);
												}
											});
										}
									</script>
							</div>
						</div>	
	                
	                </div>
	                
	            </div>
	          </div>
	        </div>
	
	        <div class="container scroll">
	          <table class="table isSearch" cellspacing="0" data-empty="No matching records found">
	            <thead>
		            <tr class="table-heads">
						<th class="head-item mbr-fonts-style display-7 text-center" style="width:70px">번호</th>
						<th class="head-item mbr-fonts-style display-7 text-center" style="width:70px">강의분야</th>
						<th class="head-item mbr-fonts-style display-7 text-center" style="width:70px">별점</th>
						<th class="head-item mbr-fonts-style display-7 text-center" style="width:100px">날짜</th>
						<th class="head-item mbr-fonts-style display-7 text-center" style="width:100px">제목</th>
						<!-- <th class="head-item mbr-fonts-style display-7 text-center" style="width:200px">내용</th> -->
						<th class="head-item mbr-fonts-style display-7 text-center" style="width:70px">조회수</th>
						<th class="head-item mbr-fonts-style display-7 text-center" style="width:80px">닉네임</th>
					</tr>
	            </thead>
	            <tbody>
	            	<c:forEach var="ReviewDto" items="${review}">
					<tr>
						<td class="body-item mbr-fonts-style display-7  text-center">${ReviewDto.review_no}</td>
						<td class="body-item mbr-fonts-style display-7  text-center">${ReviewDto.class_cate_nm}</td>
						<td class="body-item mbr-fonts-style display-7  text-center">${ReviewDto.review_star}</td>
						<td class="body-item mbr-fonts-style display-7  text-center"><fmt:formatDate value="${ReviewDto.review_date}" pattern="yyyy-MM-dd"/></td>
						<td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetailReview(${ReviewDto.review_no})">${ReviewDto.review_title}</a></td>
						<%-- <td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetail()">${ReviewDto.review_content}</a></td> --%>
						<td class="body-item mbr-fonts-style display-7  text-center">${ReviewDto.review_hitno}</td>
						<td class="body-item mbr-fonts-style display-7  text-center">${ReviewDto.mnick}</td>
					</tr>
					</c:forEach>
	            	
				</tbody>
			
			<tr>
				<td colspan="7" style="text-align: center; ">
					<ul class="pagination justify-content-center" style="margin:20px 0">
						<li class="page-item"><a class="page-link" href="javascript:allFunction(6,1)">처음</a></li>
						<c:if test="${pager.groupNo > 1 }">
							<li class="page-item">
								<a class="page-link" href="javascript:allFunction(6,${pager.startPageNo-1})">이전</a>
							</li>
						</c:if>
						
						<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
							<c:if test="${pager.pageNo == i }">
								<li class="page-item active"><a class="page-link" href="javascript:allFunction(6,${i})">${i}</a></li>
							</c:if>
							<c:if test="${pager.pageNo != i }">
								<li class="page-item"><a class="page-link" href="javascript:allFunction(6,${i})">${i}</a></li>
							</c:if>
						</c:forEach>
						<c:if test="${pager.groupNo <pager.totalGroupNo}">
						<li class="page-item"><a class="page-link" href="javascript:allFunction(6,${pager.endPageNo+1})">다음</a></li>
						</c:if>
						<li class="page-item"><a class="page-link" href="javascript:allFunction(6,${pager.totalPageNo})">맨끝</a></li>
					</ul>
					
					</td>
				</tr> 
				
				
				
	            </tbody>
	            
	          </table>
	        </div>
	     </div>
	  </div>
  </section>
	 
	
	
</div>

<script type="text/javascript">
	
	$(function(){
		$("#cateselect").html("${cate}");
	});
	
</script>
