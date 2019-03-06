<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>회원가입하자!</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" align="center" style="margin-top:50px;">
  <h2>등록</h2>
  <c:url value="/daotest.do" var = "daotest"/>
  <form action="${daotest}" method="post">
  <table class="table" style="width:50%;">
    <tbody>
      <tr>
        <th>*이름</th><td><input type="text" class="form-control name="user_name" placeholder="예>판유걸" required="required"></td>
      </tr>
      <tr>
        <th>*아이디</th><td><input type="text" class="form-control name="user_id" placeholder="예>자바맨" required="required"></td>
      </tr>
      <tr>
        <th>*비밀번호</th><td><input type="password" class="form-control name="user_pw" placeholder="예>8자 이상" required="required"></td>
      </tr>
      <tr>
        <th>*이메일</th><td><input type="text" class="form-control name="email" placeholder="예>human@edu.com" required="required"></td>
      </tr>
      <tr>
        <th>*성별</th>
        <td>
            <div class="form-check-inline">
     		<label class="form-check-label" for="radio1">
        		<input type="radio" class="form-check-input" id="radio1" name="gender" value="0" checked="checked">남자
            </label>
            </div>
            <div class="form-check-inline">
     		<label class="form-check-label" for="radio2">
        		<input type="radio" class="form-check-input" id="radio2" name="gender" value="1">여자
        	</label>
            </div>
        </td>
      </tr>
      <tr>
        <th>*생년월일</th><td><input type="text" class="form-control name="birthdate" placeholder="예>020101" required="required"></td>
      </tr>
      <tr>
        <th>*전화번호</th><td><input type="text" class="form-control name="tel" placeholder="예>010-4444-7777" required="required"></td>
      </tr>
      <tr>
        <th>*주소</th><td><input type="text" class="form-control name="addr" placeholder="예>성정동" required="required"></td>
      </tr>
      <tr align="center">
        <td colspan="2"><input type="submit" class="btn btn-primary" value="가입">
        <input type="reset" class="btn btn-secondary" value="다시 쓰기">
        <input type = "button" class="btn btn-danger" value = "취소" onclick="location.href='http://10.0.0.51:8080/daotest/'"></td>
      </tr>
      </tbody>
  </table>
  </form>
</div>
</body>
</html>