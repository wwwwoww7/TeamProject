<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%-- 2020. 11. 25 --%>
<div class="col-md-12">
	<p>
		test data
	</p>

	<p>
		<c:forEach var="hotclass" items="${HotclassList}">
			<p>${hotclass.class_no } , ${hotclass.class_nm } , ${hotclass.class_thum }</p><br/>
		</c:forEach>				
	</p>
	
</div> 
<div class="item features-image col-12 col-md-6 col-lg-3">
	
     <div class="item-wrapper">
         <div class="item-img">
             <img src="<%=request.getContextPath() %>/resources/assets/images/mbr-579x386.jpg" alt="" data-slide-to="3">
         </div>
         <div class="item-content">
             <h5 class="item-title mbr-fonts-style display-7"><strong>No Coding</strong></h5>
             <h6 class="item-subtitle mbr-fonts-style mt-1 display-7">
                 <em>Card Subtitle</em>
             </h6>
             
         </div>
         <div class="mbr-section-btn item-footer mt-2">
         <a href="<%=request.getContextPath()%>/class/classdetail?classNo=1" class="btn item-btn btn-success display-7">Try &gt;</a></div>
     </div>
 </div>
 <div class="item features-image col-12 col-md-6 col-lg-3">
     <div class="item-wrapper">
         <div class="item-img">
             <img src="<%=request.getContextPath() %>/resources/assets/images/mbr-1-579x772.jpeg" alt="" data-slide-to="0">
         </div>
         <div class="item-content">
             <h5 class="item-title mbr-fonts-style display-7"><strong>Unique Styles</strong></h5>
             <h6 class="item-subtitle mbr-fonts-style mt-1 display-7">
                 <em>Card Subtitle</em>
             </h6>
             
         </div>
         <div class="mbr-section-btn item-footer mt-2">
         <a href="<%=request.getContextPath()%>/class/classdetail?classNo=1" class="btn item-btn btn-warning display-7" >Try &gt;</a></div>
     </div>
 </div>
 <div class="item features-image col-12 col-md-6 col-lg-3">
     <div class="item-wrapper">
         <div class="item-img">
             <img src="<%=request.getContextPath() %>/resources/assets/images/mbr-1-579x386.jpg" alt="" data-slide-to="1">
         </div>
         <div class="item-content">
             <h5 class="item-title mbr-fonts-style display-7"><strong>Mobile Friendly</strong></h5>
             <h6 class="item-subtitle mbr-fonts-style mt-1 display-7">
                 <em>Card Subtitle</em>
             </h6>
             
         </div>
         <div class="mbr-section-btn item-footer mt-2">
         <a href="<%=request.getContextPath()%>/class/classdetail?classNo=1" class="btn item-btn btn-warning display-7">Try &gt;</a></div>
     </div>
 </div>
 <div class="item features-image Ñol-12 col-md-6 col-lg-3">
     <div class="item-wrapper">
         <div class="item-img">
             <img src="<%=request.getContextPath() %>/resources/assets/images/mbr-2-1920x1280.jpg" alt="" data-slide-to="3">
         </div>
         <div class="item-content">
             <h5 class="item-title mbr-fonts-style display-7"><strong>Mobile Friendly</strong></h5>
             <h6 class="item-subtitle mbr-fonts-style mt-1 display-7">
                 <em>Card Subtitle</em>
             </h6>
             
         </div>
         <div class="mbr-section-btn item-footer mt-2">
         <a href="<%=request.getContextPath()%>/class/classdetail?classNo=1" class="btn item-btn btn-warning display-7">Try &gt;</a></div>
     </div>
 </div>
 