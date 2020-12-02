<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<div id="tutorNotice" class="container table-info-container">
	<div>
		<table class="table table-bordered">
			<colgroup>
			    <col width="15%">
			    <col width="55%">
			    <col width="15%">
			    <col width="*">
			</colgroup>
			<tbody>
			    <tr>
			        <th class="text-center">제목</th>
			        <td>${notice.class_notice_title}</td>
			        <th class="text-center">작성일</th>
			        <td><span><fmt:formatDate value="${notice.class_notice_date}" pattern="yyyy-MM-dd"/></span></td>
			    </tr>
			    <tr>
			        <th class="text-center">첨부파일</th>
			        <td colspan="3">
			        	<c:forEach var="loadfile" items="${newUpload}">
			        		<a id="fileloc"href="download?fileName=${loadfile.class_hw_file}"> </a> <!-- 오리지날파일이름만 보이게 하기 -->
			        	</c:forEach>
			        </td>
			    </tr>
			    <tr>
			        <td colspan="4" style="padding: 20px 80px 20px 62px;" valign="top" height="350">${notice.class_notice_content}</td>
			    </tr>
			</tbody>
			
		</table>
	  	<div class="mbr-section-btn" align="right">
			<a class="btn btn-success display-4 text-primary" href="javascript:classNotice(1)">목록으로</a>	
	   
		    <c:if test="${notice.mid == sessionMid}">
		    	<a class="btn btn-success display-4 text-primary" href="<%=request.getContextPath()%>/mypage/noticeUpdateForm?class_notice_no=${notice.class_notice_no}">수정</a>
				<a class="btn btn-success display-4 text-primary" href="<%=request.getContextPath()%>/mypage/noticeDelete?class_notice_no=${notice.class_notice_no}">삭제</a>
			</c:if>
		</div> 
	</div>
</div>
<style type="text/css">
</style>
