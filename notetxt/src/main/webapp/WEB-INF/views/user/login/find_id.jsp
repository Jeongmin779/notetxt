<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <h1 class="col-sm-12">아이디 찾기</h1>
        </div>
        <form method="get" action="../action/find_id.jsp">
            <div class="mb-3 row">
                <label for="name" class="col-sm-2 col-form-label">이름</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="name" autofocus="" required="" minlength="2" placeholder="이름 입력" name="name">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="email" class="col-sm-2 col-form-label">이메일</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="email" placeholder="이메일 입력" minlength="8" maxlength="30" required/ name="email">
                </div>
            </div>
            <button type="submit" class="btn btn-outline-primary">아이디 찾기</button>
            <button type="button" class="btn btn-outline-primary" onclick="location.href='loginpage'">뒤로 가기</button>
        </form>
    </div>
</div>
</body>
</html>