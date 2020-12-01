<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<section id="table_list" class="section-table cid-shflacCz1o" >
 <div class="container-fruid" >
	<div class="row" >
		<table style="border: 0px solid; margin: 20px; padding: 60px;" width="55%" class=""  >
			<tr>
				<th style="width:100px"><input type="hidden" value="이벤트 번호"/></th>
				<th style="width:200px">이벤트제목</th>
				<th></th>
				<th style="width:100px">시작날짜</th>
				<th style="width:100px">마감날짜</th>
			</tr>
			 
			<c:forEach var="event" items="${all2}">
				<tr>
					<td><input type="hidden" value="${event.event_no}"/></td>
					<td><a class="text-black"  href="event/goup">${event.event_nm}</a></td>
					<td><div style="margin:15px"><a href="event/goup"><img src="<%=application.getContextPath()%>/resources/img/ar/${event.event_img}" width="400" height="240" /></a></div>
					</td>
					<td><fmt:formatDate value="${event.event_start}" pattern="yyyy-MM-dd"/> </td>
					<td><fmt:formatDate value="${event.event_end}" pattern="yyyy-MM-dd"/></td>
				</tr>	
			</c:forEach>
				
			<tr>
				<td colspan="4" style="text-align: center;">
					<a class="btn btn-outline btn-sm" href="javascript:closeCity(0,1)">&laquo</a> 
					
					<c:if test="${pager.groupNo > 0}">
						<a class="btn btn-outline btn-sm" href="javascript:closeCity(0,${pager.startPageNo-1})">이전</a> 
					</c:if> 
					
					 <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
					 	<c:if test="${pager.pageNo == i }">
					 		<a class="btn btn btn-sm" href="javascript:closeCity(0,${i})">${i}</a> 
					 	</c:if>
					 	<c:if test="${pager.pageNo != i }">
					 		<a class="btn btn-outline btn-sm" href="javascript:closeCity(0,${i})">${i}</a> 
					 	</c:if>
					 	
					 </c:forEach> 
					 
					  <c:if test="${pager.groupNo < pager.totalGroupNo+1}">
					 <a class="btn btn-outline btn-sm" href="javascript:closeCity(0,${pager.endPageNo+1})">다음</a>
					 </c:if>
					 
					 <a class="btn btn-outline btn-sm" href="javascript:closeCity(0,${pager.totalPageNo})">&raquo</a>
				</td>
			</tr>
			</table>
		</div>
	</div>
</section>
<style type="text/css">
 	
	#table_list {
		background-color: white;
		padding-top: 0;
	}
 
 </style>