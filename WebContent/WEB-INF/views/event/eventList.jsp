<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 ${ingend}
<div id="ingendview" class="tabcontent"></div>
<div class="container-fruid" >
	<div class="row" >
		<table style="border: 0px solid; margin: 20px; padding: 60px;" width="55%" class=""  >
			<tr>
			<th style="width:100px">이벤트 번호</th>
				<th style="width:200px">이벤트제목</th>
				<th></th>
				<th style="width:100px">시작날짜</th>
				<th style="width:100px">마감날짜</th>
			</tr>
			
			<c:forEach var="event" items="${all}">
				<tr>
					<td>${event.event_no}</td>
					<td>${event.event_nm}</td>
					<td><img src="<%=application.getContextPath()%>/resources/img/ar/${event.event_img}" width="400" height="240"/><a href="#"/>
					</td>
					<td><fmt:formatDate value="${event.event_start}" pattern="yyyy-MM-dd"/> </td>
					<td><fmt:formatDate value="${event.event_end}" pattern="yyyy-MM-dd"/></td>
				</tr>	
			</c:forEach>
			
			<tr>
				<td colspan="4" style="text-align: center;">
					<a class="btn btn-outline-primary btn-sm" href="javascript:eventList(1)">처음</a> 
					
					<c:if test="${pager.groupNo > 1}">
						<a class="btn btn-outline-info btn-sm" href="javascript:eventList(${pager.startPageNo-1})">이전</a> 
					</c:if>
					
					 <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
					 	<c:if test="${pager.pageNo == i }">
					 		<a class="btn btn-danger btn-sm" href="javascript:eventList(${i})">${i}</a> 
					 	</c:if>
					 	<c:if test="${pager.pageNo != i }">
					 		<a class="btn btn-outline-info btn-sm" href="javascript:eventList(${i})">${i}</a> 
					 	</c:if>
					 	
					 </c:forEach> 
					 
					 <c:if test="${pager.groupNo < pager.totalGroupNo}">
					 <a class="btn btn-outline-info btn-sm" href="javascript:eventList(${pager.endPageNo+1})">다음</a>
					 </c:if>
					 
					 <a class="btn btn-outline-primary btn-sm" href="javascript:eventList(${pager.totalPageNo})">마지막</a> <%--${pager.totalPageNo}으로 그냥 보내면html조각으로 보내져서 다른 화면이 나오므로 자바스크립트 함수를 호출해야한다 --%>
				</td>
			</tr>
			</table>
		</div>
		
	</div>
</div>