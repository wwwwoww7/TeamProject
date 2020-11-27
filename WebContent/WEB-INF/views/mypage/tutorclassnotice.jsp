<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container scroll">
	<table class="table" cellspacing="0" data-empty="No matching records found">
		<thead>
			<tr class="table-heads ">
				<th class="head-item mbr-fonts-style display-7">공지번호</th>
				<th class="head-item mbr-fonts-style display-7">강의명</th>
				<th class="head-item mbr-fonts-style display-7">제목</th>
				<th class="head-item mbr-fonts-style display-7">작성자</th>
				<th class="head-item mbr-fonts-style display-7">작성날짜</th>
			</tr>
		</thead>
	
		<tbody>
		<c:forEach var="notice" items="${list}">
			<tr>
				<td class="body-item mbr-fonts-style display-7">${notice.class_notice_no}</td>
				<td class="body-item mbr-fonts-style display-7">${notice.class_nm_s}</td>
				<td class="body-item mbr-fonts-style display-7">
				<a class="text-black" href="<%=request.getContextPath()%>/mypage/noticeDetail?class_notice_no=${notice.class_notice_no}">${notice.class_notice_title}</a></td>
				<td class="body-item mbr-fonts-style display-7">${notice.mid}</td>
				<td class="body-item mbr-fonts-style display-7"><fmt:formatDate value="${notice.class_notice_date}" pattern="yyyy-MM-dd"/></td>
			</tr>
				<%-- <input type="hidden" id="classNo" name="classNo" value="${notice.class_no}"/> --%>
		</c:forEach>
		</tbody>
	</table>
	<table style="text-align: center; margin: auto;">
		<tr>
			<td colspan="4" style="text-align: center;">
				<a class="btn btn-sm item-btn btn-success display-7" href="javascript:tutorClassNotice(1,mid)">처음</a>
				<c:if test="${pager.groupNo > 1}">
					<a class="btn btn-sm item-btn btn-success display-7" href="javascript:tutorClassNotice(${pager.startPageNo-1},mid)">이전</a>
				</c:if>
				<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
					<c:if test="${pager.pageNo==i}">
						<a class="btn btn-sm" href="javascript:tutorClassNotice(${i},mid)">${i}</a>
					</c:if>
					<c:if test="${pager.pageNo !=i}">
						<a class="btn btn-sm" href="javascript:tutorClassNotice(${i},mid)">${i}</a>
					</c:if>
				</c:forEach> 
				<c:if test="${pager.groupNo < pager.totalGroupNo}">
					<a class="btn btn-sm item-btn btn-success display-7" href="javascript:tutorClassNotice(${pager.endPageNo+1},mid)">다음</a>
				</c:if>
					<a class="btn btn-sm item-btn btn-success display-7" href="javascript:tutorClassNotice(${pager.totalPageNo},mid)">맨끝</a>
			</td>
	</table>
	<br />
	<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" 
		href="<%=request.getContextPath()%>/mypage/noticeWriteForm">글쓰기</a>
</div>