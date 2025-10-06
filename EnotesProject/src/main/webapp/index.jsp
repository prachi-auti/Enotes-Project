<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.DB.DBConnect" %>  <!-- Correct class import -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet" href="style.css">

<style type="text/css">
.back-img {
    background: url("assests/Enotes.jpeg");
    width: 100%;
    height: 80vh;
    background-size: cover;
    background-position: center;
}
</style>

<%@ include file="all_componenets/allinfo.jsp" %>

</head>
<body>
<%@ include file="all_componenets/Navbar.jsp" %>

<%
    Connection conn = DBConnect.getConn();
   
%>

<div class="container-fluid back-img">
    <div class="text-center">
        <!-- Heading with notebook icon -->
        <h1 class="text-white">
            <i class="fa-solid fa-book"></i> E Notes - Save Your Notes
        </h1>
        <br><br>

        <!-- Login button -->s
        <a href="login.jsp" class="btn btn-dark me-2">
            <i class="fa-solid fa-right-to-bracket"></i> Login
        </a>

        <!-- Register button -->
        <a href="register.jsp" class="btn btn-dark">
            <i class="fa-solid fa-user-plus"></i> Register
        </a>
    </div>
</div>

<%@ include file="all_componenets/footer.jsp" %>
</body>
</html>
