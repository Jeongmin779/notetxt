<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
  <link href="../css/css.css" rel="stylesheet">
  <link href="../css/manage-table.css" rel="stylesheet">
  <link href="../css/insert-form.css" rel="stylesheet">
  <title>Share_Memories</title>
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>
<body>
  <%@include file="../../page/user-header.jsp" %>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

  <div class="main-container">

    <div class="input-container">

      <form action="/user/userInfoUpdate" name="fr" onsubmit="return check()" method="POST">

        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" placeholder="1" autofocus="" value="${userInfo.id}" readonly/>
          <label for="floatingInput">유저 아이디</label>
        </div>

        <div class="form-floating mb-3">
          <input type="password" class="form-control" id="floatingInput" placeholder="1" name="password" value="${userInfo.password}">
          <label for="floatingInput">유저 비밀번호</label>
        </div>

        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" placeholder="1" name="name" value="${userInfo.name}" >
          <label for="floatingInput">유저 이름</label>
        </div>

        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" placeholder="1" name="nickname" value="${userInfo.nickname}" >
          <label for="floatingInput">유저 닉네임</label>
        </div>

        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" placeholder="1" name="phone" value="${userInfo.phone}" >
          <label for="floatingInput">유저 전화번호</label>
        </div>

        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" placeholder="1" name="email" value="${userInfo.email}" >
          <label for="floatingInput">유저 이메일</label>
        </div>

        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" placeholder="1" name="address" value="${userInfo.address}" >
          <label for="floatingInput">유저 주소</label>
        </div>

        <button type="submit" class="btn btn-primary">유저 정보 수정</button>

      </form>

    </div>

  </div>

</body>
<script type="text/javascript">
  function check() {
    if(fr.id.value == "") {
      alert("아이디 값을 입력해 주세요.");
      fr.id.focus();
      return false;
    } else if(fr.pwd.value == "") {
      alert("비밀번호 값을 입력해 주세요.");
      fr.pw.focus();
      return false;
    } else if(fr.name.value == "") {
      alert("이름 값을 입력해 주세요.");
      fr.name.focus();
      return false;
    } else if(fr.nickname.value == "") {
      alert("닉네임 값을 입력해 주세요.");
      fr.nickname.focus();
      return false;
    } else if(fr.email.value == "") {
      alert("이메일 값을 입력해 주세요.");
      fr.email.focus();
      return false;
    } else if(fr.address.value == "") {
      alert("주소 값을 입력해 주세요.");
      fr.address.focus();
      return false;
    } else if(fr.admin_ck.value == "null") {
      alert("관리자인지 일반유저인지 지정해주세요");
      fr.admin_ck.focus();
      return false;
    } else return true;
  }
</script>
</html>