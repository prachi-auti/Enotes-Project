<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@ include file="all_componenets/allinfo.jsp"%>
</head>
<body>
    <%@ include file="all_componenets/Navbar.jsp"%>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <!-- Card -->
                <div class="card shadow">
                    <div class="card-header text-center">
                        <h4>Login</h4>
                    </div>

                    <!-- Show error alert -->
                    <%
                    String failedMsg = (String) session.getAttribute("failed-msg");
                    if (failedMsg != null) {
                    %>
                        <div class="alert alert-danger" role="alert">
                            <%= failedMsg %>
                        </div>
                    <%
                        session.removeAttribute("failed-msg");
                    }
                    %>
<%String withoutLogin=(String)session.getAttribute("Login-error");
if(withoutLogin!=null){%>
	 <div class="alert alert-danger" role="alert">
                            <%=withoutLogin %>
                        </div>
<%
session.removeAttribute("withoutLogin");
}
%>
<%
String lg=(String)session.getAttribute("logoutmsg");
if(lg!=null){%>
<div class="alert alert-sucess" role="alert">
                       <%=lg %>
                   </div>
                   <% 
}
                   session.removeAttribute("logoutmsg");
%>
                    <div class="card-body">
                        <!-- ✅ fixed action + names -->
                        <form action="${pageContext.request.contextPath}/loginServlet" method="post">

                            <!-- Email -->
                            <div class="mb-3">
                                <label for="uemail" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="uemail" name="uemail" placeholder="Enter email" required>
                            </div>

                            <!-- Password -->
                            <div class="mb-3">
                                <label for="upassword" class="form-label">Password</label>
                                <input type="password" class="form-control" id="upassword" name="upassword" placeholder="Password" required>
                            </div>

                            <!-- Checkbox -->
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="check">
                                <label class="form-check-label" for="check">Remember me</label>
                            </div>

                            <!-- Submit button -->
                            <button type="submit" class="btn btn-primary w-100">Login</button>
                        </form>
                    </div>
                </div>
                <!-- End Card -->
            </div>
        </div>
    </div>

    <%@ include file="all_componenets/footer.jsp"%>
</body>
</html>
