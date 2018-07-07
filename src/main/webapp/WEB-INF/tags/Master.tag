<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ attribute name="content" fragment="true" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>${title}</title>
<meta charset="utf-8">

<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/slider.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700,300' rel='stylesheet' type='text/css'>
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.7.min.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"/></script>
<script src="${pageContext.request.contextPath}/resources/js/tms-0.4.1.js"/></script>
<script>
$(document).ready(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: true,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 500,
        preset: 'fade',
        pagination: true, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: 'fromBottom', // fromLeft, fromRight, fromTop, fromBottom
        waitBannerAnimation: false,
        progressBar: false
    })
})
$(function () {
    if ($(window).width() <= 1066) {
        $("#slider .prev").css("left", "55px")
        $("#slider .next").css("right", "55px")
    }
})
</script>
<body>
<div class="bg">
  <header>
    <div class="main wrap">
      <h1><a href="index.html"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt=""></a></h1>
      <p>8901 Marmora, Glasgow <span>8 (800) 552 5975</span></p>
    </div>
    <nav>
      <ul class="menu">
        <li class="current"><a href="index.html" class="home"><img src="${pageContext.request.contextPath}/resources/images/home.jpg" alt=""></a></li>
        <li><a href="about.jsp">About</a></li>
        <li><a href="maintenance.jsp">Maintenance</a></li>
        <li><a href="repair.jsp">Repair</a></li>
        <li><a href="price-list.jsp">Price List</a></li>
        <li><a href="locations.html">Locations</a></li>
        <li><a href="login.jsp">Login/Register</a></li>
      </ul>
      <div class="clear"></div>
    </nav>
  </header>
  <jsp:invoke fragment="content"></jsp:invoke>
  <footer>Car Repair &copy; 2045 | <a href="#">Privacy Policy</a> | Design by: <a href="http://www.templatemonster.com/">TemplateMonster.com</a></footer>
</div>
</body>
</html>
