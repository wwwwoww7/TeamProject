<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container">
	
	
	<script type="text/javascript">
		 /* function boardList(pageNo) {
			if(!pageNo){
				pageNo=1;
			}
			$.ajax({
				url:"community/communityAll",
				data: {pageNo:pageNo}, 
				success:function(data) {
					$("#fun1_result").html(data);
				}
			});
		}  */
		
		
		function communityDetail() {
			$.ajax({
				url:"<%=request.getContextPath()%>/community/communityDetail",
				success:function(data) {
					$("#fun1_result").html(data);
				}
			});
		}
	</script>
	
<section class="section-table cid-shajIi4vc3" id="table1-1l">
  <div class="container container-table">
      <div class="table-wrapper">
        <div class="container">
          <div class="row search">
            <div class="col-md-6"></div>
            <div class="col-md-6">
                <div class="mbr-section-btn" align="right">
                
               	<%-- <c:if test="${sessionMid==null}"> --%>
                  <a class="btn item-btn btn-warning display-4" href="javascript:boardWrite()">글쓰기</a>
                  
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
                  <%-- </c:if>--%>
                </div>
            </div>
          </div>
        </div>

        <div class="container scroll">
          <table class="table isSearch" cellspacing="0" data-empty="No matching records found">
            <thead>
              <tr class="table-heads ">
                <th class="head-item mbr-fonts-style display-7 text-center" style="width:100px">번호</th>
				<th class="head-item mbr-fonts-style display-7 text-center" style="width:100px">분야</th>
				<th class="head-item mbr-fonts-style display-7 text-center" style="width:200px">날짜</th>
				<th class="head-item mbr-fonts-style display-7 text-center" style="width:250px">제목</th>
				<th class="head-item mbr-fonts-style display-7 text-center" style="width:250px">내용</th>
				<th class="head-item mbr-fonts-style display-7 text-center" style="width:200px">조회</th>
				<th class="head-item mbr-fonts-style display-7 text-center" style="width:200px">아이디</th>
                  
             <!--  <th class="head-item mbr-fonts-style display-7">
                      NAME</th>
              <th class="head-item mbr-fonts-style display-7">
                      AGE</th><th class="head-item mbr-fonts-style display-7">
                      DATE</th><th class="head-item mbr-fonts-style display-7">
                      SALARY</th> -->
              </tr>
            </thead>

            <tbody>
              
            <c:forEach var="communityDto" items="${list}">
				<tr>
					<td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetail()">${communityDto.comm_no}</a></td>
					<td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetail()">${communityDto.comm_cate_nm}</a></td>
					<td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetail()"><fmt:formatDate value="${communityDto.comm_date}" pattern="yyyy-MM-dd"/></a></td>
					<td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetail()">${communityDto.comm_title}</a></td>
					<td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetail()">${communityDto.comm_content}</a></td>
					<td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetail()">${communityDto.comm_hitno}</a></td>
					<td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetail()">${communityDto.mid}</a></td>
				</tr>
			</c:forEach>
            <c:forEach var="communityDto" items="${chat}">
				<tr>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_no}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_cate_nm}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><fmt:formatDate value="${communityDto.comm_date}" pattern="yyyy-MM-dd"/></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_title}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_content}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_hitno}</td>
					<td class="body-item mbr-fonts-style display-7 text-center">${communityDto.mid}</td>
				</tr>
			</c:forEach>
			<c:forEach var="communityDto" items="${tips}">
				<tr>
					<td class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_no}</td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_cate_nm}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><fmt:formatDate value="${communityDto.comm_date}" pattern="yyyy-MM-dd"/></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_title}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_content}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_hitno}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.mid}</a></td>
				</tr>
			</c:forEach>
			<c:forEach var="communityDto" items="${boast}">
				<tr>
					<td  class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_no}</a></td>
					<td  class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_cate_nm}</a></td>
					<td  class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()"><fmt:formatDate value="${communityDto.comm_date}" pattern="yyyy-MM-dd"/></a></td>
					<td  class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_title}</a></td>
					<td  class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_content}</a></td>
					<td  class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_hitno}</a></td>
					<td  class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.mid}</td>
				</tr>
			</c:forEach>
			<c:forEach var="communityDto" items="${assign}">
				<tr>
					<td class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_no}</td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_cate_nm}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><fmt:formatDate value="${communityDto.comm_date}" pattern="yyyy-MM-dd"/></td>
					<td class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_title}</td>
					<td class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_content}</td>
					<td class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_hitno}</td>
					<td class="body-item mbr-fonts-style display-7 text-center">${communityDto.mid}</td>
				</tr>
			</c:forEach>    
              <tr>
				<td colspan="7" style="text-align: center; ">
					<ul class="pagination justify-content-center" style="margin:20px 0">
						<li class="page-item"><a class="page-link" href="javascript:allFunction(${cate}, 1)">처음</a></li>
						<c:if test="${pager.groupNo > 1 }">
							<li class="page-item">
								<a class="page-link" href="javascript:allFunction(${cate},${pager.startPageNo-1})">이전</a>
							</li>
						</c:if>
						<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
							<c:if test="${pager.pageNo == i }">
								<li class="page-item active"><a class="page-link" href="javascript:allFunction(${cate},${i})">${i}</a></li>
							</c:if>
							<c:if test="${pager.pageNo != i }">
								<li class="page-item"><a class="page-link" href="javascript:allFunction(${cate},${i})">${i}</a></li>
							</c:if>
						</c:forEach>
						<c:if test="${pager.groupNo <pager.totalGroupNo}">
						<li class="page-item"><a class="page-link" href="javascript:allFunction(${cate},${pager.endPageNo+1})">다음</a></li>
						</c:if>
						<li class="page-item"><a class="page-link" href="javascript:allFunction(${cate},${pager.totalPageNo})">맨끝</a></li>
					</ul>
					<%-- <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
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
					<a class="btn btn-outline-primary btn-sm" href="javascript:boardList(${pager.totalPageNo})">맨끝</a> --%>
					</td>
				</tr>  
             
             </tbody>
          </table>
        </div>
        

      </div>
    </div>
</section>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</div>