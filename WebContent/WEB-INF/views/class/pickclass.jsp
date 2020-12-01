<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 2020. 11. 30 --%>

<c:if test="${pick_yn==0}">
	<div class="mbr-section-btn align-center">
		<a class="" href="javascript:pick(1)"><img id="pickimg1" src="<%= request.getContextPath()%>/resources/images/blackheart.png" /></a> 
	</div>
</c:if>

<c:if test="${pick_yn == 1}">
	<a class="" href="javascript:pick(2)"><img id="pickimg2" src="<%= request.getContextPath()%>/resources/images/redheart.png" /></a> 
</c:if> 