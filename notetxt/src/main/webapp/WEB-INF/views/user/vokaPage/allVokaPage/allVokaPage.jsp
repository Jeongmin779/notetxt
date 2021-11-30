<%@ page language="java" contentType="text/html; charset=UTF-8"
         import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
            crossorigin="anonymous">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    <link href="../css/css.css" rel="stylesheet">
    <title>Share_Memories</title>
</head>
<body>
<%@include file="../page/user-header.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
    String search = request.getParameter("search");
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "memories", "1234");
        Statement stmt = conn.createStatement();
        ResultSet rs = null;
        String SQL = "SELECT user_tbl.nickname as nickname, voka_tbl.vokaname as vokaname, voka_tbl.description as description, voka_tbl.voka_no as voka_no FROM user_tbl, voka_tbl WHERE voka_tbl.id=user_tbl.id AND share_ck=1";
        rs = stmt.executeQuery(SQL);
        System.out.println("연결에 성공했습니다.");
        System.out.println(SQL);


%>
<div class="center col-sm-8 mb-3 m-top">
    <div class="row row-cols-1 row-cols-md-5 g-4">
        <%
            while(rs.next()) {
        %>
        <a href="user-vokaWord.jsp?voka_no=<%=rs.getString("voka_no") %>">
            <div class="card border-secondary mb-3" style="max-width: 18rem;">
                <div class="card-header"><%=rs.getString("nickname") %></div>
                <div class="card-body text-secondary">
                    <h5 class="card-title"><%=rs.getString("vokaname") %></h5>
                    <p class="card-text"><%=rs.getString("description") %></p>
                </div>
            </div>
        </a>
        <%
            }
        %>
    </div>
</div>
<%
        conn.close();
    } catch(Exception e){
        e.printStackTrace();
    }
%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>