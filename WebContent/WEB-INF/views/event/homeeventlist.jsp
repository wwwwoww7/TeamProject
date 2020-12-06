<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 2020. 12. 1 --%>


<c:forEach var="eventItem" items="${eventList}">
	<a href="<%=request.getContextPath() %>/event/eventDetail?event_no=${eventItem.event_no}">
	<div class="mbr-gallery-item mbr-gallery-item--p1" data-video-url="false"  >
		<div href="#" data-slide-to="0" data-toggle="modal">
			<img class="rounded" src="<%=application.getContextPath()%>/event/event_imgDownload?event_img=${eventItem.event_img}" alt="" title=""/>
			<span class="icon-focus"></span>
			<span class="mbr-gallery-title mbr-fonts-style display-7">${eventItem.event_nm}</span>
		</div>
	</div>
	</a>
</c:forEach>
<!-- 
  object-fit: cover; -->
  
  
  