<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header class="header dark-bg">
	<div class="toggle-nav">
		<div class="icon-reorder tooltips"
			data-original-title="Toggle Navigation" data-placement="bottom">
			<span style="color: black;"></span> <i class="icon_menu"></i>
		</div>
	</div>
	<a href="<%=application.getContextPath()%>" class="logo">BAN<span class="lite">숙</span>
		<img  class="mb-3" width="50px" height="50px" src="<%=application.getContextPath()%>/resources/images/logoegg_line.png">
	</a>

	<div class="top-nav notification-row">
		<ul class="nav pull-right top-menu">

			<li id="task_notificatoin_bar" class="dropdown"> 
				<a href="<%=application.getContextPath()%>/cart">
					<i class="icon-cart"></i> <span class="badge bg-important">6</span>
				</a>
			</li>

			<c:if test="${sessionMid == null}">
				<li class="dropdown"> 
					<a href="<%=application.getContextPath()%>/login/login"  class="dropdown-toggle" > 
 						<span class="text-white">Login</span> 
 					</a> 
 				</li>
			</c:if> 
			
			<c:if test="${sessionMid != null}"> 
				<li class="dropdown">
					<a data-toggle="dropdown" class="dropdown-toggle" > 
						<span class="profile-ava">
							<img alt="" width="36px" height="36px" src="<%=application.getContextPath()%>/resources/images/loppy.png">
						</span> 
						<span class="username">닉네임</span> 
						<b class="caret"></b>
					</a>
					<div class="log-arrow-up">
					<ul class="dropdown-menu extended logout">
						
						<li class="eborder-top"><a href="<%=application.getContextPath()%>/mypage/mypage_user"><i class="icon_profile"></i> MyPage</a></li>
						<li><a href="<%=application.getContextPath()%>/"><i class="icon_key_alt"></i> LogOut</a></li>
						
					</ul>
					</div>
				</li>
			</c:if>
			
		</ul>
	</div>
</header>