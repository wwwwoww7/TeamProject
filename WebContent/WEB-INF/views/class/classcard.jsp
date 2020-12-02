<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%-- 2020. 11. 25 --%>
 
<c:forEach var="hotclass" items="${hotclassList}">

	<div class="item features-image col-12 col-md-6 col-lg-3">
		
	     <div class="item-wrapper">
	         <div class="item-img">
	         	<img class="img-thumbnail" src="<%=request.getContextPath() %>/resources/images/class/${hotclass.class_thum }" alt="" data-slide-to="3">
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
	         				<h5 id="heartpage${hotclass.class_no}" class="display-7">
	         					<c:if test="${sessionMid == '' || sessionMid == null }">
									<a class="mbr-iconfont" href="javascript:pick(0, ${hotclass.class_no})">
										<img id="pickimg1" src="<%= request.getContextPath()%>/resources/images/blackheart.png"/>
									</a>
								</c:if>
								<c:if test="${sessionMid != '' && sessionMid != null}">
									<c:if test="${hotclass.pick_yn == 'N'}">
										<a class="mbr-iconfont" href="javascript:pick(1, ${hotclass.class_no})">
											<img id="pickimg1" src="<%= request.getContextPath()%>/resources/images/blackheart.png"/>
										</a>
									</c:if>
									<c:if test="${hotclass.pick_yn == sessionMid}">
										<a class="mbr-iconfont" href="javascript:pick(2, ${hotclass.class_no})">
											<img id="pickimg2" src="<%= request.getContextPath()%>/resources/images/redheart.png"/>
										</a>
									</c:if>
								</c:if>
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

<script type="text/javascript">
	function pick(clk, class_no){
		var mid = "${sessionMid}"; 
		var mtype = "${member.mtype}"; 
		
		
		if(clk == 1 || clk == 2){
			
			if(mtype == 'ROLE_TUTOR'){
				alert("강사 계정은 찜할 수 없습니다.");
				return; 
			}
			
			
			/* 1: insert, 2: delete */
			console.log("로그인한 경우 ");
			$.ajax({
				url: "<%=request.getContextPath()%>/class/pickClass",
				data : {mid : mid, class_no : class_no, clk: clk, maincall : 1  },
				success : function(data){
					$("#heartpage"+class_no).html(data);
				}
			});
		}else {
			
			if( mid == null  || mid == ""){
				alert("찜하기를 위해 로그인해주세요.");
				location.href="<%=request.getContextPath()%>/login/login";
			} 
		}
	}
</script>


 
 
 
 
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