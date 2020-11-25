<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%-- 2020. 11. 24. --%>

  <section class="menu cid-shfokUU9e4" once="menu" id="menu1-4a">
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
                    <a href="<%=request.getContextPath()%>">
                         <img src="<%=request.getContextPath()%>/resources/assets/images/mbr-96x48.png" alt="Mobirise" style="height: 3.8rem;">
                    </a>
                </span>
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-5" href="<%=request.getContextPath()%>">
                        BAN숙</a></span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
            	<li class="nav-item">
                    <a class="nav-link link text-white text-primary display-4" href="<%=request.getContextPath()%>/cart">
                    <span class="mobi-mbri mobi-mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span>
                        Cart</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link link dropdown-toggle text-white display-4" href="#" data-toggle="dropdown-submenu" aria-expanded="false">
                    <span class="mobi-mbri mobi-mbri-menu mbr-iconfont mbr-iconfont-btn"></span>
                        </a>
                        <div class="dropdown-menu">
	                        <a class="dropdown-item text-white text-primary display-4" href="<%=request.getContextPath()%>">Home</a>
	                        <sec:authorize access="hasRole('ROLE_USER')">
		                        <a class="dropdown-item text-white text-primary display-4" href="mypage.jsp#gallery5-2f">나의 수강 목록</a>
		                        <a class="dropdown-item text-white text-primary display-4" href="mypage.jsp#gallery5-2h">찜 목록</a>
		                        <a class="dropdown-item text-white text-primary display-4" href="mypage.jsp#table1-2i">나의 문의</a>
	                       </sec:authorize>
                   
                  			<sec:authorize access="hasRole('ROLE_TUTOR')">
		                        <a class="dropdown-item text-white text-primary display-4" href="mypage.jsp#gallery5-2k">나의 강의</a>
		                        <a class="dropdown-item text-white text-primary display-4" href="mypage.jsp#table1-2m">공지사항</a>
		                        <a class="dropdown-item text-white text-primary display-4" href="mypage.jsp#table1-2m">강의 문의</a>
	                        </sec:authorize>
                       </div>
                </li>
             </ul>
            
        </div>
    </nav>
</section>