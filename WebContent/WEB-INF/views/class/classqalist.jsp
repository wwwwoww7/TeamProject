<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%-- 2020. 12. 3 --%>


<c:if test="${fn:length(qaList) == 0 }">
	<p class="mbr-text mbr-fonts-style mt-5 display-7 align-center text-center">
		<strong> 아직 작성된 문의가 없어요! </strong> 
	</p>
</c:if>
<div>
</div>
<c:if test="${fn:length(qaList) > 0 }">
	<table class="table table-hover">
		<thead>
			<tr class="table-heads ">
	<!--        <th class="head-item mbr-fonts-style display-7 text-center">글번호</th> -->
				<th class="head-item mbr-fonts-style display-7 text-center">제목</th>
				<th class="head-item mbr-fonts-style display-7 text-center">작성자</th>
				<th class="head-item mbr-fonts-style display-7 text-center">작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="qaItem" items="${qaList}">
				<tr>
	<%-- 	        <td>${qaItem.class_qa_no}</td> --%>
					<td><a class="text-black" href="javascript:pageLoad(2,${qaItem.class_qa_no})">${qaItem.class_qa_title}</a></td>
					<td class="text-center">${qaItem.mnick}</td>
					<td class="text-center"><fmt:formatDate value="${qaItem.class_qa_date}" pattern="yyyy-MM-dd"/></td>
				</tr>
			</c:forEach>
			
<%-- 			<c:if test="${fn:length(qaList) > 5 }"> --%>
				<tr>
					<td colspan="4" style="text-align: center;">
						<a class="text-black" style="margin-right: 15px; margin-top: 5px;" href="javascript:pageLoad(1,0,1)">&laquo;</a>
						<c:if test="${pager.groupNo > 1}">
							<a class="text-black" style="margin-right: 15px;" href="javascript:pageLoad(1,0,${pager.startPageNo-1})">&lt;</a>
						</c:if>
						<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
							<c:if test="${pager.pageNo == i}">
								<a class="text-success" style="margin-right: 15px;" href="javascript:pageLoad(1,0,${i})">${i}</a>
							</c:if>
							<c:if test="${pager.pageNo !=i}">
								<a class="text-black" style="margin-right: 15px;" href="javascript:pageLoad(1,0,${i})">${i}</a>
							</c:if>
						</c:forEach> 
						<c:if test="${pager.groupNo < pager.totalGroupNo}">
							<a class="text-black" style="margin-right: 15px;" href="javascript:pageLoad(1,0,${pager.endPageNo+1})">&gt;</a>
						</c:if>
							<a class="text-black" href="javascript:pageLoad(1,0,${pager.totalPageNo})">&raquo;</a>
					</td>		
				</tr>
<%-- 			</c:if> --%>
		</tbody>
	</table>
</c:if>