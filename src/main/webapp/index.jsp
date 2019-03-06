<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
<head>
  <title>Spring MVC Start</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <style type="text/css">

  </style>
	</head> 
	<body>
	<div class="jumbotron text-center" style="margin-bottom: 0;">
    <h1>어서오세요</h1>   
    <p>꾸로이 Spring 연습장입니다.</p>
  </div>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
    <c:url value="/daotest.do" var="daotest" />
      <a class="nav-link" href="${daotest}">회원가입</a>
    </li>
<li class="nav-item">
    <c:url value="/daolist.do" var="daolist" />
      <a class="nav-link" href="${daolist}">회원명단보기</a>
    </li>
  </ul>
</nav>
<div class="container">        
</div>
	</body>
</html>
