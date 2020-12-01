<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container container-table mt-5">
	<div class="table-wrapper">

		<div class="container scroll">
		
			<div>
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
				        <td>${reviewDetail.class_cate_nm}</td>
				        <th>닉네임</th>
				        <td>${reviewDetail.mnick}</td>
				    </tr>
				   
					<tr>
						<th>제목</th>
				        <td colspan="10">${reviewDetail.review_title}</td>
					</tr>
				    <tr>
				        <th>내용</th>
				        <td colspan="10">${reviewDetail.review_content}</td>
				        
				    </tr>
					</tbody>
				</table>
				
				<br/>
				<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="community">목록</a>		
			</div>
		
		</div>
		
		<div class="container table-info-container"></div>
	</div>
</div>