<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<p>${board}</p>



<div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
	
	<form action="boardWriteForm" method="POST" class="mbr-form form-with-styler" data-form-title="Form Name">
		
		
		
		
		<div class="dragArea row" style="margin: 5px">
			<div class="col-md-6 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">카 테 고 리</span> 
				<select id="class_nm_s" name="class_nm_s" style="width: 65%;">
					<c:forEach var="className" items="${classNolist}">
						<%-- <c:if test=""> --%>
							<option value="강의명1" selected>${className.class_no}</option>
						<%-- </c:if> --%>
					</c:forEach>
				</select>
			</div>
			<div class="col-md-6 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">작 성 자</span> 
				<input type="text" id="mid" name="mid" class="form-control"
					<c:if test="${sessionMid!=null}">value="${sessionMid}"</c:if>
					<c:if test="${sessionMid==null}">value="fall"</c:if>
				readonly/>
			</div>
		</div>
		<div class="dragArea row" style="margin: 5px;">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">제목 </span> 
				<input type="text" id="btitle" name="btitle" class="form-control"/>
				<span id="btitleError" class="error"></span>
			</div>
		</div>
		<!-- <div class="dragArea row" style="margin: 5px">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">첨부파일</span> 
				<input type="file" id="class_hw_file" name="class_hw_file" class="form-control"/>
			</div>
		</div> -->
		<div class="dragArea row" style="margin: 5px">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff; text-align: center;">내	용 </span> 
				<textarea id="bcontent" name="bcontent" class="form-control" rows="12"></textarea>
				<span id="bcontentError" class="error"></span>
			</div>
		</div>
		
		<div class="dragArea row">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<a class="btn item-btn btn-success display-7 text-primary" style="margin: 5px;" href="javascript:boardWrite()" >글쓰기</a>
				<script type="text/javascript">
				function boardWrite() {
					var btitle = $("#btitle").val().trim();
					if(btitle == "") { $("#btitleError").text("필수"); }
					else { $("#btitleError").text(""); }
					
					var bcontent = $("#bcontent").val().trim();
					if(bcontent == "") { $("#bcontentError").text("필수"); }
					else { $("#bcontentError").text(""); }
					
					if(btitle == "" || bcontent == "") {
						return;	
					} 
					
					var mid = $("#mid").val().trim();
					
					$.ajax({
						url:"boardWrite",
						method:"post",
						data: {btitle:btitle, bcontent:bcontent, mid:mid},
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
			<div class="col-md-4">
				<a class="btn item-btn btn-success display-7 text-primary" href="community">취소</a>
			</div>
			<div class="col-md-2"></div>
		</div>
	</form>
</div>

