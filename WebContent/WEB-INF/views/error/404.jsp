<%@ page contentType="text/html; charset=UTF-8"%> 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/assets/images/mbr-96x48.png" type="image/x-icon">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal"> 
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/assets/bootstrap/css/bootstrap-reboot.min.css"> 
  <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,600,700,800,900,&display=swap" rel="stylesheet">
  <title>404 | Creative - Something Wrong</title>

	<style type="text/css">
	
	 
		
		.page-404{
		
		  position:relative;
		
		  width:350px;
		
		  height:200px;
		
		  margin:100px auto;
		
		  text-align: center;
		
		}
		
		
		
		.text-404{
		
		  font-size:138px;
		
		  background:#e9e3dd;
		
		  background-image: url('https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQTdWeWNteABnbzguiXSBxmfc8Z8nh_HHoWoK35QL81x4HnpVmgvQ');
		
		  background-repeat: no-repeat;
		
		  background-size: 200% 200%;
		
		  background-position: 100% 100%;
		
		  -webkit-animation: square 3s linear infinite;
		
		  -ms-animation: square 3s linear infinite;
		
		  animation: square 3s linear infinite;
		
		  -webkit-background-clip: text;
		
		  color:transparent;
		
		  text-align:center;
		
		  line-height:200px;
		
		  position:relative;
		
		}
		
		
		
		.text-404:nth-of-type(2){
		
		  text-shadow:none;
		
		  z-index:2;
		
		  position:absolute;
		
		  top:-139px;
		
		  left:-1px;
		
		}
		
		
		
		@-webkit-keyframes square {
		
		  0% { background-position: 0 0; }
		
		  25% { background-position: 100% 0; }
		
		  50% { background-position: 100% 100%; }
		
		  75% { background-position: 0 100%; }
		
		  100% { background-position: 0 0; }
		
		}
		
		
		
		@-ms-keyframes square {
		
		  0% { background-position: 0 0; }
		
		  25% { background-position: 100% 0; }
		
		  50% { background-position: 100% 100%; }
		
		  75% { background-position: 0 100%; }
		
		  100% { background-position: 0 0; }
		
		}
		
		
		
		@keyframes square {
		
		  0% { background-position: 0 0; }
		
		  25% { background-position: 100% 0; }
		
		  50% { background-position: 100% 100%; }
		
		  75% { background-position: 0 100%; }
		
		  100% { background-position: 0 0; }
		
		}
				
		body {
		  font-family:  Rubik, serif ;
		  font-weight: 500;
		}
		
		h2 {
		  font-family:  Rubik, serif ;
		  font-weight: 700;
		}
	</style>

</head>

<body>
  <div class="page-404">
    <p class="text-404">404</p>

    <h2>Aww Snap!</h2>
    <p>Something went wrong or that page does not exist yet. <br><br>
		<a href="<%=request.getContextPath()%>">Return Home</a>
    </p><br><br>
  </div>
  <br>
  <br><br>
	<section class="mt-4" style="background-color: #fff; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Helvetica Neue', Arial, sans-serif; color:#aaa; font-size:12px; padding: 0; align-items: center; display: flex;">
		<a href="<%=request.getContextPath()%>" style="flex: 1 1; height: 3rem; padding-left: 1rem;">
			To Be Hard Boiled Egg
		</a>
		<p style="flex: 0 0 auto; margin:0; padding-right:1rem;">
			 Go go <a href="<%=request.getContextPath()%>" style="color:#aaa;">Team1</a>
		 
		 	To Be Hard Boiled Egg
 		</p>

</body>

</html>
