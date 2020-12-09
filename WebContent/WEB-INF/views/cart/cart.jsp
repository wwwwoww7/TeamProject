<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html  >
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <title>cart</title>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons2/mobirise2.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/tether/tether.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/formstyler/jquery.formstyler.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/formstyler/jquery.formstyler.theme.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/datepicker/jquery.datetimepicker.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/theme/css/style.css">
  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<style>
	#basket {
			border-bottom : 1px solid #ccc;
			-webkit-border-radius: 0px;
			-moz-border-radius: 0px;
			border-radius: 0px;
			position: relative;
			overflow: hidden;
			opacity: 0.8;
			margin-bottom: 30px;
			
		}
		#basket h3{
		  	color:#000;
			font-size: 35px;
		}
		#sm_title {
			float: right;
			Font-size: 15px;
			position: relative;
			margin:0px;
		}	
		.btn-sm{
			height: 35px;
			
		}
	
		
		#classThum {
			max-width: 150px;
		} 
		
		
		@media screen and (max-width: 768px){
			#mobileTable {
				display: block;
			} 
			
			#wideTable {
				display: none;
			}
			
		}
		
		@media screen and (min-width: 768px){
			#mobileTable {
				display: none;
			} 
			
			#wideTable {
				display: block;
			}
			
		}
		
		
		/* @media screen and (min-width: 576px){ 
			.cid-shasoJbvYr{
				width: 100%;
			}
		} */
