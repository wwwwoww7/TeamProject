<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- <input type="hidden" id="notice" name="notice" value="${notice}"/> --%>
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
		        <th>강의명</th>
		        <td>${notice.class_nm_s}</td>
		        <th>제목</th>
		        <td>${notice.class_notice_title}</td>
		    </tr>
		    <tr>
		        <th>작성자</th>
		        <td>${notice.mid}</td>
		        <th>작성시간</th>
		        <td><span><fmt:formatDate value="${notice.class_notice_date}" pattern="yyyy-MM-dd HH.mm.ss"/></span></td>
		    </tr>
		    <tr>
		        <th>첨부파일</th>
		        <td colspan="3">첨부파일이 표시</td>
		    </tr>
		    <tr>
		        <th>내용</th>
		        <td colspan="10">${notice.class_notice_content}</td>
		    </tr>
		</tbody>
	</table>
	<br/>
    <a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:tutorClassNotice()">목록으로</a>
	<script type="text/javascript">
		function tutorClassNotice(){
				$.ajax({
					url:"tutorClassNotice",
					method:"post",
					success: function(data){
							$("#tutorNotice").html(data);
						}
					});
				} 
	</script>
			
    <a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:noticeUpdate(${notice.class_notice_no})">수정</a>
	<script type="text/javascript">
		function noticeUpdate(class_notice_no) {
			console.log(class_notice_no);
			
			
			$.ajax({
				url:"noticeUpdateForm",
				data:{class_notice_no:class_notice_no},
				method:"post",
				success:function(data) {
					$("#tutorNotice").html(data);
				}
			});
		}
	</script>	
	<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="#">삭제</a>
	<script type="text/javascript">
		function boardDelete(bno) {
			$.ajax({
				url:"boardDelete",
				data:{bno:bno},
				method:"post",
				success:function(data) {
					if(data.result == "success") {
						boardList();
					}
					console.log(data);
				}
			});
		}
	</script>	
</div>