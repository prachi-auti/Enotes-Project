<%@ page import="com.user.UserDetails" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ENotes Navbar</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">ENotes</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
            data-bs-target="#navbarSupportedContent" 
            aria-controls="navbarSupportedContent" aria-expanded="false" 
            aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
         <li class="nav-item">
          <a href="Home.jsp" class="nav-link" aria-current="page">
            <i class="fa-solid fa-house"></i> Home
          </a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="/addNotes.jsp"><i class="fa-solid fa-plus"></i> Add Notes</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="#"><i class="fa-solid fa-book"></i> Show Notes</a>
        </li>
      </ul>
   
<%
   UserDetails user = (UserDetails) session.getAttribute("userD");
   if (user != null) {
%>
   <!-- If user is logged in -->
   <a href="#" type="button" class="btn btn-light my-2 me-3"
      data-bs-toggle="modal" data-bs-target="#exampleModal">
      <i class="fa-solid fa-user"></i> <%= user.getName() %>
   </a>
   <a href="logoutServlet" type="button" class="btn btn-light">
      <i class="fa-solid fa-right-from-bracket"></i> Logout
   </a>
<%
   } else {
%>
   <!-- If user is NOT logged in -->
   <a href="login.jsp" type="button" class="btn btn-light my-2 me-3">
      <i class="fa-solid fa-right-to-bracket"></i> Login
   </a>
   <a href="loginServlet" type="button" class="btn btn-light">
      <i class="fa-solid fa-user-plus"></i> Sign Up
   </a>
<%
   }
%>

    </div>
  </div>
</nav>


<!-- User Profile Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">User Profile</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="container text-center">
          <i class="fa fa-user fa-3x mb-3"></i>
          <table class="table table-bordered">
            <tbody>
             
              <tr>
                <th>Name</th>
                <td><%= user != null ? user.getName() : "" %></td>
              </tr>
              <tr>
                <th>Email</th>
                <td><%= user != null ? user.getEmail() : "" %></td>
              </tr>
              <tr>
                <th>Password</th>
                <td><%= user != null ? user.getPassword() : "" %></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


<!-- Bootstrap JS Bundle (with Popper.js for modal) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
