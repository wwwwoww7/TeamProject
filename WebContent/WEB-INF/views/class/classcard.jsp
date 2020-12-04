<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="hotclassca" class="carousel slide" data-ride="carousel">

	<!-- Indicators -->
	<ul class="carousel-indicators">
		<li data-target="#hotclassca" data-slide-to="0" class="active"></li>
		<li data-target="#hotclassca" data-slide-to="1"></li>
		<li data-target="#hotclassca" data-slide-to="2"></li>
	</ul>

	<!-- The slideshow -->
	<div class="carousel-inner">
	
		<c:forEach var="i" begin="0" end="2">
			<div class="carousel-item">
				<c:forEach var="hotclass" items="${hotclassList}" begin="${i*4}" end="${i*4+3}">
					<div class="item features-image col-12 col-md-6 col-lg-3 "> <!--  col-12 col-md-6 col-lg-3 -->
					     <div class="item-wrapper">
					         <div class="item-img">
					         	<a href="<%=request.getContextPath()%>/class/classdetail?classNo=${hotclass.class_no }" >
					         		<img class="img-thumbnail" src="<%=request.getContextPath() %>/resources/images/class/${hotclass.class_thum }" alt="" data-slide-to="3">
							 	</a>
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
													<a class="mbr-iconfont" href="javascript:pick(0, 0, ${hotclass.class_no})">
														<img id="pickimg1" src="<%= request.getContextPath()%>/resources/images/blackheart.png"/>
													</a>
												</c:if>
												<c:if test="${sessionMid != '' && sessionMid != null}">
													<c:if test="${hotclass.pick_yn == 'N'}">
														<a class="mbr-iconfont" href="javascript:pick(0, 1, ${hotclass.class_no})">
															<img id="pickimg1" src="<%= request.getContextPath()%>/resources/images/blackheart.png"/>
														</a>
													</c:if>
													<c:if test="${hotclass.pick_yn == sessionMid}">
														<a class="mbr-iconfont" href="javascript:pick(0, 2, ${hotclass.class_no})">
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
						
			
			
			
			
			</div>	
		
		</c:forEach>
	
	
		
		<div class="carousel-item">
		</div>
		<div class="carousel-item">
		</div>
	</div>

	<!-- Left and right controls -->
	<a class="carousel-control-prev" href="#hotclassca" data-slide="prev"> 
		<span class="carousel-control-prev-icon"></span>
	</a> 
	<a class="carousel-control-next" href="#hotclassca" data-slide="next"> 
		<span class="carousel-control-next-icon"></span>
	</a>
</div>

<%-- 2020. 11. 25 --%>


<script type="text/javascript">
	function pick(type, clk, class_no){
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
				data : {listtype: type, mid : mid, class_no : class_no, clk: clk, maincall : 1  },
				success : function(data){
					
					if(type==0)
						$("#heartpage"+class_no).html(data);
					else if(type==1){
						$("#heartpagenewc"+class_no).html(data);
					}
				}
			});
		}else {
			
			if( mid == null  || mid == ""){
				alert("찜하기를 위해 로그인해주세요.");
				location.href="<%=request.getContextPath()%>/login/login";
			} 
		}
	}
	
	
	$(function(){
		$("#hotclassca > div > div:nth-child(1)").addClass("active");	
	});
	
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