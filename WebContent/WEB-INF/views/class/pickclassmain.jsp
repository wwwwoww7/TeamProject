<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 2020. 11. 30 --%>

<c:if test="${sessionMid == '' || sessionMid == null }">
	<a class="mbr-iconfont" href="javascript:pick(0)">
		<img id="pickimg" src="<%= request.getContextPath()%>/resources/images/blackheart.png"/>
	</a>
</c:if>
<c:if test="${sessionMid != '' && sessionMid != null}">
	<c:if test="${hotclass.pick_yn == sessionMid}">
		<a class="mbr-iconfont" href="javascript:pick(1)">
			<img id="pickimg" src="<%= request.getContextPath()%>/resources/images/redheart.png"/>
		</a>
	</c:if>
	<c:if test="${hotclass.pick_yn == 'N'}">
		<a class="mbr-iconfont" href="javascript:pick(2)">
			<img id="pickimg" src="<%= request.getContextPath()%>/resources/images/blackheart.png"/>
		</a>
	</c:if>
</c:if>