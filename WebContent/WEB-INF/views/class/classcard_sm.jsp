<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%-- 2020. 11. 26 --%>
 
<c:forEach var="classes" items="${classList}">
	<div class="col-12 col-md-6 col-lg-3 item gallery-image">
        <div class="item-wrapper" data-toggle="modal" data-target="${classes.class_nm_s }">
            <a href="<%=request.getContextPath()%>/class/classdetail?classNo=${classes.class_no }">
            	<img class="w-100 rounded" src="<%=request.getContextPath() %>/resources/images/class/${classes.class_thum}" alt="" data-slide-to="0" data-target="${classes.class_nm_s}">
            </a>
            <div class="icon-wrapper">
                <span class="mobi-mbri mobi-mbri-search mbr-iconfont mbr-iconfont-btn"></span>
            </div>
        </div>
        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
           [ ${classes.class_cate_nm} ]  ${classes.class_nm_s} <a href="<%=request.getContextPath()%>/class/classdetail?classNo=${classes.class_no }" class="text-success">Try</a>
        </h6>
    </div>
</c:forEach>
