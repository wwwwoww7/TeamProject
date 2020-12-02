<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container scroll">
	<table class="table" cellspacing="0" data-empty="No matching records found">
		<thead>
			<tr class="table-heads ">
				<th class="head-item mbr-fonts-style display-7 text-center" width="10%">공지번호</th>
				<th class="head-item mbr-fonts-style display-7 text-center" width="70%" >제목</th>
				<th class="head-item mbr-fonts-style display-7 text-center" width="19%" >작성날짜</th>
			</tr>
		</thead>
	
		<tbody>
		<c:forEach var="notice" items="${list}">
			<tr>
				<td class="body-item mbr-fonts-style display-7" align="center" >${notice.class_notice_no}</td>
				<td class="body-item mbr-fonts-style display-7">
					<a class="text-black" href="javascript:noticeDetail(${notice.class_notice_no})">
						${notice.class_notice_title}
					</a>
				</td>
				<td class="body-item mbr-fonts-style display-7" align="center"><fmt:formatDate value="${notice.class_notice_date}" pattern="yyyy-MM-dd"/></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<table style="text-align: center; margin: auto;">
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
	</table>
	<br />
	<div>${tutor_id}</div>
	<div>${sessionMid}</div>
	<c:if test="${tutor_id == sessionMid}">
		<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" 
			href="<%=request.getContextPath()%>/mypage/noticeWriteForm">글쓰기</a>
	</c:if>
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