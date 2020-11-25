<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<section class="menu cid-shfokUU9e4" once="menu" id="menu1-3q">
    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="<%=application.getContextPath()%>">
                         <img src="<%=application.getContextPath()%>/resources/assets/images/mbr-96x48.png" alt="Mobirise" style="height: 3.8rem;">
                    </a>
                </span>
                <span class="navbar-caption-wrap">
               		<a class="navbar-caption text-white text-primary display-5" href="<%=application.getContextPath()%>">
                    BAN숙</a>
                </span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
            	<li class="nav-item">
                    <a class="nav-link link text-white text-primary display-4" href="<%=application.getContextPath()%>/cart">
                    	<span class="mobi-mbri mobi-mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                         Cart
                     </a>
                </li>
                
                
                <sec:authorize access="isAnonymous()">
                	<li class="nav-item">
                   		<a class="nav-link link text-white text-primary display-4" href="<%=application.getContextPath()%>/login/login">
<!--                     	<span class="mobi-mbri mobi-mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span> -->
                         Login
                     	</a>
                	</li>
                </sec:authorize>
        
                
                <sec:authorize access="isAuthenticated()"> 
           
                <li class="nav-item dropdown">
	                	<a class="nav-link link text-white dropdown-toggle display-4" href="#" data-toggle="dropdown-submenu" aria-expanded="false">
	                 		<img src="<%=application.getContextPath()%>/resources/profile/tester7.png" class=" mx-2 rounded-circle" width="30px" height="30px"/>
	                        <sec:authentication property="name"/>
	                    </a>
	                    <div class="dropdown-menu">
	                    	<sec:authorize access="hasRole('ROLE_USER')">
	                  		<a class="text-white dropdown-item display-4" href="<%=application.getContextPath()%>/mypage/mypage_user">My Page</a>
	                  		</sec:authorize>
	                  		<sec:authorize access="hasAnyRole('ROLE_TUTOR')">
	                  		<a class="text-white dropdown-item display-4" href="<%=application.getContextPath()%>/mypage/mypage_tutor">강의 관리</a>
	                  		</sec:authorize>
	                  		<a class="text-white dropdown-item display-4" href="<%=application.getContextPath()%>/logout">Logout</a>
	                  	</div>
                </li>
                 
                 
                </sec:authorize>
                 
                 
                 
                <li class="nav-item dropdown">
                    <a class="nav-link link dropdown-toggle text-white display-4" href="#" data-toggle="dropdown-submenu" aria-expanded="false">
                    	<span class="mobi-mbri mobi-mbri-menu mbr-iconfont mbr-iconfont-btn"></span>
                    </a>
                    <div class="dropdown-menu">
                    	<a class="dropdown-item text-white text-primary display-4" href="<%=application.getContextPath()%>">Home</a>
                    	<a class="dropdown-item text-white text-primary display-4" href="<%=request.getContextPath()%>/community">Community</a>
                    	<a class="dropdown-item text-white text-primary display-4" href="<%=request.getContextPath()%>/event">Event</a>
                    </div>
                </li>
             </ul>
            
        </div>
    </nav>
</section>