<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>반숙</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<%=application.getContextPath()%>/resources/css/mypagestyles.css" rel="stylesheet" />
   		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   		 
    </head>
    <body id="page-top">

	 <!-- Navigation-->
       <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
           <a class="navbar-brand js-scroll-trigger" href="userEdit">
               <span class="d-block d-lg-none">BAN숙</span>
               <span class="d-none d-lg-block">
	             <!--   <a class="nav-link js-scroll-trigger" href="javascript:userEdit()"> -->
	               		<img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="<%=application.getContextPath()%>/resources/images/loppy.png" />
	              <!--  </a> -->
               </span>
           </a>	
           <script type="text/javascript">
           		
           </script>
           
           <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
           </button>
           <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav">
                    <a href="<%=application.getContextPath()%>" class="logo" style="font-weight: 700">BAN<span class="lite" style="color: #fff">숙</span>
						<img  class="mg-2" width="40px" height="40px" src="<%=application.getContextPath()%>/resources/images/logoegg_line.png">
		  		 	</a>
		  		 	
		  		 	<!---------------------- 사용자가 수강생일때---------------------------------->
		  		 	<%-- <sec:authorize access="hasRole('ROLE_USER')"> --%>
                   	<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#classlist">수강목록</a></li>
                   	<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#picklist">찜목록</a></li>
                   	<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#myQa">나의 문의</a></li>
                 <%--   </sec:authorize>
                   
                   <sec:authorize access="hasRole('ROLE_TUTOR')"> --%>
                  	<!---------------------- 사용자가 강사일때-----------------------------------> 
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#tutorlist">나의강의</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#notice">공지사항</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#classQA">강의문의</a></li>
                    <%-- </sec:authorize> --%>
               </ul>
           </div>
       </nav>
       
       
       <!-- Page Content-->
       <div class="container-fluid p-0">
     
       <!---------------------- 사용자가 수강생일때---------------------------------->
       <%-- <sec:authorize access="hasRole('ROLE_USER')"> --%>
           <!-- 수강목록-->
           <section class="resume-section" id="classlist">
               <div class="resume-section-content">
                   <h1 class="mb-0 text-primary">
                    	   수강목록
                   </h1>
                   <br/>

                    <script type="text/javascript">
                   
	                   function userClasslist(){
	   					$.ajax({
	   						url:"userclasslist",
	   						success: function(data){
	   								$("#mypageUserList").html(data);
	   							}
	
	   						});
	   					
	   					}

	                   jQuery(document).ready(function(){
	                	   userClasslist();
	                   }); 
                   </script> 
                   <div id="mypageUserList" ></div>
                   
               </div>
           </section>
           <hr class="m-0" />
           <!-- 찜목록-->
           <section class="resume-section" id="picklist">
               <div class="resume-section-content">
                   <h1 class="mb-0 text-primary">
                     	  찜목록
                   </h1>
                   <br/>
                   <script type="text/javascript">
                   
	                   function userPicklist(){
	   					$.ajax({
	   						url:"userpicklist",
	   						success: function(data){
	   								$("#mypagePickList").html(data);
	   							}
	
	   						});
	   					
	   					}

	                   jQuery(document).ready(function(){
	                	   userPicklist();
	                   }); 
                   </script> 
                   <div id="mypagePickList" ></div>
               </div>
           </section>  
           
           <!-- 나의 문의-->
           <section class="resume-section" id="myQa">
               <div class="resume-section-content">
                   <h1 class="mb-0 text-primary">나의문의</h1>
                   <br/>
                   <script type="text/javascript">
                   
	                   function myQa(){
	   					$.ajax({
	   						url:"myQa",
	   						success: function(data){
	   								$("#myqa").html(data);
	   							}
	
	   						});
	   					}
	                   $(function() {
	                	   myQa();
						});

                   </script> 
                   <div id="myqa"></div> 
               </div>
           </section>      
          <%-- </sec:authorize> --%>
          
          
          
          <!---------------------- 사용자가 강사일때---------------------------------->  
         <%--  <sec:authorize access="hasRole('ROLE_TUTOR')"> --%>
            <!-- 나의 강의-->
           <section class="resume-section" id="tutorlist">
	            <div class="resume-section-content">
	                <h1 class="mb-0 text-primary">
	                   	 나의 강의
	                </h1>
	                <br/>
	                <script type="text/javascript">
                   
	                   function tutorClasslist(){
	   					$.ajax({
	   						url:"tutorClassList",
	   						type: "POST",
	   						success: function(data){
	   								$("#tutorClassList").html(data);
	   							}
	
	   						});
	   					
	   					}

	                   jQuery(document).ready(function(){
	                	   tutorClasslist();
	                   }); 
                   </script> 
                   <div id="tutorClassList" ></div>
	            </div>
	        </section>
	        <hr class="m-0" />
	        
	        <!-- 공지사항-->
	        <section class="resume-section" id="notice">
	            <div class="resume-section-content">
	                <h1 class="mb-0 text-primary">
	                    	공지사항
	                </h1>
	                <br/>
	                <script type="text/javascript">
                   
	                   function tutorClassNotice(){
	   					$.ajax({
	   						url:"tutorClassNotice",
	   						method: "post",
	   						data:{tutor_id:tutor_id},
	   						success: function(data){
	   								$("#tutorClassNotice").html(data);
	   							}
	
	   						});
	   					}
	                   jQuery(document).ready(function(){
	                	   tutorClassNotice();
	                   }); 
                   </script> 
                   <div id="tutorClassNotice" ></div>
	            </div>
	        </section>
	        <hr class="m-0" />
	
	         <!-- 강의문의-->
		         <section class="resume-section" id="classQA">
		            <div class="resume-section-content">
		                <h1 class="mb-0 text-primary">
		                    	강의문의
		                </h1>
		                <br/>
		                <script type="text/javascript">
		                  
		                   function tutorClassQA(){
		   					$.ajax({
		   						url:"tutorClassQA",
		   						type: "POST",
		   						success: function(data){
		   								$("#tutorClassQA").html(data);
		   							}
		
		   						});
		   					
		   					}
		
		                   jQuery(document).ready(function(){
		                	   tutorClassQA();
		                   }); 
		
		                  </script> 
		                  <div id="tutorClassQA"></div>
		            </div>
		        </section>
		        <hr class="m-0" />
            <%-- </sec:authorize> --%>
         </div>
		
		<!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Core theme JS-->
        <script src="<%=application.getContextPath()%>/resources/js/scripts_mypage.js"></script>
     
    </body>
</html>