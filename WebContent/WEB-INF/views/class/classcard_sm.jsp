<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%-- 2020. 11. 26 --%>

<!-- <div id="demo" class="carousel slide" data-ride="carousel">

  Indicators
	<ul class="carousel-indicators">
		<li data-target="#demo" data-slide-to="0" class="active"></li>
		<li data-target="#demo" data-slide-to="1"></li>
		<li data-target="#demo" data-slide-to="2"></li>
	</ul>
  
  The slideshow
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img src="la.jpg" alt="Los Angeles" width="1100" height="500">
		</div>
		<div class="carousel-item">
			<img src="chicago.jpg" alt="Chicago" width="1100" height="500">
		</div>
		<div class="carousel-item">
			<img src="ny.jpg" alt="New York" width="1100" height="500">
		</div>
	</div>

	<a class="carousel-control-prev" href="#demo" data-slide="prev">
		<span class="carousel-control-prev-icon"></span>
	</a>
	<a class="carousel-control-next" href="#demo" data-slide="next">
		<span class="carousel-control-next-icon"></span>
	</a>
</div> -->



 
	<c:forEach var="classes" items="${classList}" begin="1" end="">
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

<%-- 	<c:forEach var="classes" items="${newclassList}">
		<div class="col-12 col-md-6 col-lg-3 item gallery-image">
	        <div class="item-wrapper" data-toggle="modal" data-target="#shfucWI0Kp-modal">
	            <img class="w-100" src="<%=request.getContextPath() %>/resources/images/class/${classes.class_thum}" alt="" data-slide-to="0" data-target="#lb-shfucWI0Kp">
	            <div class="icon-wrapper">
	                <span class="mobi-mbri mobi-mbri-search mbr-iconfont mbr-iconfont-btn"></span>
	            </div>
	        </div>
	        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
	           [ ${classes.class_cate_nm} ]  ${classes.class_nm_s} <a href="<%=request.getContextPath()%>/class/classdetail?classNo=${classes.class_no }" class="text-success">Try</a>
	        </h6>
	    </div>
	</c:forEach>
    --%>
  
    
<!--     <div class="col-12 col-md-6 col-lg-3 item gallery-image"> -->
<!--         <div class="item-wrapper" data-toggle="modal" data-target="#shfucWI0Kp-modal"> -->
<%--             <img class="w-100" src="<%=request.getContextPath() %>/resources/images/class/class_02.png" alt="" data-slide-to="0" data-target="#lb-shfucWI0Kp"> --%>
<!--             <div class="icon-wrapper"> -->
<!--                 <span class="mobi-mbri mobi-mbri-search mbr-iconfont mbr-iconfont-btn"></span> -->
<!--             </div> -->
<!--         </div> -->
<!--         <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7"> -->
<%--            [ Category ] Class Name <a href="<%=request.getContextPath()%>/class/classdetail?classNo=2" class="text-success">Try</a> --%>
<!--         </h6> -->
<!--     </div> -->
    
