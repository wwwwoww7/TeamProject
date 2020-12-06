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
        	<table style="width: 100%;">
        		<tr>
        			<td>
        				[ ${classes.class_cate_nm} ]
        			</td>
        			<td rowspan="2" class="text-right">
        				<h5 id="heartpagenewc${classes.class_no}" class="display-7">
	         					
         					<c:if test="${sessionMid == '' || sessionMid == null }">
								<a class="mbr-iconfont" href="javascript:pick(1, 0, ${classes.class_no})">
									<img id="pickimg1" src="<%= request.getContextPath()%>/resources/images/blackheart.png"/>
								</a>
							</c:if>
							<c:if test="${sessionMid != '' && sessionMid != null}">
								<c:if test="${classes.pick_yn == 'N'}">
									<a class="mbr-iconfont" href="javascript:pick(1, 1, ${classes.class_no})">
										<img id="pickimg1" src="<%= request.getContextPath()%>/resources/images/blackheart.png"/>
									</a>
								</c:if>
								<c:if test="${classes.pick_yn == sessionMid}">
									<a class="mbr-iconfont" href="javascript:pick(1, 2, ${classes.class_no})">
										<img id="pickimg2" src="<%= request.getContextPath()%>/resources/images/redheart.png"/>
									</a>
								</c:if>
							</c:if>
							
         				</h5>
        			
        			
        			</td>
        			
        		</tr>
        		<tr>
        			<td>
        				 ${classes.class_nm_s} <a href="<%=request.getContextPath()%>/class/classdetail?classNo=${classes.class_no }" class="text-success">Try</a>
        			</td>
        		</tr>
        	</table>
         
        </h6>
    </div>
</c:forEach>
 