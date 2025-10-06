	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Register Page</title>
	    <%@ include file="all_componenets/allinfo.jsp" %>
	</head>
	<body>
	    <%@ include file="all_componenets/Navbar.jsp" %>
	
	    <div class="container mt-5">
	        <div class="row justify-content-center">
	            <div class="col-md-6">
	                <!-- Card -->
	                <div class="card shadow">
	                    <div class="card-header text-center">
	                        <h4><i class="bi bi-person-fill"></i> Registration</h4>
	                    </div>
	                    
	                 <%
String regMsg = (String) session.getAttribute("reg-Success");  // ✅ corrected spelling
if (regMsg != null) {
%>
    <div class="alert alert-success" role="alert">
        <%= regMsg %> <br>
        Login? <a href="login.jsp">Click Here</a>
    </div>
<%
    session.removeAttribute("reg-Success");  // clears after showing
}
%>

<%
String failedMsg = (String) session.getAttribute("failed-msg");
if (failedMsg != null) {
%>
    <div class="alert alert-danger" role="alert">
        <%= failedMsg %>
    </div>
<%
    session.removeAttribute("failed-msg");  // clears after showing
}
%>

	                    <div class="	card-body">
	                        <!-- FORM START -->
	                     <form action="UserServlet" method="post">
	
	                            <!-- Full Name -->
	                            <div class="mb-3">
	                                <label for="name" class="form-label">Enter Full Name</label>
	                                <input type="text" class="form-control" id="fname" name="name" placeholder="Enter Your Full Name" required>
	                            </div>
	
	                            <!-- Email -->
	                            <div class="mb-3">
	                                <label for="email" class="form-label">Email address</label>
	                                <input type="email" class="form-control" id="uemail" name="email" placeholder="Enter email" required>
	                            </div>
	
	                            <!-- Password -->
	                            <div class="mb-3">
	                                <label for="password" class="form-label">Password</label>
	                                <input type="password" class="form-control" id="upassword" name="password" placeholder="Password" required>
	                            </div>
	
	                            <!-- Checkbox -->
	                            <div class="mb-3 form-check">
	                                <input type="checkbox" class="form-check-input" id="check">
	                                <label class="form-check-label" for="check">Check me out</label>
	                            </div>
	
	                            <!-- Submit button -->
	                            <button type="submit" class="btn btn-primary w-100">Submit</button>
	                        </form>
	                        <!-- FORM END -->
	                    </div>
	                </div>
	                <!-- End Card -->
	            </div>
	        </div>
	    </div>
	
	    <%@ include file="all_componenets/footer.jsp" %>
	</body>
	</html>