</style>
<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>
	
	
	<section class="section-table cid-shasoJbvYr" id="table1-23"> <!-- cid-shasoJbvYr -->
		
	  
	  <div class="container">
	  
	  	  <div class="row">
	  	  	<div class="col-12">
	  	  		<h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-2"><strong>
			         <span class="mbri-shopping-basket"></span> CART</strong>
			    </h2>
			    <h3 class="mbr-section-subtitle mbr-fonts-style align-center pb-5 mbr-light display-5">Get your Classes!</h3>
			     
				<div class="col-12">
					<div id="basket">
						<h3>주문상품확인</h3>
						
						<div id="sm_title">
							<span style="color: #690700; font-weight: bold">01 장바구니 ></span> <span>02 주문서작성/결제 > </span> <span>03 주문완료</span>
						</div>
					</div>
				</div>	
	  	  	</div>
	  	  </div>
	      <div class="row">
	      	<div id="mobileTable" class="col-12">
	      		<table class="table" cellspacing="0" data-empty="No matching records found">
	      			<tr>
		      			<td class="head-item mbr-fonts-style display-7  text-center">
		      				<div>
		              		<input type="checkbox" name="Allcheck" id="Allcheck" onclick="mobileCheckAll()"/>
	            	   	</div>
			            </td>
			            <td class="head-item mbr-fonts-style display-7 text-center">상품/옵션 정보</td>
			        </tr>
			        
		            <c:if test="${empty cartList}">
						<tr>
							<td colspan="2" class="text-center">
								<div style="font-size:60px; color:#CCC">
									<span class="mbri-info"></span>
								</div>
								<b style="font-size: 18px">담긴 상품이 없습니다.</b>
							</td>
						</tr>
					</c:if>
	           		<c:if test="${not empty cartList}"> 
	            		<c:forEach var="cartItem" items="${cartList}" varStatus="status" >
						 
			             	<tr> 
						        <td class="body-item mbr-fonts-style display-7">
							        <div class="bg m-5">
							        	<input type="checkbox" value="${cartItem.class_price}" name="chk" id="chk" data-cartNum="${cartItem.class_no}" onclick="mobileCheckSelect()" />
							        </div>
						        </td>
						        <td class="body-item mbr-fonts-style display-7 text-center" style="vertical-align: middle;">
						        	<div>
						       			<div style="margin-right: 10px;">
								        	<img width="150px" src="<%=application.getContextPath()%>/class/classphotoDownload?img=${cartItem.class_thum}"/>
								        </div>
						       			<div>
						       				<div>
												<a class="text-black" href="<%=request.getContextPath() %>/class/classdetail?classNo=${cartItem.class_no}" style="color:black;font-size:1.5em;">
													${cartItem.class_nm_s}
												</a>	
											</div>					       
											<div>
									        	<a class="text-black" href="<%=request.getContextPath() %>/class/classdetail?classNo=${cartItem.class_no}" style="color:black;font-size:1em;" >
									        		${cartItem.class_nm}
									        	</a>
									        </div>
									        <div style="margin : 10px;">
								        		수량 : 1
								        	</div>
									        <div>
							           			가격:${cartItem.class_price}
							           		</div>
							        	</div>
							        </div>
						        </td>
				            </tr>
	             		</c:forEach>
	             		
						<tr>
					 		<td style="text-align: left">
								 <a id="deletebtn" class="btn btn-info display-3 btn-sm" href="javascript:mobileDeleteAll()" > 삭 제 </a>
								 <script type="text/javascript">
									//삭제 함수
								 	function mobileDeleteAll(){
							 			var deleteArr = new Array();
												
										$("#mobileTable input[name='chk']:checked").each(function(){
											deleteArr.push($(this).attr("data-cartNum"));
										});
												
							 			if(deleteArr.length==0){
							 				alert("삭제할 클래스를 선택하여 주세요.");
							 			}else{
								 			$.ajax({
								 				url:"<%=request.getContextPath()%>/cart/cartdelete",
												data: { "deleteArr" : deleteArr },
												success: function(data){
													if(data.result == "success") {
														alert('삭제가 완료되었습니다.');
														location.href = "cart";
													} else {
														alert('삭제 실패');
													} 
												}
								 			});
							 			}
							 		}				 	
								 </script>
							</td>
					 		
					 		<td class="text-right">
					 			<div class="bigtext right-align sumcount">
						 			선택한 클래스 개수 : <span id="checkNum"></span> 개
					 			</div>
					 			<div class="bigtext right-align box blue summoney">
						 			결제 금액  : <span id="cartSum" name="cartSum"></span> 원
						 			
					 			</div>
					 		</td>
					 	</tr>	             		
	            	</c:if>			        
	      		</table>
	      	</div> 
	  	  	<div id="wideTable" class="col-12">
	  	  		<table class="table" cellspacing="0" data-empty="No matching records found">
		            <tbody>
		              <tr class="table-head">
		              	<td class="head-item mbr-fonts-style display-7  text-center">
		              		<div>
		              			<input type="checkbox" name="Allcheck" id="Allcheck" onclick="wideCheckAll()"/>
	            	   		</div>
		              	</td>
		              	<td class="head-item mbr-fonts-style display-7 text-center">상품/옵션 정보</td>
		            	<td class="head-item mbr-fonts-style display-7">수량</td>
		              	<td class="head-item mbr-fonts-style display-7">상품금액</td>
		              </tr>

			            <c:if test="${empty cartList}">
							<tr>
								<td colspan="4" class="text-center">
									<div style="font-size:60px; color:#CCC">
										<span class="mbri-info"></span>
									</div>
									<b style="font-size: 18px">담긴 상품이 없습니다.</b>
								</td>
							</tr>
						</c:if>
		           		<c:if test="${not empty cartList}"> 
		            		<c:forEach var="cartItem" items="${cartList}" varStatus="status" >
							 <!-- 중복클래스는 담기 안됨(경고문) -->
							  <script type="text/javascript">
							  	if("${cartItem.class_no}"=="${classNum}"){
									var message = '${msg}'; 
									alert(message); 
							  	}
							  </script>
				             	<tr> 
							        <td class="body-item mbr-fonts-style display-7">
								        <div class="bg m-5">
							        		<input type="checkbox" value="${cartItem.class_price}" name="chk" id="chk" data-cartNum="${cartItem.class_no}" onclick="wideCheckSelect()" />
							        	</div>
							        </td>
							        <td class="body-item mbr-fonts-style display-7 text-center" style="vertical-align: middle;">
							        	<div style="display:flex">
							       			<div style="margin-right: 10px;">
									        	<img width="100px" src="<%=application.getContextPath()%>/class/classphotoDownload?img=${cartItem.class_thum}"/>
									        </div>
							       			<div>
							       				<div>
													<a class="text-black" href="<%=request.getContextPath() %>/class/classdetail?classNo=${cartItem.class_no}" style="color:black;font-size:1.5em;">
														${cartItem.class_nm_s}
													</a>	
												</div>					       
												<div>
										        	<a class="text-black" href="<%=request.getContextPath() %>/class/classdetail?classNo=${cartItem.class_no}" style="color:black;font-size:1em;" >
										        		${cartItem.class_nm}
										        	</a>
										        </div>
								        	</div>
								        </div>
							        </td>
							        <td class="body-item mbr-fonts-style display-7">
							        	<div class="col-lg">
							        	<div class="bg m-5">1</div>
							        	</div>
							        </td>
						           	<td class="body-item mbr-fonts-style display-7">
						           		<div class="bg m-5">
						           			${cartItem.class_price}
						           		</div>
						           	</td>
					            </tr>
		             		</c:forEach>
		            	</c:if>
		          
	             </tbody>
				 <tfoot>
				 	<tr>
				 		<td colspan="2" style="text-align: left">
							 <a id="deletebtn" class="btn btn-md btn-info btn-sm" href="javascript:wildDeleteAll()" >삭제</a>
							 <script type="text/javascript">
								//삭제 함수
							 	function wildDeleteAll(){
						 			var deleteArr = new Array();
											
									$("#wideTable input[name='chk']:checked").each(function(){
										deleteArr.push($(this).attr("data-cartNum"));
									});
											
						 			if(deleteArr.length==0){
						 				alert("삭제할 클래스를 선택하여 주세요.");
						 			}else{
							 			$.ajax({
							 				url:"<%=request.getContextPath()%>/cart/cartdelete",
											data: { "deleteArr" : deleteArr },
											success: function(data){
												if(data.result == "success") {
													alert('삭제가 완료되었습니다.');
													location.href = "cart";
												} else {
													alert('삭제 실패');
												} 
											}
							 			});
						 			}
						 		}				 	
							 </script>
						</td>
				 		
				 		<td colspan="2" class="text-right">
				 			<div class="bigtext right-align sumcount">
					 			선택한 클래스 개수 : <span id="checkNum"></span> 개
				 			</div>
				 			<div class="bigtext right-align box blue summoney">
					 			결제 금액  : <span id="cartSum" name="cartSum"></span> 원
					 			
				 			</div>
				 		</td>
				 	</tr>
				 </tfoot>
	          </table>
	  	  	</div>
	  	  </div>
			
	      <div class="row">
	        <div class="col-12" >
	        	<div class="mbr-section-btn item-footer mt-2" align="center">
	          		<a class="btn item-btn btn-success btn-lg display-7" href="javascript:payment()">결제하기</a>
				</div>
	        </div>
	        
	          	
		</div>
	</div>
	    
