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
					<td>${qaItem.mnick}</td>
					<td><fmt:formatDate value="${qaItem.class_qa_date}" pattern="yyyy-MM-dd"/></td>
				</tr>
			</c:forEach>
		
		</tbody>
	</table>
</c:if>