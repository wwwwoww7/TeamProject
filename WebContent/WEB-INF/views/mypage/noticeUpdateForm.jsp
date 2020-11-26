<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<input type="hidden" id="class_notice_no" name="class_notice_no" value="${notice.class_notice_no}"/>
<div class="row justify-content-center mt-4">
	<div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
		<form action="/" method="POST" class="mbr-form form-with-styler" data-form-title="Form Name">
			<div class="dragArea row" style="margin: 5px">
				<div class="col-md-6 input-group">
					<span class="input-group-text" style="width: 80px; background-color: #ffff; ">강 의 명</span> 
					<input type="text" id="class_nm_s" name="class_nm_s" class="form-control" value="${notice.class_nm_s}" readonly/>
				</div>
				<div class="col-md-6 input-group">
					<span class="input-group-text" style="width: 80px; background-color: #ffff;">제	목</span> 
					<input type="text" id="class_notice_title" name="class_notice_title" class="form-control" value="${notice.class_notice_title}"/>
					<span id="ntitleError" class="error"></span>
				</div>
			</div>
			<div class="dragArea row" style="margin: 5px;">
				<div class="col-md-12 input-group">
					<span class="input-group-text" style="width: 80px; background-color: #ffff;">작 성 자 </span> 
					<input type="text" id="mid" name="mid" class="form-control" value="${notice.mid}"  readonly/>
				</div>
			</div>
			<div class="dragArea row" style="margin: 5px">
				<div class="col-md-12 input-group">
					<span class="input-group-text" style="width: 80px; background-color: #ffff;">첨부파일</span> 
					<input type="file" id="class_hw_file" name="class_hw_file" class="form-control" value="${notice.class_hw_file}"/>
				</div>
			</div>
			<div class="dragArea row" style="margin: 5px">
				<div class="col-md-12 input-group">
					<span class="input-group-text" style="width: 80px; background-color: #ffff;">내	용 </span> 
					<textarea id="class_notice_content" name="class_notice_content" class="form-control" 
						style="height: 100px;">${notice.class_notice_content}</textarea>
					<span id="ncontentError" class="error"></span>
				</div>
			</div>
			<div class="dragArea row">
				<div class="col-md-3"></div>
				<div class="col-md-3">
					<a class="btn item-btn btn-success display-7 text-primary" style="margin: 5px;" href="javascript:noticeUpdate()" >수정</a>
					<script type="text/javascript">
						function noticeUpdate() {
							
							var noticeNo = $("#class_notice_no").val();
							
							var ntitle = $("#class_notice_title").val().trim();
							if(ntitle == "") { $("#ntitleError").text("필수입력"); }
							else { $("#ntitleError").text(""); }
							
							var ncontent = $("#class_notice_content").val().trim();
							if(ncontent == "") { $("#ncontentError").text("필수"); }
							else { $("#ncontentError").text(""); }
							
							if(ntitle == "" || ncontent == "") {
								return ;	
							} 
							
							var nfile = $("#class_hw_file").val();
							
							var mid = $("#mid").val();
							
							$.ajax({
								url:"noticeUpdate",
								method:"post",
								data: { class_notice_no : noticeNo, class_notice_title:ntitle, class_notice_content:ncontent},
								success:function(data) { //{"result":"success"}형태의 json방식
									if(data.result == "success") {
										noticeDetail(data.notice_no); 
									}
								}
							});
						}
					</script>		
				</div>
				<div class="col-md-3">
					<a class="btn item-btn btn-success display-7 text-primary" href="javascript:boardList()">취소</a>
				</div>
				<div class="col-md-3"></div>
			</div>
		</form>
	</div>
</div>