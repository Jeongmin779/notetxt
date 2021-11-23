<%@ page language="java" contentType="text/html; charset=UTF-8"
         import="java.sql.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
  <link href="../css/css.css" rel="stylesheet">
  <title>Share_Memories</title>

  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />

</head>
<body>
<%@include file="../page/user-header.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

<%
  request.setCharacterEncoding("UTF-8");
  try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "memories", "1234");
    Statement stmt = conn.createStatement();
    Statement stmt2 = conn.createStatement();
    ResultSet rs = null;
    ResultSet rs2 = null;
    rs = stmt.executeQuery("SELECT user_tbl.nickname as nickname, voka_tbl.vokaname as vokaname, voka_tbl.description as description, voka_tbl.voka_no as voka_no FROM user_tbl, voka_tbl WHERE voka_tbl.id=user_tbl.id AND user_tbl.id='"+session.getAttribute("id")+"'");
    rs2 = stmt2.executeQuery("SELECT user_tbl.nickname as nickname, voka_tbl.vokaname as vokaname, voka_tbl.description as description, voka_tbl.voka_no as voka_no FROM user_tbl, voka_tbl WHERE voka_tbl.id=user_tbl.id AND voka_tbl.share_ck='1' order by popular desc");
    System.out.println("연결에 성공했습니다.");
    System.out.println("SELECT user_tbl.nickname as nickname, voka_tbl.vokaname as vokaname, voka_tbl.description as description, voka_tbl.voka_no as voka_no FROM user_tbl, voka_tbl WHERE voka_tbl.id=user_tbl.id AND user_tbl.id='"+session.getAttribute("id")+"'");

%>
<h3 class="popular_Voka">인기단어장</h3>
<div #swiperRef="" class="swiper-container mySwiper" style="height:100%; width:80%;">
  <div class="swiper-wrapper">
    <%
      while(rs2.next()) {
    %>
    <div class="swiper-slide">
      <a href="user-vokaWord.jsp?voka_no=<%=rs2.getString("voka_no") %>">
        <div class="card border-secondary mb-3" style="max-width: 18rem;">
          <div class="card-header"><%=rs2.getString("nickname")%></div>
          <div class="card-body text-secondary">
            <h5 class="card-title"><%=rs2.getString("vokaname")%></h5>
            <p class="card-text"><%=rs2.getString("description")%></p>
          </div>
        </div>
      </a>
    </div>
    <%
      }
    %>
  </div>
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>
<%

  if(session.getAttribute("id") != null) {
%>
<h3 class="myVoka">나의단어장</h3>
<div #swiperRef="" class="swiper-container mySwiper" style="height:100%; width:80%;">
  <div class="swiper-wrapper">
    <%
      while(rs.next()) {
    %>
    <div class="swiper-slide">
      <a href="user-vokaWord.jsp?voka_no=<%=rs.getString("voka_no") %>">
        <div class="card border-secondary mb-3" style="max-width: 18rem;">
          <div class="card-header"><%=rs.getString("nickname")%></div>
          <div class="card-body text-secondary">
            <h5 class="card-title"><%=rs.getString("vokaname")%></h5>
            <p class="card-text"><%=rs.getString("description")%></p>
          </div>
        </div>
      </a>
    </div>
    <%
      }
      conn.close();
    %>
  </div>
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>
<%
    }
  } catch (Exception e) {
    e.printStackTrace();
  }
%>
<script>
  var swiper = new Swiper(".mySwiper", {
    slidesPerView: 5,
    centeredSlides: true,
    spaceBetween: 30,
    pagination: {
      el: ".swiper-pagination",
      type: "fraction"
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev"
    }
  });
</script>
</body>
</html>