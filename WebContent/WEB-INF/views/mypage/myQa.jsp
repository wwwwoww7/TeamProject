<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container scroll">
	<table class="table table-hover" cellspacing="0" data-empty="No matching records found">
		<thead>
			<tr class="table-heads ">  
			<th class="head-item mbr-fonts-style display-7">강의명</th>
			<th class="head-item mbr-fonts-style display-7">문의제목</th>
			<th class="head-item mbr-fonts-style display-7">답변여부</th>
			<th id="qaMid" class="head-item mbr-fonts-style display-7">작성자</th>
			<th id="qaDate" class="head-item mbr-fonts-style display-7">문의날짜</th>
		</tr>
		</thead>
		<tbody> 
		<c:forEach var="qalist" items="${list}"> 
			<tr> 
				<td class="body-item mbr-fonts-style display-7">${qalist.class_nm_s}</td>
				<td class="body-item mbr-fonts-style display-7">
					<a class="text-black" href="<%=request.getContextPath()%>/mypage/myqadetail?class_qa_no=${qalist.class_qa_no}">${qalist.class_qa_title}</a>
				</td>
				<td class="body-item mbr-fonts-style display-7">
					<c:if test="${qalist.class_qa_answer != null}">답변완료</c:if>
					<c:if test="${qalist.class_qa_answer == null}">미응답</c:if>
				</td>
				<td id="qaMidTD" class="body-item mbr-fonts-style display-7">${qalist.mnick}</td>
				<td id="qaDateTD" class="body-item mbr-fonts-style display-7">
					<fmt:formatDate value="${qalist.class_qa_date}" pattern="yyyy-MM-dd"/>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<table style="text-align: center; margin: auto;">
		<!-- 하단 페이징 버튼 -->
		<tr>
			<td colspan="4" style="text-align: center;">
				<a class="text-black" style="margin-right: 15px; margin-top: 5px;" href="javascript:myQa(1)">&laquo;</a>
				<c:if test="${pager.groupNo > 1}">
					<a class="text-black" style="margin-right: 15px;" href="javascript:myQa(${pager.startPageNo-1})">&lt;</a>
				</c:if>
				<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
					<c:if test="${pager.pageNo==i}">
						<a class="text-success" style="margin-right: 15px;" href="javascript:myQa(${i})">${i}</a>
					</c:if>
					<c:if test="${pager.pageNo !=i}">
						<a class="text-black" style="margin-right: 15px;" href="javascript:myQa(${i})">${i}</a>
					</c:if>
				</c:forEach> 
				<c:if test="${pager.groupNo < pager.totalGroupNo}">
					<a class="text-black" style="margin-right: 15px;" href="javascript:myQa(${pager.endPageNo+1})">&gt;</a>
				</c:if>
				<a class="text-black" href="javascript:myQa(${pager.totalPageNo})">&raquo;</a>
			</td>
		</tr>
	</table>
</div>