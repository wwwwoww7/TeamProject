<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
	
	<form onsubmit="communityWrite()" action="<%=request.getContextPath()%>/community/communityWrite" method="POST" class="mbr-form form-with-styler" data-form-title="Form Name">
		<div class="dragArea row" style="margin: 5px">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">카 테 고 리</span> 
				<select id="comm_cate_no" name="comm_cate_no" style="width: 35%;">
					<c:forEach var="communityitem" items="${communityCateList}">
						<option value="${communityitem.comm_cate_no}" selected>${communityitem.comm_cate_nm}</option>
					</c:forEach>
				</select>
			</div>
		</div>
		 <div class="dragArea row" style="margin: 5px;">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">제목 </span> 
				<input type="text" id="comm_title" name="comm_title" class="form-control"/>
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
				<textarea id="comm_content" name="comm_content" class="form-control" rows="12"></textarea>
				<span id="bcontentError" class="error"></span>
			</div>
		</div> 
		
		 <div class="dragArea row">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<button type="submit" class="btn item-btn btn-success display-7 text-primary" style="margin: 5px;"  >글쓰기</button>
				<script type="text/javascript">
				function communityWrite() { 
					
					console.log("안오나 ");
					var btitle = $("#comm_title").val().trim();
					if(btitle == "") { 
						$("#btitleError").text("필수"); 
					}
					else { $("#btitleError").text(""); }
					
					var bcontent = $("#comm_content").val().trim();
					if(bcontent == "") { $("#bcontentError").text("필수"); }
					else { $("#bcontentError").text(""); }
					
					if(btitle == "" || bcontent == "") {
						return false;	
					} 
					
					return true;
// 					console.log("안오나 2");
// 					$.ajax({
<%-- 						url:"<%=request.getContextPath()%>/community/communityWrite", --%>
// 						method:"post",
// 						data: {comm_title:comm_title, comm_content:comm_content},
// 						success:function(data) {
// 							if(data.result == "success") {
// 								allFunction(1,1);
// 							}
// 							console.log(data);
// 						}
// 					});
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

