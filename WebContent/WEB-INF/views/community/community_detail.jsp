<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="container container-table mt-5">
	<div class="table-wrapper">
	<!-- 수정/삭제/목록가기 -->
	<div class="row">
		<div class="col-12"  align="right">
			<c:if test="${sessionMid==communityDetail.mid}"> 
				<a class="btn-sm" style="background-color: #ffc800; color: #ffff; margin: 0px; border-radius: 100px;" href="javascript:communityUpdateform(${communityDetail.comm_no})">수정</a>	
				<script type="text/javascript">
				function communityUpdateform(comm_no) {
					$.ajax({
							url:"community/communityUpdateform",
							data : {comm_no:comm_no},
							success:function(data) {
							$("#fun1_result").html(data);
							}
						});
					}
				</script>
				<a class="btn-sm" style="background-color: #ffc800; color: #ffff; margin: 0px; border-radius: 100px;" href="javascript:communityDeleteform(${communityDetail.comm_no})">삭제</a>	
				<script type="text/javascript">
				function communityDeleteform(comm_no) {
					$.ajax({
							url:"community/communityDeleteform",
							data : {comm_no:comm_no},
							success:function(data) {
							if(data.result=="success"){
								allFunction(1);
							}
							}
						});
					}
				</script>
			</c:if>	
			<a class="btn-sm" style="background-color: #ffc800; color: #ffff; margin: 2px; border-radius: 100px;" href="javascript:allFunction(${communityDetail.comm_cate_no+1})" >목록</a>		
		</div>
	</div>
		<!-- 커뮤니티list -->
		<div class="container scroll mt-2">

			<div class="row">
			
				<div class="col-12">
					<table class="table table-bordered" style="font-size: small">
					<colgroup>
					    <col width="23.5%">
					    <col width="35%">
					    <col width="19%">
					    <col width="*">
					</colgroup>
					<tbody>
					
					    <tr>
					        <th>카테고리</th>
					        <td>${communityDetail.comm_cate_nm}</td>
					        <th>닉네임</th>
					        <td>${communityDetail.mnick}</td>
					    </tr>
					   
						<tr>
							<th>제목</th>
					        <td>${communityDetail.comm_title}</td>
					        <th>조회수</th>
					        <td>${communityDetail.comm_hitno}</td>
						</tr>
					    <tr>
					        <th>내용</th>
					        <td colspan="3">${communityDetail.comm_content}</td>
					        
					    </tr>
						</tbody>
					</table>
				</div>
				
			</div>
			
			<!-- 댓글등록 -->
			<%-- <div class="row">
				 <div class="col-12"  align="left">
				    <c:if test="">
						<tr>
					        <th class="text-center">답변</th>
					         <td class="p-3" width="100%;">
					        	<textarea rows="12" style="width: 100%;background-color:transparent;border: 0;resize: none;" disabled></textarea>
					        </td>
					    </tr> 
			 		</c:if>
					    <div align="right">
					    	<a class="btn btn-sm" style="background-color: #ffc800; color: #ffff;" href="<%=request.getContextPath()%>/mypage/qaDelete?class_qa_no=">댓글올라가는곳</a>   
						</div>
						<br/>
						
						<c:if test="${sessionMid==reviewDetail.mid}">
							<form method="POST" id="replyAdd" name="replyAdd" class="mbr-form form-with-styler">
								<input type="hidden" id="comm_no" name="comm_no" value="${communityDetail.comm_no}"/>
								
								
								<h4 class="mbr-section-subtitle mbr-fonts-style align-center mb-0 mt-2 display-7">${member.mnick}</h4>
								
								
								<div class="input-group">
								<textarea  id="reply_content" name="reply_content" class="form-control">댓글 내용을 입력하세요!</textarea>
									<a type="button"  onclick="applyForm(); return false;" class="btn btn-success display-4 text-primary">댓글작성</a>
								</div>
							</form>
						
						</c:if>
						
						<script type="text/javascript">
							function applyForm(){
								//필수 값 체크
							/* 	var mid = "${sessionMid}";
								
								if(mid == null || mid== ""){
									alert("다시 로그인 해 주세요");
									return false;
								}
								
								var class_qa_title = $("#class_qa_title").val().trim();
								if(class_qa_title == "") { 
									alert("제목을 입력해주세요.");
									$("#class_qa_title").focus();
									return false;
								}
								
								var class_qa_content = $("#class_qa_content").val().trim();
								if(class_qa_content == "") {
									alert("내용을 입력해주세요.");
									$("#class_qa_content").focus();
									return false;
								}
								 */
								
								return false;
								
								var formData = $("#replyAdd").serialize();
// 								formData = "comm_no=32&reply_content=입력한 내용";
								$.ajax({
						            url : "",  
						            type : 'POST', 
						            data : formData, 
						            success : function(data) {
										if(data.result == "success"){
											 pageLoad(1);
										}else {
											alert("글 작성 실패");
										}
						            }
						        }); // $.ajax */
							}
						</script>
						<br/>
				 
				 
				</div> 
				<br/>
			</div> --%>
		
		</div>
		
		<div class="container table-info-container"></div>
	</div>
</div>
<style type="text/css">

	@media (max-width: 576px) {
		#commDetailTable{
			font-size: 13px;
		}
	}

</style>