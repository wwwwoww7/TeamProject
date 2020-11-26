<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html  >
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  
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

<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>
	
	
	<section class="section-table cid-shasoJbvYr" id="table1-23">
	
	  
	  
	  <div class="container container-table">
	      <h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-2"><strong>
	         <span class="mbri-shopping-basket"></span> CART</strong></h2>
	      <h3 class="mbr-section-subtitle mbr-fonts-style align-center pb-5 mbr-light display-5">Get your Classes!</h3>
	     
	      <div class="table-wrapper">
	
	
	        <div class="container scroll">
	          <table class="table" cellspacing="0" data-empty="No matching records found">
	            <thead>
	              <tr class="table-heads">
	               <th class="head-item mbr-fonts-style display-7">선택
	              	 <input type="checkbox" class="chkALll" id="chkAll"/>
	               </th>
	               <th class="head-item mbr-fonts-style display-7">상품/옵션 정보</th>
	               <th class="head-item mbr-fonts-style display-7">수량</th>
	               <th class="head-item mbr-fonts-style display-7">상품금액</th>
	               <th class="head-item mbr-fonts-style display-7">합계금액</th>
	              </tr>
	            </thead>
	
	            <tbody>
	             <c:forEach var="cartItem" items="${cartList}">
	             	<tr> 
			           <td class="body-item mbr-fonts-style display-7">
			           	<input type="checkbox" name="" id=""/>
			           </td>
			           <td class="body-item mbr-fonts-style display-7">
			            <div>
			           	 	<a href="#" style="color:black">${cartItem.class_nm}</a>
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
			           <td class="body-item mbr-fonts-style display-7">
			           	${cartItem.class_price}
			           </td>
		            </tr>
	             </c:forEach>
	            
	             
	             
	             </tbody>
	          </table>
	        </div>
	        
	          	<div class="mbr-section-btn item-footer mt-2" style="text-align: center;">
	          	<a class="btn item-btn btn-success display-7" href="javascript:payment()">결제하기</a>
					 <script type="text/javascript">
						function payment(){
							if(${sessionMid==null}){
								var result = confirm("로그인 후 결제 하실 수 있습니다."); 
								if(result==true){
									location.href="<%=application.getContextPath()%>/login/login";
								}	
							}else {
								
								location.href="<%=application.getContextPath()%>/cart/payment"; 
								
							}
						}

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