<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
	
<div id="tutorNotice" class="container table-info-container">
	<div>
		<table class="table table-bordered">
			<colgroup>
			    <col id="noticeadj1" width="15%">
			    <col id="noticeadj2" width="55%">
			    <col id="noticeadj1" width="15%">
			    <col id="noticeadj3" width="*">
			</colgroup>
			<tbody>
			    <tr>
			        <th id="noticeadj1" class="text-center">제목</th>
			        <td id="noticeadj2">${notice.class_notice_title}</td>
			        <th id="noticeadj1" class="text-center">작성날짜</th>
			        <td id="noticeadj3"><span><fmt:formatDate value="${notice.class_notice_date}" pattern="yy-MM-dd"/></span></td>
			    </tr>
			    <tr>
			        <th class="text-center">첨부파일</th>
			        <td colspan="3">
			        	<a id="fileloc"href="<%=request.getContextPath()%>/mypage/download?fileName=${newUpload.class_hw_file}" class="text-black">${fn:split(newUpload.class_hw_file,'_')[1]}</a>
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
