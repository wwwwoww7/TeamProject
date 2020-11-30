<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%-- 2020. 11. 25 --%>
 
<c:forEach var="hotclass" items="${hotclassList}">

	<div class="item features-image col-12 col-md-6 col-lg-3">
		
	     <div class="item-wrapper">
	         <div class="item-img">
	         	<img src="<%=request.getContextPath() %>/resources/images/class/${hotclass.class_thum }" alt="" data-slide-to="3">
			 </div>
	         <div class="item-content">
	         
	         	<table style="width: 100%;">
	         		<tr >
	         			<td>
	         				<h5 class="item-title mbr-fonts-style display-7">
				             	<strong>${hotclass.class_cate_nm }</strong>
				            </h5>
	         			</td>
	         			<td id="tabletd" rowspan="2">
	         				<h5 class="display-7">
	         					<a class="mbr-iconfont" href="#">
	         						<c:if test="${sessionMid == '' || sessionMid == null }">
         								<img id="pickimg" src="<%= request.getContextPath()%>/resources/images/blackheart.png"/>
	         						</c:if>
	         						<c:if test="${sessionMid != '' && sessionMid != null}">
	         							<c:if test="${hotclass.pick_yn == sessionMid}">
		         							<img id="pickimg" src="<%= request.getContextPath()%>/resources/images/redheart.png"/>
		         							
		         						</c:if>
		         						<c:if test="${hotclass.pick_yn == 'N'}">
		         							<img id="pickimg" src="<%= request.getContextPath()%>/resources/images/blackheart.png"/>
	<!-- 				                    <span class="btn-black-outline mbri-hearth" ></span> -->
					               		</c:if>
	         						
	         						</c:if>
	         						
				               
				                </a>
	         				
	         				</h5>
	         			</td>
	         		</tr>
					<tr>
						<td>
							<h6 class="item-subtitle mbr-fonts-style mt-1 display-7">
				                 <em>${hotclass.class_nm_s }</em>
				            </h6>
						</td>
					</tr>
	         	</table>
	         	
	            
	         
	           
	             
	         </div>
	         <div class="mbr-section-btn item-footer mt-2">
		         <a href="<%=request.getContextPath()%>/class/classdetail?classNo=${hotclass.class_no }" 
		            class="btn item-btn btn-success display-7">수강하기
		            <!-- 버튼 주황색 :  class="btn item-btn btn-warning display-7"   &gt;-->
		         </a>
	         </div>
	     </div>
	 </div>





</c:forEach>




 
 
 
 
<!--  <div class="item features-image col-12 col-md-6 col-lg-3"> -->
<!--      <div class="item-wrapper"> -->
<!--          <div class="item-img"> -->
<%--              <img src="<%=request.getContextPath() %>/resources/assets/images/mbr-1-579x772.jpeg" alt="" data-slide-to="0"> --%>
<!--          </div> -->
<!--          <div class="item-content"> -->
<!--              <h5 class="item-title mbr-fonts-style display-7"><strong>Unique Styles</strong></h5> -->
<!--              <h6 class="item-subtitle mbr-fonts-style mt-1 display-7"> -->
<!--                  <em>Card Subtitle</em> -->
<!--              </h6> -->
             
<!--          </div> -->
<!--          <div class="mbr-section-btn item-footer mt-2"> -->
<%--          <a href="<%=request.getContextPath()%>/class/classdetail?classNo=1" class="btn item-btn btn-warning display-7"   >Try &gt;</a></div> --%>
<!--      </div> -->
<!--  </div>  -->