<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 2020. 12. 3 --%>

<table class="table table-bordered">
	<colgroup>
	    <col width="15%">
	    <col width="35%">
	    <col width="15%">
	    <col width="*">
	</colgroup>
	<tbody>
	    <tr>
	        <th colspan="2" class="text-center">답변완료여부</th>
			<c:if test="${qaInfo.class_qa_answer != null}">
	        	<td colspan="2"  class="text-center">답변완료</td>
	        </c:if>
	        <c:if test="${qaInfo.class_qa_answer == null}">
	        	<td colspan="2"  class="text-center">미응답</td>
	        </c:if>
	    </tr>
	    <tr>
	        <th class="text-center">작성자</th>
	        <td>${qaInfo.mnick}</td>
	        <th class="text-center">작성일</th>
	        <td><span><fmt:formatDate value="${qaInfo.class_qa_date}" pattern="yyyy-MM-dd"/></span></td>
		</tr>
		<tr>
			<th class="text-center">제목</th>
	        <td colspan="3">${qaInfo.class_qa_title}</td>
		</tr>
	    <tr>
	        <td colspan="4" class="p-3" width="100%;">
	        	<textarea rows="3" style="width: 100%;background-color:transparent;border: 0;resize: none;" disabled>${qaInfo.class_qa_content}</textarea>
	        </td>
	    </tr>
	</tbody>
</table>
<table class="table table-bordered mb-0">
	<colgroup>
	    <col width="15%">
	    <col width="*"> 
	</colgroup>
	<tbody>
	    <c:if test="${qaInfo.class_qa_answer != null}">
			<tr>
		        <th class="text-center">답변</th>
		         <td class="p-3" width="100%;">
	        		<textarea rows="4" style="width: 100%;background-color:transparent;border: 0;resize: none;" disabled>${qaInfo.class_qa_answer}</textarea>
	       		</td>
		    </tr>    
 		</c:if>
    </tbody>
</table>
<div class="mbr-section-btn" align="center">
   	<a class="btn btn-success display-4  text-primary" href="javascript:pageLoad(1)">목록으로</a>
</div>