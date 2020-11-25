<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<table class="table" cellspacing="0" data-empty="No matching records found">
		<thead>
			<tr class="table-heads ">  
			<th class="head-item mbr-fonts-style display-7">강의명</th>
			<th class="head-item mbr-fonts-style display-7">문의분류</th>
			<th class="head-item mbr-fonts-style display-7">문의제목</th>
			<th class="head-item mbr-fonts-style display-7">작성자</th>
			<th class="head-item mbr-fonts-style display-7">문의날짜</th>
		</tr>
		</thead>
		<tbody> 
		<tr> 
			<td class="body-item mbr-fonts-style display-7">강의이름</td>
			<td class="body-item mbr-fonts-style display-7">과제제출</td>
			<td class="body-item mbr-fonts-style display-7"><a href="javascript:qaDetail()">과제제출 언제까지 인가요?</a></td>
			<td class="body-item mbr-fonts-style display-7">loppy</td>
			<td class="body-item mbr-fonts-style display-7">2020-11-19</td>
		</tr>
		<tr>
			<td class="body-item mbr-fonts-style display-7">강의이름</td>
			<td class="body-item mbr-fonts-style display-7">환불문의</td>
			<td class="body-item mbr-fonts-style display-7">과정 중에 환불 가능한가요?</td>
			<td class="body-item mbr-fonts-style display-7">loppy</td>
			<td class="body-item mbr-fonts-style display-7">2020-11-19</td>
		</tr>
		</tbody>
	</table>
	<table style="text-align: center; margin: auto;">
		<!-- 하단 페이징 버튼 -->
		<tr>
			<td colspan="4" style="text-align: center;">
				<a class="" href="#">처음</a>
				<a class="" href="#">이전</a>
				<c:forEach var="i" begin="1" end="5">	
					<a class="" href="#">${i}</a>
				</c:forEach>		
				<a class="" href="#">다음</a>
				<a class="" href="#">맨끝</a>
			</td>
		</tr>
	</table>
  <script type="text/javascript">
			function qaDetail() {
				$.ajax({
					url:"qaDetail",
					success:function(data) {
						$("#tutorClassQA").html(data);
					}
				});
			}
	</script>