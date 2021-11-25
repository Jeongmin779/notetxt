<%@ page language="java" contentType="text/html; charset=UTF-8"
         import="java.sql.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    <link href="../css/css.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    <title>Share_Memories</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css"/>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>
<body>
<%@include file="../../page/user-header.jsp" %>
<h3 class="popular_Voka">인기단어장</h3>
<div #swiperRef="" class="swiper-container mySwiper" style="height:100%; width:80%;">
    <div class="swiper-wrapper">
        <c:forEach var="popular" items="${popularVoka}">
        <div class="swiper-slide">
            <a href="user-vokaWord.jsp?voka_no=${popular.voka_no}">
                <div class="card border-secondary mb-3" style="max-width: 18rem;">
                    <div class="card-header">${popular.nickname}</div>
                    <div class="card-body text-secondary">
                        <h5 class="card-title">${popular.vokaname}</h5>
                        <p class="card-text">${popular.description}</p>
                    </div>
                </div>
            </a>
            </div>
            </c:forEach>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>
    <c:if test="${user != ''}">
    <h3 class="myVoka">나의단어장</h3>
    <div #swiperRef="" class="swiper-container mySwiper" style="height:100%; width:80%;">
        <div class="swiper-wrapper">
            <c:forEach var="myVoka" items="${myVoka}">
                <div class="swiper-slide">
                    <a href="user-vokaWord.jsp?voka_no=${myVoka.voka_no} %>">
                        <div class="card border-secondary mb-3" style="max-width: 18rem;">
                            <div class="card-header"> ${myVoka.nickname} </div>
                            <div class="card-body text-secondary">
                                <h5 class="card-title"> ${myVoka.vokaname} </h5>
                                <p class="card-text"> ${myVoka.description} </p>
                            </div>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>
    </c:if>
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