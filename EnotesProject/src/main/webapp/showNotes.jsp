<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="all_componenets/allinfo.jsp"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
    <h1 class="text-center">All Notes</h1>
    <div class="row">
        <div class="col-md-12">

            <form action="AddNotesServlet" method="post">
                <!-- Hidden user id -->
                <input type="hidden" name="uid" value="<%= user1.getId() %>">

                <div class="form-group">
                    <label for="title">Published by</label>
                    <input type="text" class="form-control" id="title"
                           name="title" required="required">
                </div>

              
                <br>
                <div class="container text-center">
                    <button type="submit" class="btn btn-primary">Edit </button>
                      <button type="submit" class="btn btn-primary">Delete  </button>
                </div>
            </form>

        </div>
    </div>
</div>
</body>
 <%@ include file="all_componenets/footer.jsp" %>
</html>