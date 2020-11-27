<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container">
	<p>${cate}</p>
		<!-- 글쓰기 -->
		<div class="sector"> 
			<div align="right">
				<%-- <c:if test="${sessionMid==null}"> --%>
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
					<%-- </c:if> --%>
				</div>
			</div>
	<div id="fun1_result"></div>
	
	

	
	
	

	<table class="table table-hover">
			<thead>
			<tr>
				<th style="width:100px">번호</th>
				<th style="width:100px">분야</th>
				<th style="width:200px">날짜</th>
				<th style="width:250px">제목</th>
				<th style="width:250px">내용</th>
				<th style="width:200px">조회</th>
				<th style="width:200px">아이디</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="communityDto" items="${list}">
				<tr>
					<td><a href="javascript:communityDetail()">${communityDto.comm_no}</a></td>
					<td><a href="javascript:communityDetail()">${communityDto.comm_cate_nm}</a></td>
					<td><a href="javascript:communityDetail()"><fmt:formatDate value="${communityDto.comm_date}" pattern="yyyy-MM-dd"/></a></td>
					<td><a href="javascript:communityDetail()">${communityDto.comm_title}</a></td>
					<td><a href="javascript:communityDetail()">${communityDto.comm_content}</a></td>
					<td><a href="javascript:communityDetail()">${communityDto.comm_hitno}</a></td>
					<td><a href="javascript:communityDetail()">${communityDto.mid}</a></td>
				</tr>
			</c:forEach>
		</tbody>
		<tbody>
			<c:forEach var="communityDto" items="${chat}">
				<tr>
					<td>${communityDto.comm_no}</td>
					<td><a href="javascript:communityDetail()">${communityDto.comm_cate_nm}</a></td>
					<td><fmt:formatDate value="${communityDto.comm_date}" pattern="yyyy-MM-dd"/></td>
					<td>${communityDto.comm_title}</td>
					<td>${communityDto.comm_content}</td>
					<td>${communityDto.comm_hitno}</td>
					<td>${communityDto.mid}</td>
				</tr>
			</c:forEach>
		</tbody>
		<tbody>
			<c:forEach var="communityDto" items="${tips}">
				<tr>
					<td>${communityDto.comm_no}</td>
					<td><a href="javascript:communityDetail()">${communityDto.comm_cate_nm}</a></td>
					<td><fmt:formatDate value="${communityDto.comm_date}" pattern="yyyy-MM-dd"/></td>
					<td>${communityDto.comm_title}</td>
					<td>${communityDto.comm_content}</td>
					<td>${communityDto.comm_hitno}</td>
					<td>${communityDto.mid}</td>
				</tr>
			</c:forEach>
		</tbody>
		<tbody>
			<c:forEach var="communityDto" items="${boast}">
				<tr>
					<td>${communityDto.comm_no}</td>
						<td><a href="javascript:communityDetail()">${communityDto.comm_cate_nm}</a></td>
					<td><fmt:formatDate value="${communityDto.comm_date}" pattern="yyyy-MM-dd"/></td>
					<td>${communityDto.comm_title}</td>
					<td>${communityDto.comm_content}</td>
					<td>${communityDto.comm_hitno}</td>
					<td>${communityDto.mid}</td>
				</tr>
			</c:forEach>
		</tbody>
		
		<tbody>
			<c:forEach var="communityDto" items="${assign}">
				<tr>
					<td>${communityDto.comm_no}</td>
						<td><a href="javascript:communityDetail()">${communityDto.comm_cate_nm}</a></td>
					<td><fmt:formatDate value="${communityDto.comm_date}" pattern="yyyy-MM-dd"/></td>
					<td>${communityDto.comm_title}</td>
					<td>${communityDto.comm_content}</td>
					<td>${communityDto.comm_hitno}</td>
					<td>${communityDto.mid}</td>
				</tr>
			</c:forEach>
		</tbody>
	
		<tr>
			<td colspan="7" style="text-align: center; ">
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
				url:"community/communityAll",
				data: {pageNo:pageNo}, 
				success:function(data) {
					$("#fun1_result").html(data);
				}
			});
		}
	</script>

	
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<section class="section-table cid-shajIi4vc3" id="table1-1l">

  
  
  <div class="container container-table">
      
      
      <div class="table-wrapper">
        <div class="container">
          <div class="row search">
            <div class="col-md-6"></div>
            <div class="col-md-6">
                <div class="dataTables_filter">
                  <label class="searchInfo mbr-fonts-style display-7">button space</label>
                  <input class="form-control input-sm" disabled="">
                </div>
            </div>
          </div>
        </div>

        <div class="container scroll">
          <table class="table isSearch" cellspacing="0" data-empty="No matching records found">
            <thead>
              <tr class="table-heads ">
                  
                  
                  
                  
              <th class="head-item mbr-fonts-style display-7">
                      NAME</th><th class="head-item mbr-fonts-style display-7">
                      AGE</th><th class="head-item mbr-fonts-style display-7">
                      DATE</th><th class="head-item mbr-fonts-style display-7">
                      SALARY</th></tr>
            </thead>

            <tbody>
              
              
              
              
            <tr> 
                
                
                
                
              <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td><td class="body-item mbr-fonts-style display-7">44</td><td class="body-item mbr-fonts-style display-7">2025-10-17</td><td class="body-item mbr-fonts-style display-7">$317.000</td></tr><tr>
                
                
                
                
              <td class="body-item mbr-fonts-style display-7">Caren Rials</td><td class="body-item mbr-fonts-style display-7">35</td><td class="body-item mbr-fonts-style display-7">2024-04-12</td><td class="body-item mbr-fonts-style display-7">$445.500</td></tr><tr>
                
                
                
                
              <td class="body-item mbr-fonts-style display-7">Leon Rogol</td><td class="body-item mbr-fonts-style display-7">66</td><td class="body-item mbr-fonts-style display-7">2025-05-22</td><td class="body-item mbr-fonts-style display-7">$152.558</td></tr><tr>
                
                
                
                
              <td class="body-item mbr-fonts-style display-7">Shala Barrera</td><td class="body-item mbr-fonts-style display-7">70</td><td class="body-item mbr-fonts-style display-7">2025-05-15</td><td class="body-item mbr-fonts-style display-7">$459.146</td></tr></tbody>
          </table>
        </div>
        <div class="container table-info-container">
          <div class="row info">
            <div class="col-md-6">
              <div class="dataTables_info mbr-fonts-style display-7">
                <span class="infoBefore">Showing</span>
                <span class="inactive infoRows"></span>
                <span class="infoAfter">entries</span>
                <span class="infoFilteredBefore">(filtered from</span>
                <span class="inactive infoRows"></span>
                <span class="infoFilteredAfter"> total entries)</span>
              </div>
            </div>
            <div class="col-md-6"></div>
          </div>
        </div>
      </div>
    </div>
</section>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</div>