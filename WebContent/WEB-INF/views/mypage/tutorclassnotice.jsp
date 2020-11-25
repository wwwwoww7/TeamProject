<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
<!--  강의 공지사항  -->
<script type="text/javascript">

</script>
<div class="container">           
  <table class="table table-hover" style="text-align: center; margin: auto;">
    <thead>
      <tr>
        <th>공지번호</th>
        <th>강의명</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성날짜</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>오늘의 토익</td>
        <td><a href="javascript:noticeDetail()">3주차 수업 연기</a></td>
        <td>강사id</td>
        <td>2020-11-20</td>
      </tr>
      <tr>
        <td>2</td>
        <td>쉽게 말하기</td>
        <td>과제제출안내</td>
        <td>강사id</td>
        <td>2020-11-20</td>
      </tr>
      <tr>
        <td>3</td>
        <td>누구보다 쉬운 자바</td>
        <td>환불안내</td>
        <td>강사id</td>
        <td>2020-11-20</td>
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
	<br/>
   <a class="btn" href="javascript:noticeEdit()">글쓰기</a>
   <script type="text/javascript"> 
       function noticeEdit(){
         $.ajax({
            url:"noticeEdit",
            type: "POST",
            success: function(data){
                  $("#tutorClassNotice").html(data);
               }
            });
         }
   </script> 
<!-- 공지사항 상세보기 -->
  <script type="text/javascript">
	function noticeDetail() {
		$.ajax({
			url:"noticeDetail",
			success:function(data) {
				$("#tutorClassNotice").html(data);
			}
		});
	}
	</script>
</div>
 --%>
<div class="container scroll">
	<table class="table" cellspacing="0"
		data-empty="No matching records found">
		<thead>
			<tr class="table-heads ">
				<th class="head-item mbr-fonts-style display-7">공지번호</th>
				<th class="head-item mbr-fonts-style display-7">강의명</th>
				<th class="head-item mbr-fonts-style display-7">제목</th>
				<th class="head-item mbr-fonts-style display-7">작성자</th>
				<th class="head-item mbr-fonts-style display-7">작성날짜</th>
			</tr>
		</thead>
	
		<tbody>
			<tr>
				<td class="body-item mbr-fonts-style display-7">1</td>
				<td class="body-item mbr-fonts-style display-7">오늘의 토익</td>
				<td class="body-item mbr-fonts-style display-7">
				<a href="javascript:noticeDetail()">3주차 수업 연기</a></td>
				<td class="body-item mbr-fonts-style display-7">강사id</td>
				<td class="body-item mbr-fonts-style display-7">2020-11-20</td>
			</tr>
			<tr>
				<td class="body-item mbr-fonts-style display-7">2</td>
				<td class="body-item mbr-fonts-style display-7">쉽게 말하기</td>
				<td class="body-item mbr-fonts-style display-7">과제제출안내</td>
				<td class="body-item mbr-fonts-style display-7">강사id</td>
				<td class="body-item mbr-fonts-style display-7">2020-11-20</td>
			</tr>
			<tr>
				<td class="body-item mbr-fonts-style display-7">3</td>
				<td class="body-item mbr-fonts-style display-7">누구보다 쉬운 자바</td>
				<td class="body-item mbr-fonts-style display-7">환불안내</td>
				<td class="body-item mbr-fonts-style display-7">강사id</td>
				<td class="body-item mbr-fonts-style display-7">2020-11-20</td>
			</tr>
		</tbody>
	</table>
	<table style="text-align: center; margin: auto;">
		<tr>
			<td colspan="4" style="text-align: center;"><a class="" href="#">처음</a>
				<a class="" href="#">이전</a> <c:forEach var="i" begin="1" end="5">
					<a class="" href="#">${i}</a>
				</c:forEach> <a class="" href="#">다음</a> <a class="" href="#">맨끝</a></td>
	</table>
	<br />
	<a class="btn"
		style="background-color: #ffc800; color: #ffff; margin: 0px;"
		href="javascript:noticeEdit()">글쓰기</a>
	<script type="text/javascript"> 
		function noticeEdit(){
			$.ajax({
				url:"noticeEdit",
				type: "POST",
				success: function(data){
					$("#tutorNotice").html(data);
				}
			});
		}
	</script>
	<!-- 공지사항 상세보기 -->
	<script type="text/javascript">
		function noticeDetail() {
			$.ajax({
				url:"noticeDetail",
				success:function(data) {
					$("#tutorNotice").html(data);
				}
			});
		}
	</script>
</div>