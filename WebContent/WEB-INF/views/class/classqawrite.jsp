<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 2020. 12. 3 --%>
<form id="qaWriteform" name="qaWriteform" method="POST" >
<table class="table table-bordered">
	<colgroup>
	    <col width="15%">
	    <col width="35%">
	    <col width="15%">
	    <col width="*">
	</colgroup>
	<tbody>
<!-- 	    <tr> -->
<!-- 	        <th colspan="1" class="text-center">강의</th> -->
<%--         	<td colspan="3"  class="text-center">${class_no}</td> --%>
<!-- 	    </tr> -->
	    <tr>
	        <th class="text-center">작성자</th>
	        <td colspan="3">${mnick}<input type="hidden" id="class_no" name="class_no" value="${class_no}"/></td>
		</tr>
		<tr>
			<th class="text-center">제목</th>
	        <td colspan="3"><input type="text" id="class_qa_title" name="class_qa_title" style="width: 100%"/></td>
		</tr>
	    <tr>
	        <td colspan="4" class="p-3" width="100%;">
	        	<textarea id="class_qa_content" name="class_qa_content" placeholder="내용을 입력하세요." rows="9" style="width: 100%; background-color:transparent;resize: none;" inputmode="text" > </textarea>
	        </td> <!--  border: 0; -->
	    </tr>
	</tbody> 
</table>
</form>
<div class="mbr-section-btn" align="center">
   	<a class="btn btn-success display-4  text-primary" href="javascript:pageLoad(1)">목록으로</a>
   	<a type="button"  onclick="applyForm(); return false;" class="btn btn-success display-4 text-primary">글작성</a>
</div>
<script type="text/javascript">
	function applyForm(){
		
		
		//필수 값 체크
		var mid = "${sessionMid}";
		
		if(mid == null || mid== ""){
			
			alert("다시 로그인 해 주세요");
			return false;
		}
		
		
		
		
		
		
		
		
		
		
		var formData = $("#qaWriteform").serialize();
       
		alert(formData.class_qa_title);
		return false;
		
		$.ajax({
	            cache : false,
	            url : "",  
	            type : 'POST', 
	            data : formData, 
	            success : function(data) {
	                var jsonObj = JSON.parse(data);
	                
	                pageLoad(1);
	                
	            }, // success 
	            error : function(xhr, status) {
	                alert(xhr + " : " + status);
	            }
	        }); // $.ajax */
			
		
	}
</script>