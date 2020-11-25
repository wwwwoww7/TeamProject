<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
 <div class="table-wrapper">
       <div class="container scroll">
	          <table class="table" cellspacing="0" data-empty="No matching records found">
	            <thead>
	              <tr class="table-heads ">
	               <th class="head-item mbr-fonts-style display-7">선택</th>
	               <th class="head-item mbr-fonts-style display-7">상품/옵션 정보</th>
	               <th class="head-item mbr-fonts-style display-7">수량</th>
	               <th class="head-item mbr-fonts-style display-7">상품금액</th>
	               <th class="head-item mbr-fonts-style display-7">합계금액</th>
	              </tr>
	            </thead>
	
	            <tbody>
	              
	            <tr> 
	                
	              <td class="body-item mbr-fonts-style display-7">ㅁ</td>
	              <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              <td class="body-item mbr-fonts-style display-7">1</td>
	              <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	             </tr>
	             <tr> 
	                
	              <td class="body-item mbr-fonts-style display-7">ㅁ</td>
	              <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              <td class="body-item mbr-fonts-style display-7">2</td>
	              <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	             </tr>
	             <tr> 
	              <td class="body-item mbr-fonts-style display-7">ㅁ</td>
	              <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              <td class="body-item mbr-fonts-style display-7">1</td>
	              <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	             </tr>
	             <tr> 
	               <td class="body-item mbr-fonts-style display-7">ㅁ</td>
	               <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	               <td class="body-item mbr-fonts-style display-7">1</td>
	               <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	               <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              </tr>
	              <tr>   
	              	<td class="body-item mbr-fonts-style display-7">ㅁ</td>
	              	<td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              	<td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              	<td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              	<td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              </tr>
	              <tr> 
	                 <td class="body-item mbr-fonts-style display-7">ㅁ</td>
	                 <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	                 <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	                 <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	                 <td class="body-item mbr-fonts-style display-7">Jeanna Schmal</td>
	              </tr>
	             </tbody>
	          </table>
	        </div>
	        
	          	<div class="mbr-section-btn item-footer mt-2" style="text-align: center;">
	          	<a class="btn item-btn btn-success display-7" href="javascript:payment()">결제하기</a>
					 <script type="text/javascript">
						function payment(sessionId){
							<%-- if(sessionId==null){
								var result = confirm("로그인 후 결제 하실 수 있습니다."); 
								if(result==true){
									location.href="<%=application.getContextPath()%>/login/login";
								}	
							}else{ --%>
								location.href="<%=application.getContextPath()%>/cart/payment";
								
						}
					</script>
				</div>
	        </div>
</html>