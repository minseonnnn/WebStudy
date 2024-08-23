<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details Page</title>
<style type="text/css">

nav {
    display: flex;
    align-items: center;
}

.dropdown {
    position: relative;
}

.dropmenu {
    display: none; 
    position: absolute;
    top: 100%; 
    text-align: center;
    background-color: #ffffff;
    box-shadow: 0 8px 20px rgba(35, 0, 77, 0.2);
    border-radius: 8px; 
    overflow: hidden; 
    width: 117px; 
}

.dropmenu li {
    padding: 3px;
}

.dropmenu a {
    text-decoration: none;
    color: #333; 
    display: block;
    line-height: 0.7; 
}

.dropmenu li:hover a {
    background-color: #C2C2C2; 
}

.dropdown:hover .dropmenu {
	display: block;
}

.nav > li {
    list-style: none;
    margin: 0;
}

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function() {
    $('.dropdown').hover(
        function() {
            $(this).find('.dropmenu').stop(true, true).slideDown();
        },
        function() {
            $(this).find('.dropmenu').stop(true, true).slideUp();
        }
    );
});
</script>
</head>
<body>
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav navbar">
                        <!-- ***** Logo Start ***** -->
                        <a href="index.html" class="logo">
                            <img src="../assets/images/logo.png" alt="">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li>
                                <a href="index.html" class="active">Home</a>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    Browse<span class="caret"></span>
                                </a>
                                <ul class="dropmenu">
                                    <li class="submenu">
                                        <a href="#">Page 1-1</a>
                                    </li>
                                    <li class="submenu">
                                        <a href="#">Page 1-2</a>
                                    </li>
                                    <li class="submenu">
                                        <a href="#">Page 1-3</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="../book/list.do">
                                    Books<span class="caret"></span></a>
                                <ul class="dropmenu" >
                                    <li class="submenu" style="text-align: center;">
                                        <a href="../book/new.do">새로나온 책</a>
                                    </li>
                                    <li class="submenu">
                                        <a href="../book/best.do">베스트셀러</a>
                                    </li>
                                    <li class="submenu">
                                        <a href="../book/recomm.do">추천 도서</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="streams.html">Streams</a>
                            </li>
                            <li>
                                <a href="profile.html">
                                    Profile <img src="../assets/images/profile-header.jpg" alt="">
                                </a>
                            </li>
                        </ul>
                        <ul class="nav" style="width: 120px;"></ul>
                        <c:if test="${sessionScope.id==null }">
                            <ul class="nav">
                                <li>
                                    <a href="#" id="info">SIGN UP</a>
                                </li>
                                <li>
                                    <a href="../member/login.do">SIGN IN</a>
                                </li>
                            </ul>
                        </c:if>
                        <c:if test="${sessionScope.id!=null }">
                            <ul class="nav">
                                <li>
                                    <a id="info">${sessionScope.nickname}님</a>
                                </li>
                                <li>
                                    <a id="info">
                                        <input type="button" id="logoutBtn" value="LogOut" style="color: #666; background-color: transparent; border: none;">
                                    </a>
                                </li>
                            </ul>
                        </c:if>
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <main>
        <!-- 페이지 콘텐츠가 여기에 들어갑니다. -->
    </main>
</body>
</html>