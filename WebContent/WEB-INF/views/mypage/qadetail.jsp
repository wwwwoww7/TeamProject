<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html  >
<head>
  <!-- Site made with Mobirise Website Builder v5.2.0, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" type="image/x-icon">
  <meta name="description" content="Web Page Generator Description">
  
  <title>my page</title>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons2/mobirise2.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/tether/tether.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/datatables/data-tables.bootstrap4.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/socicon/css/styles.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/theme/css/style.css">
  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
</head>
<body>

	<jsp:include page="/WEB-INF/views/include/userEditheader.jsp" />

<section
		class="testimonails3 carousel slide testimonials-slider cid-sh9WSPbYRc"
		data-interval="false" id="testimonials3-1e">
		<div class="text-center container-fluid">
			<h3 class="mb-4 mbr-fonts-style display-2">
				<strong style="color: #ffc800;">강의문의</strong><br />
				<br />
			</h3>
		</div>
</section>
<section class="section-table cid-shfdjfFbld" id="table1-2m">

		<div class="container container-table">
			<h2
				class="mbr-section-title mbr-fonts-style align-center pb-3 display-5">
				<strong>강의 문의</strong>
			</h2>

			<div class="table-wrapper">
				<div class="container"></div>

				<div id="tutorClassQA" class="container scroll">
				
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
						        <td>${qalist.class_nm_s}</td>
						        <th>답변완료여부</th>
								<c:if test="${qalist.class_qa_answer != null}">
						        	<td colspan="10">답변완료</td>
						        </c:if>
						        <c:if test="${qalist.class_qa_answer == null}">
						        	<td colspan="10">미응답</td>
						        </c:if>
						    </tr>
						    <tr>
						        <th>작성자</th>
						        <td>${qalist.writer_id}</td>
						        <th>작성일</th>
						        <td><span><fmt:formatDate value="${qalist.class_qa_date}" pattern="yyyy-MM-dd"/></span></td>
							</tr>
							<tr>
								<th>제목</th>
						        <td colspan="10">${qalist.class_qa_title}</td>
							</tr>
							</tbody>
						</table>
						<table class="table table-bordered">
							<colgroup>
							    <col width="15%">
							    <col width="35%">
							    <col width="15%">
							    <col width="*">
							</colgroup>
							<tbody>   
							    <tr>
							        <td colspan="4" width="100%;">
							        	<textarea rows="10"  class="p-3"  style="width: 100%;background-color:transparent;border: 0;resize: none;" disabled>${qalist.class_qa_content}</textarea>
							        </td>
							    </tr>
							</tbody>
						</table>
						<br/>
						<sec:authorize access="hasAnyRole('ROLE_TUTOR')">
						<table class="table table-bordered">
							<colgroup>
							    <col width="15%">
							    <col width="35%">
							    <col width="15%">
							    <col width="*">
							</colgroup>
							<tbody>
								
							    <c:if test="${qalist.class_qa_answer != null}">
									<tr>
								        <th class="text-center">답변</th>
								         <td class="p-3" width="100%;">
								         	<textarea class="p-3" style="width: 100%;background-color:transparent;border: 0;resize: none;" disabled>${qalist.class_qa_answer}</textarea>
								        </td>
								    </tr> 
						 		</c:if>
						 		
						    </tbody> 
					    </table>
					    <c:if test="${qalist.class_qa_answer != null}">
						    <div align="right">
						    	<a class="btn btn-sm" style="background-color: #ffc800; color: #ffff;" href="<%=request.getContextPath()%>/mypage/qaDelete?class_qa_no=${qalist.class_qa_no}">답변삭제</a>   
							</div>
						</c:if>
						
						<br/>
						<form onsubmit="return writeCheck();" action="qaAnswer" method="POST" id="qaAnswer" class="mbr-form form-with-styler">
							<input type="hidden" id="class_qa_no" name="class_qa_no" value="${qalist.class_qa_no}"/>
							
							<div class="input-group">
								<textarea  id="class_qa_answer" name="class_qa_answer" class="form-control autosize" onkeydown="resize(this)" onkeyup="resize(this)" placeholder="답변 내용을 입력하세요!"></textarea>
								<input type="submit" class="btn item-btn btn-success text-primary display-7" inputmode="text" value="답변"  height="100%"/>
							</div>
						</form>
						</sec:authorize>
						<br/>
						<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px;" href="<%=request.getContextPath()%>/mypage/mypage_tutor">확인</a>	
					</div>
				
				</div>
				
				<div class="container table-info-container"></div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		function writeCheck() {
	
			var answer = $("#class_qa_answer").val();
			if(answer == "") { 
				
				alert("답변을 입력해주세요");
				$("#class_qa_answer").focus();
				return false;
			}
			
			else{
				$("#qaAnswer").writeCheck();
			}
			return true;
	
		}
		function resize(obj) {
			  obj.style.height = "1px";
			  obj.style.height = (12+obj.scrollHeight)+"px";
		}
		
	</script>	


<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<input type="hidden" id="mid" name="mid" value="${sessionMid}"/>
	<script
		src="<%=application.getContextPath()%>/resources/assets/web/assets/jquery/jquery.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/popper/popper.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/tether/tether.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/smoothscroll/smooth-scroll.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/dropdown/js/nav-dropdown.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/dropdown/js/navbar-dropdown.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/touchswipe/jquery.touch-swipe.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/parallax/jarallax.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/masonry/masonry.pkgd.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/imagesloaded/imagesloaded.pkgd.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/theme/js/script.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/gallery/player.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/gallery/script.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/assets/slidervideo/script.js"></script>
		<style>
			textarea.autosize { min-height: 50px; }
		</style>
</body>
</html>