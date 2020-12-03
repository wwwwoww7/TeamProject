<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html  >
<head>
  <!-- Site made with Mobirise Website Builder v5.2.0, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" type="image/x-icon">
  <meta name="description" content="Web Generator Description">
  
  
  <title>BanSook</title>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/tether/tether.min.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/theme/css/style.css">
  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
</head>
<body>
  
  <section class="header15 cid-shftsDGMKY mbr-fullscreen" id="header15-43">
    
    <div class="container-fluid">
    	<div class="row">
    		<div class="col-6">
                <div class="mbr-section-btn" align="right">
		         	<a class="btn btn-success display-4  text-primary" href="javascript:popupClose()">강의 종료</a>
		        </div>
        	</div>
    		<div class="col-6">
    			<h2 class="mbr-section-title mb-3 mbr-fonts-style display-2">
                    <strong>${classInfo.class_nm_s }</strong>
                </h2>
                
        	</div>
        	
    	</div>
        <div id="allDiv" class="row"  style="vertical-align: top;">
            <div class="col-12 col-md-6">
                <div class="text-wrapper">
                	<table style="width: 100%;">
                		<tr>
                			<td>
                				<h6 class="card-title mbr-fonts-style mb-4 display-5">
				               		<strong>Class QA</strong>
				            	</h6>
                			</td>
                			<td rowspan="2">
                				<div id="writeBtnDiv" class="mbr-section-btn" align="right">
									<a class="btn btn-success display-4 text-primary" href="javascript:pageLoad(3)">글쓰기</a>
								</div> 
                			</td>
                		</tr>
                		<tr>
                			<td>
                				<p class="mbr-text mb-3 mbr-fonts-style display-7">
			                    	자유롭게 강의에 대한 질문을 남겨 주세요!
			                    </p>
                			</td>
                		</tr>
                	</table>
					<div id="qaContentDiv">
						
					</div>
                    
                    <div class="container" id="classQAWriteForm">
                    	<div class="mbr-section-head">
				            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-5"><strong>Class QA</strong></h3>
				            
				        </div>
				        <div class="row justify-content-center mt-4">
				            <div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
				                <form action="" method="POST" class="mbr-form form-with-styler mx-auto" data-form-title="Form Name"><input type="hidden" name="email" data-form-email="true" value="JARFjkw3m2gJpaVnqU3mmcOaQJeIHQdqYdtpb0ASm3L6laY9m5jF82+gKIWQUX0i5P5qBWvFL5h4L9TkGHqYzi/D8+VqYXuw+4RTLTdW1Pla+f6u06XFWQBPCRGdxgO/">
				                    <div class="">
				                        <div hidden="hidden" data-form-alert="" class="alert alert-success col-12">Thanks for filling out the form!</div>
				                        <div hidden="hidden" data-form-alert-danger="" class="alert alert-danger col-12">Oops...! some problem!</div>
				                    </div>
				                    <div class="dragArea row">
				                        <div class="col-lg-4 col-md-12 col-sm-12 form-group" data-for="name">
				                            <input type="text" name="name" placeholder="Name" data-form-field="name" class="form-control" value="" id="name-form8-40">
				                        </div>
				                        <div class="col-lg-4 col-md-12 col-sm-12 form-group" data-for="email">
				                            <input type="email" name="email" placeholder="Email" data-form-field="email" class="form-control" value="" id="email-form8-40">
				                        </div>
				                        <div class="col-lg-4 col-md-12 col-sm-12 mbr-section-btn align-center">
				                      	  <button type="submit" class="btn btn-success display-4 ">Submit</button>
				                        </div>
				                    </div>
				                </form>
				            </div>
				        </div>
                    </div>
                    
                </div>
            </div>
            <div class="mbr-figure col-12 col-md-6">
            	<h6 class="card-title mbr-fonts-style mb-2 display-5">
                   	<strong>Class List</strong>
                </h6>
                
				<div class="list-group">
				<c:forEach var="videoItem" items="${videoList}">
					<a href="#" class="list-group-item list-group-item-action" data="${videoItem.class_video_url}">${videoItem.class_video_nm}</a>
				</c:forEach>
				</div>
