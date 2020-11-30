<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 2020. 11. 30 --%>



${pickYN }

<c:if test="${pickYN == \"0\"} ">
	<div class="mbr-section-btn align-center">
		<a class="btn btn-md btn-white-outline display-4" href="">
	        <span class="mbr-iconfont mbri-hearth"></span> 왜 안나와 ♡
	    </a>
	</div>
</c:if>

<c:if test="${pickYN == 1} ">
	<a class="btn item-btn btn-warning display-4" href="javascript:pick()">🧡</a>
</c:if>


<!-- if로 db에 값이 있으면 칠한 하트 없으면 X -->
