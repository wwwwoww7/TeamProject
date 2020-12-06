<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<c:if test="${tutor_id == sessionMid}">
	<div class="mbr-section-btn" align="right">
	<a class="btn btn-success display-4 text-primary" href="<%=request.getContextPath()%>/mypage/noticeWriteForm">글쓰기</a>
	</div> 
</c:if>
<div class="container scroll">
	<c:if test="${fn:length(list) == 0 }">
		<div class="card col-12 col-md-12">
			<p class="mbr-text mbr-fonts-style mb-4 display-7 align-center text-center">
				<strong> 아직 공지사항이 없어요! </strong> 
			</p>
		</div>
    </c:if>
	<c:if test="${fn:length(list) > 0 }">
	
	
	<table class="table" cellspacing="0" data-empty="No matching records found">
		<thead>
			<tr class="table-heads ">
				<th class="head-item mbr-fonts-style display-7 text-center" width="10%" id="noticecase1">공지번호</th>
				<th class="head-item mbr-fonts-style display-7 text-center" width="70%" id="noticecase2">제목</th>
				<th class="head-item mbr-fonts-style display-7 text-center" width="19%" id="noticedate">작성날짜</th>
			</tr>
		</thead>
	
		<tbody>
		<c:forEach var="notice" items="${list}">
			<tr>
				<td class="body-item mbr-fonts-style display-7" align="center" id="noticecase1">${notice.class_notice_no}</td>
				<td class="body-item mbr-fonts-style display-7">
					<a class="text-black" href="javascript:noticeDetail(${notice.class_notice_no})">
						${notice.class_notice_title}
					</a>
				</td>
				<td class="body-item mbr-fonts-style display-7" align="center"><fmt:formatDate  value="${notice.class_notice_date}" pattern="yy-MM-dd"/></td>
			</tr>
		</c:forEach>
<%-- 		<c:if test="${fn:length(list) > 10 }"> --%>
			<tr>
				<td colspan="4" style="text-align: center;">
					<a class="text-black" style="margin-right: 15px; margin-top: 5px;" href="javascript:classNotice(1)">&laquo;</a>
					<c:if test="${pager.groupNo > 1}">
						<a class="text-black" style="margin-right: 15px;" href="javascript:classNotice(${pager.startPageNo-1})">&lt;</a>
					</c:if>
					<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
						<c:if test="${pager.pageNo == i}">
							<a class="text-success" style="margin-right: 15px;" href="javascript:classNotice(${i})">${i}</a>
						</c:if>
						<c:if test="${pager.pageNo !=i}">
							<a class="text-black" style="margin-right: 15px;" href="javascript:classNotice(${i})">${i}</a>
						</c:if>
					</c:forEach> 
					<c:if test="${pager.groupNo < pager.totalGroupNo}">
						<a class="text-black" style="margin-right: 15px;" href="javascript:classNotice(${pager.endPageNo+1})">&gt;</a>
					</c:if>
						<a class="text-black" href="javascript:classNotice(${pager.totalPageNo})">&raquo;</a>
				</td>		
			</tr>
<%-- 		</c:if> --%>
		</tbody>

	</table>
	</c:if>
	<br />
	
	<script type="text/javascript">
		function noticeDetail(class_notice_no){
			$.ajax({
				url : "<%=request.getContextPath()%>/class/noticeDetail",
				data :{ class_notice_no:class_notice_no },
				success : function(data){
					$("#tutorNotice").html(data);
				}
			});
			
		}
	
	</script>
	
</div>