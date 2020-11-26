<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%-- 2020. 11. 26 --%>
 
	<c:forEach var="classes" items="${newclassList}">
		<div class="col-12 col-md-6 col-lg-3 item gallery-image">
	        <div class="item-wrapper" data-toggle="modal" data-target="#shfucWI0Kp-modal">
	            <img class="w-100" src="<%=request.getContextPath() %>/resources/images/class/${classes.class_thum}" alt="" data-slide-to="0" data-target="#lb-shfucWI0Kp">
	            <div class="icon-wrapper">
	                <span class="mobi-mbri mobi-mbri-search mbr-iconfont mbr-iconfont-btn"></span>
	            </div>
	        </div>
	        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
	           [ ${classes.class_cate_nm} ]  ${classes.class_nm_s} Image Caption and <a href="#" class="text-success">Link</a>
	        </h6>
	    </div>
	</c:forEach>

  
   
   
    <div class="col-12 col-md-6 col-lg-3 item gallery-image">
        <div class="item-wrapper" data-toggle="modal" data-target="#shfucWI0Kp-modal">
            <img class="w-100" src="<%=request.getContextPath() %>/resources/assets/images/features1.jpg" alt="" data-slide-to="0" data-target="#lb-shfucWI0Kp">
            <div class="icon-wrapper">
                <span class="mobi-mbri mobi-mbri-search mbr-iconfont mbr-iconfont-btn"></span>
            </div>
        </div>
        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
            Image Caption and <a href="#" class="text-success">Link</a>
        </h6>
    </div>
   
   
   
    <div class="col-12 col-md-6 col-lg-3 item gallery-image">
        <div class="item-wrapper" data-toggle="modal" data-target="#shfucWI0Kp-modal">
            <img class="w-100" src="<%=request.getContextPath() %>/resources/assets/images/features2.jpg" alt="" data-slide-to="1" data-target="#lb-shfucWI0Kp">
            <div class="icon-wrapper">
                <span class="mobi-mbri mobi-mbri-search mbr-iconfont mbr-iconfont-btn"></span>
            </div>
        </div>
        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
            Image Caption and <a href="#" class="text-success">Link</a>
        </h6>
    </div>
    
    <%-- <div class="col-12 col-md-6 col-lg-3 item gallery-image">
        <div class="item-wrapper" data-toggle="modal" data-target="#shfucWI0Kp-modal">
            <img class="w-100" src="<%=request.getContextPath() %>/resources/assets/images/features4.jpg" alt="" data-slide-to="2" data-target="#lb-shfucWI0Kp">
            <div class="icon-wrapper">
                <span class="mobi-mbri mobi-mbri-search mbr-iconfont mbr-iconfont-btn"></span>
            </div>
        </div>
        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
            Image Caption and <a href="#" class="text-primary">Link</a>
        </h6>
    </div>
    
    <div class="col-12 col-md-6 col-lg-3 item gallery-image">
        <div class="item-wrapper" data-toggle="modal" data-target="#shfucWI0Kp-modal">
            <img class="w-100" src="<%=request.getContextPath() %>/resources/assets/images/features3.jpg" alt="" data-slide-to="3" data-target="#lb-shfucWI0Kp">
            <div class="icon-wrapper">
                <span class="mobi-mbri mobi-mbri-search mbr-iconfont mbr-iconfont-btn"></span>
            </div>
        </div>
        <h6 class="mbr-item-subtitle mbr-fonts-style align-center mb-2 mt-2 display-7">
            Image Caption and <a href="#" class="text-primary">Link</a>
        </h6>
    </div> --%>
    
    
    
    
    
  
    
    
    
