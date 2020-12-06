<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
	
	<form onsubmit="communityModify()" action="<%=request.getContextPath()%>/community/reviewModify" method="POST" class="mbr-form form-with-styler" data-form-title="Form Name">
		 
		<input type="hidden" id="review_no" name="review_no" value="${reviewDetail.review_no}"/>
		<div class="dragArea row" style="margin: 5px">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">강 의 명</span> 
				<input type="text" id="" name="" class="form-control" value="${class_nm}" disabled/>
			</div>
			
		</div>
		<div class="dragArea row" style="margin: 5px">
			<div class="col-md-6 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">후 기 별 점</span> 
				<select id="review_star" name="review_star" style="width: 65%;">
					<option value="1" >★☆☆☆☆</option>
					<option value="2" >★★☆☆☆</option>
					<option value="3" >★★★☆☆</option>
					<option value="4" >★★★★☆</option>
					<option value="5" selected>★★★★★</option>
				</select>
			</div>
		</div>
		
		
		 <div class="dragArea row" style="margin: 5px;">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff;">제목 </span> 
				<input type="text" id="review_title" name="review_title" class="form-control" value="${reviewDetail.review_title}"/>
				<span id="btitleError" class="error"></span>
			</div>
		</div> 
		 <div class="dragArea row" style="margin: 5px">
			<div class="col-md-12 input-group">
				<span class="input-group-text" style="width: 100px; background-color: #ffff; text-align: center;">내	용 </span> 
				<textarea id="review_content" name="review_content" class="form-control" rows="12" inputmode="text" >${reviewDetail.review_content}</textarea>
				<span id="bcontentError" class="error"></span>
			</div>
		</div> 
		
		 <div class="dragArea row">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<button type="submit" class="btn item-btn btn-success display-7 text-primary" style="background-color: #ffc800; color: #ffff; margin: 0px; border-radius: 100px;"  >글쓰기</button>
				<a class="btn" style="background-color: #ffc800; color: #ffff; margin: 0px; border-radius: 100px;" href="community">취소</a>
				<script type="text/javascript">
				function communityModify() { 
					
					console.log("안오나 ");
					var btitle = $("#review_title").val().trim();
					if(btitle == "") 
						{ $("#btitleError").text("필수"); 
					}
					else { $("#btitleError").text(""); }
					
					var bcontent = $("#review_content").val().trim();
					if(bcontent == "") { $("#bcontentError").text("필수"); }
					else { $("#bcontentError").text(""); }
					
					if(btitle == "" || bcontent == "") {
						return false;	
					} 
					 
				}
				</script>		
			</div>
			<div class="col-md-2"></div>
		</div> 
	</form>
</div>
<script type="text/javascript">
	$(function(){ 
		$("#class_no").val('${reviewDetail.class_no}');
		$("#review_star").val('${reviewDetail.review_star}');
	});


</script>
 	