<%@ page contentType="text/html; charset=UTF-8"%>
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
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/datatables/data-tables.bootstrap4.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/theme/css/style.css">
  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additionalcart.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<style>
	#basket {
			border-bottom: 1px solid #CCC; 
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
</style>
<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>
	
	
	<section class="section-table cid-shasoJbvYr" id="table1-23">
	
	  
	  
	  <div class="container container-table">
	      <h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-2"><strong>
	         <span class="mbri-shopping-basket"></span> CART</strong></h2>
	      <h3 class="mbr-section-subtitle mbr-fonts-style align-center pb-5 mbr-light display-5">Get your Classes!</h3>
	     
	      <div class="table-wrapper">
			
				<div class="col-lg-12">
					<div id="basket">
						<h3>주문상품확인</h3>
						
						<div id="sm_title">
							<span style="color: #690700; font-weight: bold">01 장바구니 ></span> <span>02 주문서작성/결제 > </span> <span>03 주문완료</span>
						</div>
						</div>
					</div>	
	
	        <div class="container scroll">
	          <table class="table" cellspacing="0" data-empty="No matching records found">
	            <thead>
	              <tr class="table-heads">
	               <th class="head-item mbr-fonts-style display-7">상품선택
	              	 <input type="checkbox" name="Allcheck" id="Allcheck" />
	              	 <script>
			 			//전체선택 체크박스
							var count = $("input[name='chk']").length;
							var sum = 0;
			 				$("#Allcheck").click(function() {
			 					if($("#Allcheck").prop("checked")){
									$("input[name='chk']").prop("checked", true);
								}else{
								   	$("input[name='chk']").prop("checked", false);
								}
								if($("input[name='chk']").prop("checked")){
									for(var i=0; i<count ;i++ ){
										
										sum += parseInt("#cartprice");
									}
								}	
				 	        console.log(sum);
			 				$('#checkNum').text($("input:checkbox[name='chk']:checked").length);
								
			 				});
				 			
						 	       
			 			    //개별 체크박스     
			 				function checkAll() {
				           		var cnt = $("input[name='chk']").length;
				           		/* var count = $("input:checkbox[name='chk']:checked").length; */
				           		console.log("cnt:", cnt, $("input[name='chk']:checked").length);
				       
								if($("input[name='chk']:checked").length==cnt){
									$("#Allcheck").prop("checked",true);
									
								}else{
									$("#Allcheck").prop("checked",false);
								}
								$('#checkNum').text($("input:checkbox[name='chk']:checked").length);
		             		}
							
			 		</script> 
	               </th>
	               <th class="head-item mbr-fonts-style display-7">상품/옵션 정보</th>
	               <th class="head-item mbr-fonts-style display-7">수량</th>
	               <th class="head-item mbr-fonts-style display-7">상품금액</th>
	               <th class="head-item mbr-fonts-style display-7">합계금액</th>
	              </tr>
	            </thead>
	
	            <tbody>
	             <c:if test="${cartList == null}">
					<tr>
						<td colspan="5" style="text-align: center;"><b style="font-size: 18px">담긴 상품이 없습니다.</b></td>
					</tr>
				</c:if>
	            <c:if test="${cartList!=null}"> 
	             <form>
	             <c:set var="cartSum" value="0"/>
	             <c:forEach var="cartItem" items="${cartList}" varStatus="status" >

	             	<tr> 
			           <td class="body-item mbr-fonts-style display-7">
			           	<input type="checkbox" value="chk" name="chk" id="chk" onclick="checkAll()"/>
			           </td>
			           <td class="body-item mbr-fonts-style display-7">
			            <div>
			           	 	<a href="<%=request.getContextPath() %>/class/classdetail?classNo=${cartItem.class_no}" style="color:black">${cartItem.class_nm}</a>
			            </div>
			            <div>
			           		<img src="<%=request.getContextPath() %>/resources/images/${cartItem.class_thum}" class=""/>강의사진
			            </div>
			           </td>
			           <td class="body-item mbr-fonts-style display-7">
			           	1
			           </td>
			           <td class="body-item mbr-fonts-style display-7">
			           	${cartItem.class_price}
			           </td>
			           <td class="body-item mbr-fonts-style display-7" id="cartprice">
			           	${cartItem.class_price}
			           </td>
		            </tr>
		         
	             </c:forEach>
		            </form>
	            </c:if>
	             
             </tbody>
			 <tfoot>
			 	<tr>
			 		<td colspan="2" style="text-align: left">
			 			총 선택한 개수 : <span id="checkNum"></span> 개
			 		</td>
			 		<td colspan="3" style="text-align: right">
			 			<div>
				 			총 결제 금액  : <span id="itemSum"> 원      
			 			</div>
			 		</td>
			 	</tr>
			 </tfoot>
	          </table>
	        </div>
	        
	          	<div class="mbr-section-btn item-footer mt-2" style="text-align: center;">
	          	<a class="btn item-btn btn-success display-7" href="javascript:payment()">결제하기</a>
					 <script type="text/javascript">
						 function payment(){
							/* if($("input:checkbox[name='chk']:checked").length==0)){
								function goOrder(){
									//장바구니 체크 안하면 경고창
									alert('선택된 상품이 없습니다.');
									break;
								}
							} */
							if(${sessionMid==null}){
								var result = confirm("로그인 후 결제 하실 수 있습니다."); 
								location.href="<%=application.getContextPath()%>/login/login";
							}else{
								location.href="<%=application.getContextPath()%>/cart/payment"; 
								}
							};
					</script>
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
  
</body>
</html>