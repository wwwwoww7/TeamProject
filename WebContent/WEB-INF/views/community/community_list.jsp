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
		
		
		function communityDetail(comm_no) {
			$.ajax({
				url:"<%=request.getContextPath()%>/community/communityDetail",
				data : {comm_no:comm_no},
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
               	 <c:if test="${sessionMid!=null}" > 
                  <a class="btn item-btn btn-warning display-4" href="javascript:communityWrite()">글쓰기</a>
                  
					<script type="text/javascript">
						function communityWrite() {
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
          </div>
        </div>

        <div class="row border">
          <table class="table table-hover m-0 " cellspacing="0" data-empty="No matching records found">
            <colgroup>
			    <col width="13%">
			    <col width="13%">
			    <col width="32%">
			    <col width="15%">
			    <col width="15%">
			    <col width="*">
			</colgroup>
            <thead>
              <tr class="table-heads ">
                <th id="no" class="head-item mbr-fonts-style display-7 text-center">번호</th>
				<th class="head-item mbr-fonts-style display-7 text-center">분야</th>
				<th class="head-item mbr-fonts-style display-7 text-center">제목</th>
				<th class="head-item mbr-fonts-style display-7 text-center">닉네임</th>
				<th id="date" class="head-item mbr-fonts-style display-7 text-center">날짜</th>
				<th id="hit" class="head-item mbr-fonts-style display-7 text-center">조회수</th>
                  
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
					<td id="noTD" class="body-item mbr-fonts-style display-7  text-center">${communityDto.comm_no}</td>
					<td class="body-item mbr-fonts-style display-7  text-center">${communityDto.comm_cate_nm}</td>
					<td class="body-item mbr-fonts-style display-7  text-center"><a href="javascript:communityDetail(${communityDto.comm_no})">${communityDto.comm_title}</a></td>
					<td class="body-item mbr-fonts-style display-7  text-center">${communityDto.mnick}</td>
					<td class="body-item mbr-fonts-style display-7  text-center"><fmt:formatDate value="${communityDto.comm_date}" pattern="yy.MM.dd"/></a></td>
					<td id="hitTD" class="body-item mbr-fonts-style display-7  text-center">${communityDto.comm_hitno}</td>
				</tr>
			</c:forEach>
			
            <c:forEach var="communityDto" items="${chat}">
				<tr>
					<td id="noTD" class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_no}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_cate_nm}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail(${communityDto.comm_no})">${communityDto.comm_title}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center">${communityDto.mnick}</td>
					<td id="dateTD" class="body-item mbr-fonts-style display-7 text-center"><fmt:formatDate value="${communityDto.comm_date}" pattern="yy.MM.dd"/></td>
					<td id="hitTD" class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_hitno}</td>
				</tr>
			</c:forEach>
			<c:forEach var="communityDto" items="${tips}">
				<tr>
					<td id="noTD" class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_no}</td>
					<td class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_cate_nm}</td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail(${communityDto.comm_no})">${communityDto.comm_title}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><fmt:formatDate value="${communityDto.comm_date}" pattern="yy.MM.dd"/></td>
					<td id="dateTD" class="body-item mbr-fonts-style display-7 text-center">${communityDto.mnick}</td>
					<td id="hitTD" class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_hitno}</td>
				</tr>
			</c:forEach>
			<c:forEach var="communityDto" items="${boast}">
				<tr>
					<td id="noTD"  class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_no}</td>
					<td  class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_cate_nm}</td>
					<td  class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail(${communityDto.comm_no})">${communityDto.comm_title}</a></td>
					<td  class="body-item mbr-fonts-style display-7 text-center"><fmt:formatDate value="${communityDto.comm_date}" pattern="yy.MM.dd"/></a></td>
					<td id="dateTD"  class="body-item mbr-fonts-style display-7 text-center">${communityDto.mnick}</td>
					<td id="hitTD"  class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_hitno}</td>
				</tr>
			</c:forEach>
			<c:forEach var="communityDto" items="${assign}">
				<tr>
					<td id="noTD" class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_no}</td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail()">${communityDto.comm_cate_nm}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><a href="javascript:communityDetail(${communityDto.comm_no})">${communityDto.comm_title}</a></td>
					<td class="body-item mbr-fonts-style display-7 text-center"><fmt:formatDate value="${communityDto.comm_date}" pattern="yy.MM.dd"/></td>
					<td id="dateTD" class="body-item mbr-fonts-style display-7 text-center">${communityDto.mnick}</td>
					<td id="hitTD" class="body-item mbr-fonts-style display-7 text-center">${communityDto.comm_hitno}</td>
				</tr>
			</c:forEach>    
              <tr>
				<td colspan="6" style="text-align: center; ">
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
	<style type="text/css">
		@media screen and (max-width: 768px){ 
			/* .table #date {
				display: none;
			}
			.table #dateTD {
				display: none;
			}
				
			.display-7 {
				font-size: 15px;
			}	 */	
			 .table #hit{
				display: none;
			}
			.table #hitTD{
				display: none;
			} 
			.display-7 {
				font-size: 12px;
			}		
			
		}
		
		@media screen and (max-width: 576px){ 
			/* .table #comDate {
				display: none;
			}
			.table #comDateTD {
				display: none;
			}	 */
			/*  .table #date{
				display: none;
			}
			.table #dateTD{
				display: none;
			}  */
			.display-7 {
				font-size: 12px;
			}		
		}
	</style>

	