<!--             	<ul class="jq-selectbox mb-2"> -->
<%--             	<c:forEach var="videoItem" items="${videoList}"> --%>
<!--             		<li class="jq-selectbox"> -->
<%--             			<a class="text-black" data="${videoItem.class_video_url}">${videoItem.class_video_nm}</a> --%>
<!--             		</li> -->
<%--             	</c:forEach> --%>
<!--             	</ul> -->
            	<iframe width="560" height="315" src="${firstVideoUrl}" 
            		frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	         	
            
            </div>
        </div>
        
       
    </div>
</section>



<section style="background-color: #fff; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Helvetica Neue', Arial, sans-serif; color:#aaa; font-size:12px; padding: 0; align-items: center; display: flex;">
	<a href="https://mobirise.site/u" style="flex: 1 1; height: 3rem; padding-left: 1rem;"></a>
	<p style="flex: 0 0 auto; margin:0; padding-right:1rem;">
	 Go  <a href="/" style="color:#aaa;">Team1</a>
 	</p>
</section>
<script src="<%=application.getContextPath()%>/resources/assets/web/assets/jquery/jquery.min.js"></script> 
<script src="<%=application.getContextPath()%>/resources/assets/popper/popper.min.js"></script>  
<script src="<%=application.getContextPath()%>/resources/assets/bootstrap/js/bootstrap.min.js"></script>  
<script src="<%=application.getContextPath()%>/resources/assets/tether/tether.min.js"></script>  
<script src="<%=application.getContextPath()%>/resources/assets/smoothscroll/smooth-scroll.js"></script>  
<script src="<%=application.getContextPath()%>/resources/assets/dropdown/js/nav-dropdown.js"></script>  
<script src="<%=application.getContextPath()%>/resources/assets/dropdown/js/navbar-dropdown.js"></script>  
<script src="<%=application.getContextPath()%>/resources/assets/touchswipe/jquery.touch-swipe.min.js"></script>  
<script src="<%=application.getContextPath()%>/resources/assets/parallax/jarallax.min.js"></script>  
<script src="<%=application.getContextPath()%>/resources/assets/masonry/masonry.pkgd.min.js"></script> 
<script src="<%=application.getContextPath()%>/resources/assets/imagesloaded/imagesloaded.pkgd.min.js"></script> 
<script src="<%=application.getContextPath()%>/resources/assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script> 
<script src="<%=application.getContextPath()%>/resources/assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>  
<script src="<%=application.getContextPath()%>/resources/assets/theme/js/script.js"></script>  
<script src="<%=application.getContextPath()%>/resources/assets/gallery/player.min.js"></script>  
<script src="<%=application.getContextPath()%>/resources/assets/gallery/script.js"></script> 
<script src="<%=application.getContextPath()%>/resources/assets/slidervideo/script.js"></script>  

<script type="text/javascript">
  	function pageLoad(page, class_qa_no){
  		var url = "";
  		
  		/* page-1:list , 2:write, 3:detail */
  		var class_no = "${classInfo.class_no}";
  		if(page == 1){
  			url+="classqalist";
  			$("#writeBtnDiv").show();
  		}else if(page == 2){
  			url+="classqadetail?class_qa_no="+class_qa_no;
  			$("#writeBtnDiv").hide();
  		} else {
  			var mid = "${sessionMid}";
  			
  			if(mid == null || mid== ""){
  				
  				alert("다시 로그인 해 주세요");
  				return false;
  			}
  			
  			
  			url+="classqaWriteForm";
  			$("#writeBtnDiv").hide();
  		}
  			
  		$.ajax({
  			url : url,
  			data : {class_no : class_no},
  			success: function(data){
  				$("#qaContentDiv").html(data);
  			}
  		});
  	}
	
	function popupClose(){ 
		close();				
	}
	
	$(function(){
		pageLoad(1);
		$('#classQAWriteForm').hide();
   		$("a").click(function(){
   			var url = $(this).attr("data");
   			console.log(url);
   			$("iframe").attr("src",url);
   		});
   	});
    
</script>
<style type="text/css">
	#header15-43 {
		padding-top: 10px;
		padding-bottom: 10px;
	}
	
	.mbr-fullscreen ,.container-fluid {
		vertical-align: top;
	}
	
	.display-2{
		font-size: 2rem;
	}
	
</style>
</body>
</html>