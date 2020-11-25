<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
		        <td>강의명이 들어옴</td>
		        <th>제목</th>
		        <td>공지사항제목</td>
		    </tr>
		    <tr>
		        <th>작성자</th>
		        <td>작성자ID</td>
		        <th>작성시간</th>
		        <td><span><fmt:formatDate value="" pattern="yyyy-MM-dd HH.mm.ss"/></span>2020-11-20</td>
		    </tr>
		    <tr>
		        <th>첨부파일</th>
		        <td colspan="3">첨부파일이 표시</td>
		    </tr>
		    <tr>
		        <th>내용</th>
		        <td colspan="10">공지사항 내용이 들어옴</td>
		    </tr>
		</tbody>
	</table>
    <a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="javascript:tutorClassNotice()">목록으로</a>
	<script type="text/javascript">
		function tutorClassNotice(){
				$.ajax({
					url:"tutorClassNotice",
					type: "POST",
					success: function(data){
							$("#tutorNotice").html(data);
						}
					});
				} 
	</script>
			
    <a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="#">수정</a>
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