<%--
  Created by IntelliJ IDEA.
  User: firb_dev
  Date: 2021-11-25
  Time: 오후 3:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
</head>
<body>
    <form name='form1' id='form1' method='get' action='${url}'></form>
    <script type='text/javascript'>
        alert('${msg}');
        document.getElementById("form1").submit()
    </script>
</body>
</html>