</section>	
	
 	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>

	
	 <script src="<%=application.getContextPath()%>/resources/assets/web/assets/jquery/jquery.min.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/popper/popper.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/bootstrap/js/bootstrap.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/tether/tether.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/smoothscroll/smooth-scroll.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/dropdown/js/nav-dropdown.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/dropdown/js/navbar-dropdown.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/touchswipe/jquery.touch-swipe.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/parallax/jarallax.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/masonry/masonry.pkgd.min.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/imagesloaded/imagesloaded.pkgd.min.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/theme/js/script.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/gallery/player.min.js"></script>  
	 <script src="<%=application.getContextPath()%>/resources/assets/gallery/script.js"></script> 
	 <script src="<%=application.getContextPath()%>/resources/assets/slidervideo/script.js"></script>  
	
	<script type="text/javascript">
	//전체선택 체크박스
	
 	var mobile_cnt = $("#mobileTable input[name='chk']").length;
	var mobile_checkboxValues = [];
	var mobile_class_no = $("#mobileTable input[name='chk']").val();
	
	function mobileCheckAll(){
		if($("#mobileTable #Allcheck").prop("checked")==true){
			$("#mobileTable input[name='chk']").prop("checked", true);
			mobile_checkboxValues = [];
			$("#mobileTable input[name='chk']:checked").each(function(i) {
				mobile_checkboxValues.push($(this).val());
			});
		}else{
			$("#mobileTable input[name='chk']").prop("checked", false);
			mobile_checkboxValues = [0];
		}
		
		var allData = { "chkPrice": mobile_checkboxValues };
   		
		$.ajax({
			url:"<%=request.getContextPath()%>/cart/sumprice",
			data: allData,
			dataType : 'json',
			contentType : 'application/json',
			success: function(data){
				$("#mobileTable #cartSum").text(data.sumPrice);
			}
		});
		
		$('#mobileTable #checkNum').text($("#mobileTable  input:checkbox[name='chk']:checked").length);   
	}	
	


   
	    //개별 체크박스     
		function mobileCheckSelect() {
	   		/* console.log("cnt:", cnt, $("input[name='chk']:checked").length); */
	   		
			//개별선택
	   		if($("#mobileTable input[name='chk']:checked").length==mobile_cnt){
				$("#mobileTable #Allcheck").prop("checked",true);
				return mobileCheckAll();
			}else{
				$("#mobileTable #Allcheck").prop("checked",false);
				//배열 초기화
				mobile_checkboxValues = [];
				//선택된 체크값 배열
				$("#mobileTable input[name='chk']:checked").each(function(i) {
					mobile_checkboxValues.push($(this).val());
				}); 
				//선택되지 않은 값 빼기
				if($("#mobileTable input[name='chk']").is((":checked")==false)){
					$("#mobileTable input[name='chk']:checked").each(function(i) {
						mobile_checkboxValues.splice(i,1);
						}); 
					}
				if($("#mobileTable input[name='chk']:checked").length==0){
					mobile_checkboxValues = [0];
					}
				}
			
	   		
			var allData = { "chkPrice": mobile_checkboxValues };
	   		
			$.ajax({
				url:"<%=request.getContextPath()%>/cart/sumprice",
				data: allData,
				dataType : 'json',
				contentType : 'application/json',
				success: function(data){
					$("#mobileTable #cartSum").text(data.sumPrice);
				}
			});
	
			
			$('#mobileTable #checkNum').text($("#mobileTable input:checkbox[name='chk']:checked").length);   
		
	    } 
	    
	    
		var wide_cnt = $("#wideTable input[name='chk']").length;
		var wide_checkboxValues = [];
		var wide_class_no = $("#wideTable input[name='chk']").val();	    
	    
		function wideCheckAll(){
			if($("#wideTable #Allcheck").prop("checked")==true){
				$("#wideTable input[name='chk']").prop("checked", true);
				wide_checkboxValues = [];
				$("#wideTable input[name='chk']:checked").each(function(i) {
					wide_checkboxValues.push($(this).val());
				});
			}else{
				$("#wideTable input[name='chk']").prop("checked", false);
				wide_checkboxValues = [0];
			}
			
			var allData = { "chkPrice": wide_checkboxValues };
	   		
			$.ajax({
				url:"<%=request.getContextPath()%>/cart/sumprice",
				data: allData,
				dataType : 'json',
				contentType : 'application/json',
				success: function(data){
					$("#wideTable #cartSum").text(data.sumPrice);
				}
			});
			
			$('#wideTable #checkNum').text($("#wideTable input:checkbox[name='chk']:checked").length);   
		}			    
	    
	    //개별 체크박스     
		function wideCheckSelect() {
	   		/* console.log("cnt:", cnt, $("input[name='chk']:checked").length); */
	   		
			//개별선택
	   		if($("#wideTable input[name='chk']:checked").length==wide_cnt){
				 $("#wideTable #Allcheck").prop("checked",true);
				return wideCheckAll();
			}else{
				$("#wideTable #Allcheck").prop("checked",false);
				//배열 초기화
				wide_checkboxValues = [];
				//선택된 체크값 배열
				$("#wideTable input[name='chk']:checked").each(function(i) {
					wide_checkboxValues.push($(this).val());
				}); 
				//선택되지 않은 값 빼기
				if($("#wideTable input[name='chk']").is((":checked")==false)){
					$("#wideTable input[name='chk']:checked").each(function(i) {
						wide_checkboxValues.splice(i,1);
						}); 
					}
				if($("#wideTable input[name='chk']:checked").length==0){
					wide_checkboxValues = [0];
					}
				}
			
	   		
			var allData = { "chkPrice": wide_checkboxValues };
	   		
			$.ajax({
				url:"<%=request.getContextPath()%>/cart/sumprice",
				data: allData,
				dataType : 'json',
				contentType : 'application/json',
				success: function(data){
					$("#wideTable #cartSum").text(data.sumPrice);
				}
			});
	
			
			$('#wideTable #checkNum').text($("#wideTable input:checkbox[name='chk']:checked").length);   
		
	    } 	    
	
		function payment(){
			if($("input[name='chk']:checked").length==0){
				//장바구니 체크 안하면 경고창
				alert('선택된 상품이 없습니다.');
			} else {
				if(${sessionMid==null}){
					var result = confirm("로그인 후 결제 하실 수 있습니다."); 
					location.href="<%=application.getContextPath()%>/login/login";
				}else{
					location.href="<%=application.getContextPath()%>/cart/payment"; 
					
				}
			} 
		}
	</script>

</body>
</html>