<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.sql.*"%>
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection header_conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "memories", "1234");
    Statement header_stmt = header_conn.createStatement();
    ResultSet header_rs = null;
    System.out.println("select admin_ck from user_tbl where id = '"+ session.getAttribute("id") + "'");
    header_rs = header_stmt.executeQuery("select admin_ck, nickname from user_tbl where id = '"+ session.getAttribute("id") + "'");
    header_rs.next();
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="../user/main-page.jsp">Share Memories</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="../user/user-allVoka.jsp">모든 단어장</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../user/user-myVoka.jsp">내 단어장</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../user/user-popularVoka.jsp">인기 단어장</a>
                </li>
            </ul>
            <form class="d-flex search-flex" action="search-page.jsp">
                <input class="form-control me-2" type="text" placeholder="Search" aria-label="Search" name="search">
                <button class="btn btn-outline-light" type="submit">Search</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <button class="navbar-toggler" type="text" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="bi bi-person-circle"></i>
                    </a>
                    <%if(session.getAttribute("id") == null){ %>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarScrollingDropdown" data-bs-popper="none" style="margin-top: 0px;">
                        <li><a class="dropdown-item" href="loginpage">로그인</a></li>
                    </ul>
                    <%}else{ %>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarScrollingDropdown" data-bs-popper="none" style="margin-top: 0px;">
                        <li><a class="dropdown-item" href="../user/user-certified.jsp"><%=header_rs.getString("nickname") %>님의 정보</a></li>
                        <%if(header_rs.getString("admin_ck").equals("1")){ %>
                        <li><a class="dropdown-item" href="../admin/voka-manage.jsp">어드민페이지</a></li>
                        <%} %>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="../action/userlogout.jsp">로그아웃</a></li>
                    </ul>
                    <%} %>
                </li>
            </ul>
        </div>
    </div>
</nav>