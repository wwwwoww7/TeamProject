<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="container container-table mt-5">
	<div class="table-wrapper">

		<div class="container scroll">

			<div class="row">
			
				<div class="col-12">
					<table class="table table-bordered">
					<colgroup>
					    <col width="15%">
					    <col width="35%">
					    <col width="15%">
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
			<div class="row">
				<div class="col-6"  align="left">
					<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:communityUpdateform(${communityDetail.comm_no})">수정</a>	
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
					<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="community">삭제</a>	
				</div>
				<div class="col-6"  align="right">
					<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:allFunction(${communityDetail.comm_cate_no+1})" >목록</a>		
				</div>
				<br/>
			</div>
		
		</div>
		
		<div class="container table-info-container"></div>
	</div>
</div>