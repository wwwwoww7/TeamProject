<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container scroll">
	<table class="table table-hover" cellspacing="0" data-empty="No matching records found">
		<thead>
			<tr class="table-heads ">
				<th id="no"class="head-item mbr-fonts-style display-7">글번호</th>
				<th id="className"class="head-item mbr-fonts-style display-7">강의명</th>
				<th id="noticeName"class="head-item mbr-fonts-style display-7">제목</th>
				<th id="noticeMid"class="head-item mbr-fonts-style display-7">작성자</th>
				<th id="noticeDate"class="head-item mbr-fonts-style display-7">작성날짜</th>
			</tr>
		</thead>
	
		<tbody>
		<c:forEach var="notice" items="${list}">
			<tr>
				<td id="noTD" class="body-item mbr-fonts-style display-7">${notice.class_notice_no}</td>
				<td id="classNameTD" class="body-item mbr-fonts-style display-7">${notice.class_nm_s}</td>
				<td id="noticeNameTD"class="body-item mbr-fonts-style display-7">
					<a class="text-black" href="<%=request.getContextPath()%>/mypage/noticeDetail?class_notice_no=${notice.class_notice_no}">${notice.class_notice_title}</a>
				</td>
				<td id="noticeMidTD" class="body-item mbr-fonts-style display-7">${notice.mid}</td>
				<td id="noticeDateTD"class="body-item mbr-fonts-style display-7"><fmt:formatDate value="${notice.class_notice_date}" pattern="yyyy-MM-dd"/></td>
			</tr>
				<%-- <input type="hidden" id="classNo" name="classNo" value="${notice.class_no}"/> --%>
		</c:forEach>
		</tbody>
	</table>
	<table style="text-align: center; margin: auto;">
		<tr>
			<td colspan="4" style="text-align: center;">
				<a class="text-black" style="margin-right: 15px; margin-top: 5px;" href="javascript:tutorClassNotice(1)">&laquo;</a>
				<c:if test="${pager.groupNo > 1}">
					<a class="text-black" style="margin-right: 15px;" href="javascript:tutorClassNotice(${pager.startPageNo-1})">&lt;</a>
				</c:if>
				<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
					<c:if test="${pager.pageNo==i}">
						<a class="text-success" style="margin-right: 15px;" href="javascript:tutorClassNotice(${i})">${i}</a>
					</c:if>
					<c:if test="${pager.pageNo !=i}">
						<a class="text-black" style="margin-right: 15px;" href="javascript:tutorClassNotice(${i})">${i}</a>
					</c:if>
				</c:forEach> 
				<c:if test="${pager.groupNo < pager.totalGroupNo}">
					<a class="text-black" style="margin-right: 15px;" href="javascript:tutorClassNotice(${pager.endPageNo+1})">&gt;</a>
				</c:if>
				<a class="text-black" href="javascript:tutorClassNotice(${pager.totalPageNo})">&raquo;</a>
			</td>
	</table>
	<br />
	<a class="btn text-primary btn item-btn btn-success display-7" style="margin: 0px; border-radius: 100px;" 
		href="<%=request.getContextPath()%>/mypage/noticeWriteForm">글쓰기</a>
</div>