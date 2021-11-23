<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
  <link href="css/css.css" rel="stylesheet">
  <link href="css/loginpage.css" rel="stylesheet">
  <title>Share_Memories</title>
</head>
<body>
<div class="login-container">
  <div class="login-text">
    <div class="mb-3 row">
      <h1 class="col-sm-12">로그인</h1>
    </div>
    <form method="get" action="../action/login.jsp">
      <div class="mb-3 row">
        <label for="id" class="col-sm-2 col-form-label">ID</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" id="id" autofocus="" required="" minlength="4" placeholder="아이디 입력" name="id">
        </div>
      </div>
      <div class="mb-3 row">
        <label for="password" class="col-sm-2 col-form-label">비밀번호</label>
        <div class="col-sm-9">
          <input type="password" class="form-control" id="password" placeholder="이메일 입력" minlength="8" maxlength="20" required/ name="pwd">
        </div>
      </div>
      <button type="submit" class="btn btn-outline-primary mb-0">계정 로그인</button>
      <button type="button" class="btn btn-outline-primary" onclick="location.href='signup'">계정 회원가입</button>
      <div class="text-center">
        <a href="find_id" class="btn btn-outline-secondary">아이디 찾기</a>
        <a href="find_pw" class="btn btn-outline-secondary">비밀번호 찾기</a>
      </div>
    </form>
  </div>
</div>
</body>
</html>