<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


	<table class="table" cellspacing="0" data-empty="No matching records found">
		<thead>
			<tr class="table-heads ">  
			<th class="head-item mbr-fonts-style display-7">강의명</th>
			<th class="head-item mbr-fonts-style display-7">문의분류</th>
			<th class="head-item mbr-fonts-style display-7">문의제목</th>
			<th class="head-item mbr-fonts-style display-7">작성자</th>
			<th class="head-item mbr-fonts-style display-7">문의날짜</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="qalist" items="${list}"> 
		<tr> 
			<td class="body-item mbr-fonts-style display-7">${qalist.class_nm_s}</td>
			<td class="body-item mbr-fonts-style display-7">${qalist.class_qa_cate}</td>
			<td class="body-item mbr-fonts-style display-7">
				<a class="text-black" href="<%=request.getContextPath()%>/mypage/qaDetail?class_qa_no=${qalist.class_qa_no}">${qalist.class_qa_title}</a>
			</td>
			<td class="body-item mbr-fonts-style display-7">${qalist.writer_id}</td>
			<td class="body-item mbr-fonts-style display-7">
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
				<a class="text-black" style="margin-right: 15px; margin-top: 5px;" href="javascript:tutorClassNotice(1,${pager.mid})">&laquo;</a>
				<c:if test="${pager.groupNo > 1}">
					<a class="text-black" style="margin-right: 15px;" href="javascript:tutorClassNotice(${pager.startPageNo-1},${pager.mid})">&lt;</a>
				</c:if>
				<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
					<c:if test="${pager.pageNo==i}">
						<a class="text-success" style="margin-right: 15px;" href="javascript:tutorClassNotice(${i},${pager.mid})">${i}</a>
					</c:if>
					<c:if test="${pager.pageNo !=i}">
						<a class="text-black" style="margin-right: 15px;" href="javascript:tutorClassNotice(${i},${pager.mid})">${i}</a>
					</c:if>
				</c:forEach> 
				<c:if test="${pager.groupNo < pager.totalGroupNo}">
					<a class="text-black" style="margin-right: 15px;" href="javascript:tutorClassNotice(${pager.endPageNo+1},${pager.mid})">&gt;</a>
				</c:if>
					<a class="text-black" href="javascript:tutorClassNotice(${pager.totalPageNo},${pager.mid})">&raquo;</a>
			</td>
		</tr>
	</table>