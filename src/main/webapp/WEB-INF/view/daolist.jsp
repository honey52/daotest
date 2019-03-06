<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <title>회원 리스트</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container"  style="margin-top:50px;">
<div class="row">
<div class="col" align="center">
  <h2>리스트<input style="float: right;" type = "button" class="btn btn-danger" value = "돌아가기" onclick="location.href='http://10.0.0.51:8080/daotest/'"></h2>
  </div>
  </div>
  <div class="row">
  <div class="table-responsive" align="center">
  <table class="table">
    <thead>
      <tr>
        <th>회원번호</th>
        <th>이름</th>
        <th>아이디</th>
        <th>이메일</th>
        <th>성별</th>
        <th>생일</th>
        <th>전화번호</th>
        <th>주소</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="li" items="${lists}">
      <tr>
        <td>${li.user_n}</td>
        <td>${li.user_name}</td>
        <td>${li.user_id}</td>
        <td>${li.email}</td>
        <c:if test="${li.gender == 0}">
        <td>남자</td>
        </c:if>
        <c:if test="${li.gender == 1}">
        <td>여자</td>
        </c:if>
        <td>${li.birthdate}</td>
        <td>${li.tel}</td>
        <td>${li.addr}</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
 </div>
 </div>
	<fmt:parseNumber value="${page.endn}" var="endn" />
	<fmt:parseNumber value="${page.lstbnum}" var="lstbnum" />
	<ul class="pagination justify-content-center">
		<li class="page-item"><a class="page-link" href="http://10.0.0.51:8080/daotest/daolist.do?pg=1&bEa=${page.bEa}">처음</a></li>
		<c:if test="${(page.stn-1) <= 0}">
			<li class="page-item"><a class="page-link" href="http://10.0.0.51:8080/daotest/daolist.do?pg=1&bEa=${page.bEa}">◀</a></li>
		</c:if>
		<c:if test="${(page.stn-1) > 0}">
			<li class="page-item"><a class="page-link" href="http://10.0.0.51:8080/daotest/daolist.do?pg=${page.stn-1}&bEa=${page.bEa}">◀</a></li>
		</c:if>
		<c:if test="${ endn>=lstbnum }">
		<c:forEach var="i" begin="${page.stn}" end="${lstbnum}" >
			<li class="page-item"><a class="page-link" href="http://10.0.0.51:8080/daotest/daolist.do?pg=${i}&bEa=${page.bEa}">${i}</a></li>
		</c:forEach>
		</c:if>
		<c:if test="${ endn<lstbnum }">
		<c:forEach var="i" begin="${page.stn}" end="${endn}" >
			<li class="page-item"><a class="page-link" href="http://10.0.0.51:8080/daotest/daolist.do?pg=${i}&bEa=${page.bEa}">${i}</a></li>
		</c:forEach>
		</c:if>
		<c:if test="${ endn>=lstbnum }">
			<li class="page-item"><a class="page-link" href="http://10.0.0.51:8080/daotest/daolist.do?pg=${lstbnum}&bEa=${page.bEa}">▶</a></li>
		</c:if>
		<c:if test="${ endn<lstbnum }">
			<li class="page-item"><a class="page-link" href="http://10.0.0.51:8080/daotest/daolist.do?pg=${endn+1}&bEa=${page.bEa}">▶</a></li>
		</c:if>
		<li class="page-item"><a class="page-link" href="http://10.0.0.51:8080/daotest/daolist.do?pg=${lstbnum}&bEa=${page.bEa}">맨끝</a></li>
	</ul>
</div>
</body>
</html>