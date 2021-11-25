<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Coronabook</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
<div align="center">
    <h3>코로나 방문자 확인서비스</h3>
    <c:if test="${user == null}">
        <h3>${msg}</h3>
        <%@ include file="/WEB-INF/views/good/login.jsp"%>
    </c:if>
    <c:if test="${user != null}">
        <div>
            <strong>${user.nickname}</strong>님 환영합니다. <a
                href="${root}/user/logout">로그아웃</a>
            <h5>${test.name}</h5>
        </div>
        <a href="${root}/article/write">글쓰기</a>
        <br>
        <a href="${root}/article/list?pg=1&key=&word=">글목록</a>
        <br>
        <a href="${root}/user/list">회원목록</a>
    </c:if>
</div>
</body>
</html>