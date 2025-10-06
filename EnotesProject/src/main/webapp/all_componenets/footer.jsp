<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Footer -->
<footer class="footer bg-dark text-light mt-5">
  <div class="container py-4">
    <div class="row">

      <!-- Left Section -->
      <div class="col-md-6">
        <h5>ENotes</h5>
        <p class="small">
          A simple and secure notes management system built with Java & Servlets.  
          Keep your notes safe, organized, and accessible anytime.
        </p>
      </div>

      <!-- Right Section -->
      <div class="col-md-6 text-md-end">
        <ul class="list-inline mb-2">
          <li class="list-inline-item"><a href="#" class="footer-link">Home</a></li>
          <li class="list-inline-item"><a href="#" class="footer-link">Add Notes</a></li>
          <li class="list-inline-item"><a href="#" class="footer-link">Show Notes</a></li>
          <li class="list-inline-item"><a href="#" class="footer-link">Contact</a></li>
        </ul>
        <p class="small mb-0">&copy; <%= java.time.Year.now() %> ENotes. All rights reserved.</p>
        <p class="small mb-0">Made with ❤️ </strong></p>
      </div>

    </div>
  </div>
</footer>
