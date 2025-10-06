<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    UserDetails user1 = (UserDetails) session.getAttribute("userD");
    if (user1 == null) {
        response.sendRedirect("login.jsp");
        session.setAttribute("Login-error", "Please Login Again...");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@ include file="all_componenets/allinfo.jsp" %>
</head>
<body>
<%@ include file="all_componenets/Navbar.jsp" %>

<div class="container">
    <h1 class="text-center">Add Your Notes</h1>
    <div class="row">
        <div class="col-md-12">

            <form action="AddNotesServlet" method="post">
                <!-- Hidden user id -->
                <input type="hidden" name="uid" value="<%= user1.getId() %>">

                <div class="form-group">
                    <label for="title">Enter Title Here</label>
                    <input type="text" class="form-control" id="title"
                           name="title" required="required">
                </div>

                <div class="form-group">
                    <label for="content">Enter Content</label>
                    <textarea rows="15" class="form-control"
                              id="content" name="content" required="required"></textarea>
                </div>

                <br>
                <div class="container text-center">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>

        </div>
    </div>
</div>

<%@ include file="all_componenets/footer.jsp" %>
</body>
</html>
