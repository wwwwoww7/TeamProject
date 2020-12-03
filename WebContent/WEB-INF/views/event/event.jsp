<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%-- 2020. 10. 29. --%>

<%-- <!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>TEAM1</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<!-- bootstrap theme -->
		<link href="<%=application.getContextPath()%>/resources/css/bootstrap-theme.css" rel="stylesheet">
		<!--external css-->
		<!-- font icon -->
		<link href="<%=application.getContextPath()%>/resources/css/elegant-icons-style.css" rel="stylesheet" />
		<link href="<%=application.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet" /> 
		<link href="<%=application.getContextPath()%>/resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
		<!-- Custom styles -->
		<link href="<%=application.getContextPath()%>/resources/css/style.css" rel="stylesheet"> 
		<link href="<%=application.getContextPath()%>/resources/css/style-responsive.css" rel="stylesheet"> 
		
		<link href="https://unpkg.com/bootstrap@4.0.0/dist/css/bootstrap.css" rel="stylesheet"/>
		<link href="https://unpkg.com/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet" />
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		
		<script src="<%=application.getContextPath()%>/resources/js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="<%=application.getContextPath()%>/resources/js/jquery.slimscroll.min.js"></script>
    	<script src="<%=application.getContextPath()%>/resources/js/jquery.autosize.min.js"></script> 
		<script src="<%=application.getContextPath()%>/resources/js/scripts.js"></script>
		
	</head>

	<body>
		<!-- container section start -->
  		<section id="container-fluid">
			<jsp:include page="/WEB-INF/views/include/header.jsp"/>
			<jsp:include page="/WEB-INF/views/include/menu.jsp"/>

			<!--main content start-->
			<section id="main-content">
			
				<section class="wrapper">
					<!--overview start-->
					<h3 class="page-header">
						<i class="fa fa-laptop"></i> EVENT
					</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="<%=application.getContextPath()%>">home</a></li>
						<li><i class="fa fa-laptop"></i>Event</li>
					</ol>
							
					<div  class="input-group mb-3">
					    <input type="text" style="float: right"  class="form-control-md" placeholder="Search" >
					    <button style="float: right" type="submit"><i class="fa fa-search"></i></button>
					    <div class="input-group-append"  ></div>
				  	</div>
					<script type="text/javascript">
						$(function() { 
							openCity("ing");
						});
						
						function openCity(ingend) {
								$.ajax({
									url:"event/eventList",
									data:{ingend:ingend},
									success:function(data) {
										$("#ingendview").html(data);
									}
								});	
						}
					</script>
						
					<h4>전체이벤트 </h4>
					<div class="tab" >
					  <a class="tablinksbtn btn-secondary" href="javascript:openCity('ing')">진행중인 이벤트</a>
					  <a class="tablinksbtn btn-outline-dark" href="javascript:openCity('end')">종료된 이벤트</a>
					</div>
					<div id="ingendview" class="tabcontent"></div>
			
			
				<jsp:include page="/WEB-INF/views/include/footer.jsp" />
		
		
		
		
		
		
		
		
		
		
		
			</section>

		</section>
	</body>
</html> --%>

<!DOCTYPE html>
<html  >
<head>
  <!-- Site made with Mobirise Website Builder v5.2.0, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" type="image/x-icon">
  <meta name="description" content="Site Maker Description">
  
  
  <title>event</title>
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
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/gallery/style.css">
  <link rel="preload" as="style" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css">
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
</head>
<body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>

	<section class="section-table cid-shflacCz1o" id="table1-3f">
	
	  
	  
	  <div class="container container-table">
	      <h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-2">
	      	<strong>EVENT</strong></h2>
	      
	      <div class="table-wrapper">
	        <div class="container">
	          <div class="row search">
	            <div class="col-md-6"></div>
	            <div class="col-md-6">
	                <div class="dataTables_filter">
	                  <label class="searchInfo mbr-fonts-style display-7">이벤트 검색:</label>
	                  <input class="form-control input-sm" type="text" name="q" value="" >
	                  <input class="btn btn-sm btn-success btn-primary-outline display-7 text-primary" type="submit" value="검색">
	                </div>
	            </div>
	          </div>
	        </div>
	        <div class="container" style="text-align:right; vertical-align:right;">
              	<sec:authorize access="hasRole('ADMIN')">
           		<a class="btn btn-sm btn-success btn-primary-outline display-7 text-primary" href="<%=application.getContextPath()%>/event/eventWriteForm">이벤트등록</a>
           		<a class="btn btn-sm btn-success btn-primary-outline display-7 text-primary" href="<%=application.getContextPath()%>/event/eventUpdateForm">이벤트수정</a>
           		</sec:authorize>
	        </div>
	      </div>
	    </div>
	</section>
	
	<section class=" " id="gallery2-3a">
		<div class="container">
			<div>
				<div style="text-align:center;vertical-align:middle;"> <!-- mbr-gallery-filter container gallery-filter-active  -->
							<a class="btn btn-md btn-success btn-primary-outline display-7 text-primary" href="javascript:openCity(1,1)">진행중</a>
							<a class="btn btn-md btn-success btn-primary-outline display-7 text-primary" href="javascript:closeCity(0,1)">종료</a>
				</div>
				
			<!-- Gallery -->
			<div class="mbr-gallery-row">
				<div class="mbr-gallery-layout-default">
					<div>
						<div id="ingendview" > </div>
					</div>
					<div class="clearfix">
					</div>
				</div>
			</div>
			   
		   </div>
		</div>
	
	</section>

 	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>

	
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
			
		$(function() { 
			openCity(1,0);
		});
		
		
		function openCity(eenable, pageNo) {
				if(!pageNo) {
					pageNo = 1;
				}
				$.ajax({
					url:"event/eventList",
					data:{eenable:eenable, pageNo:pageNo},
					success:function(data) {
						$("#ingendview").html(data);
					}
				});	
		}
	
		
		function closeCity(eenable) {
			$.ajax({
				url:"event/eventList2",
				data:{eenable:eenable},
				success:function(data) {
					$("#ingendview").html(data);
				}
			});
		}
			
	 </script>
	 <style type="text/css">
	
		#table1-3f  {
			background-color: white; 
		}
		#table_list {
			background-color: white;
			padding-top: 0;
		}
		
		#gallery2-3a {
			background: #fff;
		}
	</style>
</body>
</html>