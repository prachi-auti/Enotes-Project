<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    UserDetails user2 = (UserDetails) session.getAttribute("userD");
    if (user2 == null) {
        response.sendRedirect("login.jsp");
        session.setAttribute("Login-error", "Please Login Again...");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="all_componenets/allinfo.jsp"%>
</head>
<body>
    <%@ include file="all_componenets/Navbar.jsp"%>
    <div class="container-field">
    <div class="card mt-5">
    <div class="card-body text-center">
<img src="assests/Photo.jpeg" 
     alt="Photo" 
     class="img-fluid mx-auto d-block" 
     style="max-width: 500px; height: auto;">
    <h1>Start taking Your Notes</h1>
    <a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
    </div>
    </div>
    </div>
</body>
 <%@ include file="all_componenets/footer.jsp" %>
</html>