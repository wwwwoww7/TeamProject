<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container scroll">
	<table class="table" cellspacing="0" data-empty="No matching records found">
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
		<c:forEach var="notice" items="${list}">
			<tr>
				<td class="body-item mbr-fonts-style display-7">${notice.class_notice_no}</td>
				<td class="body-item mbr-fonts-style display-7">${notice.class_nm}</td>
				<td class="body-item mbr-fonts-style display-7">
				<a href="javascript:noticeDetail()">${notice.class_notice_title}</a></td>
				<td class="body-item mbr-fonts-style display-7">${notice.mid}</td>
				<td class="body-item mbr-fonts-style display-7"><fmt:formatDate value="${notice.class_notice_date}" pattern="yyyy-MM-dd"/></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<table style="text-align: center; margin: auto;">
		<tr>
			<td colspan="4" style="text-align: center;">
				<a class="btn" href="javascript:tutorClassNotice(1,mid)">처음</a>
				<c:if test="${pager.groupNo > 1}">
					<a class="btn" href="javascript:tutorClassNotice(${pager.startPageNo-1},mid)">이전</a>
				</c:if>
				<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
					<c:if test="${pager.pageNo==i}">
						<a class="btn" href="javascript:tutorClassNotice(${i},mid)">${i}</a>
					</c:if>
					<c:if test="${pager.pageNo !=i}">
						<a class="btn" href="javascript:tutorClassNotice(${i},mid)">${i}</a>
					</c:if>
				</c:forEach> 
				<c:if test="${pager.groupNo < pager.totalGroupNo}">
					<a class="btn" href="javascript:tutorClassNotice(${pager.endPageNo+1},mid)">다음</a>
				</c:if>
					<a class="btn" href="javascript:tutorClassNotice(${pager.totalPageNo},mid)">맨끝</a>
			</td>
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