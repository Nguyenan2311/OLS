<%-- 
    Document   : changepassword
    Created on : May 27, 2025, 11:56:07 AM
    Author     : haing
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    String message = (String) request.getAttribute("message");
    String messageType = (String) request.getAttribute("messageType");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Change Password</title> 
    <link rel="stylesheet" href="style.css">
    <!-- Font Awesome để dùng icon người và kính lúp -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

    <!-- ===== HEADER START ===== -->
    <header>
        <div class="logo">EDEMY</div>
        <nav>
            <a href="#">Home</a>
            <a href="#">Courses</a>
            <a href="#">Blog</a>
            <a href="#">About</a>
        </nav>
        <div class="search-profile">
            <div class="search-box">            
                <input type="text" placeholder="" />
            </div>
            <div class="profile-icon">
                <i class="fas fa-user"></i>
            </div>
        </div>
    </header>
    <hr>
    <!-- ===== HEADER END ===== -->

    <main>
        <h2>Change Password</h2>
        <form class="password-form" method="post" action="change-password">
            <div class="form-group">
                <label for="current">Current password</label>
                <input type="password" id="current" name="currentPassword" required />
            </div>
            <div class="form-group">
                <label for="new">New password</label>
                <input type="password" id="new" name="newPassword" required />
            </div>
            <div class="form-group">
                <label for="retype">Retype new password</label>
                <input type="password" id="retype" name="retypePassword" required />
            </div>

            <% if (message != null) { %>
                <div class="message <%= "success".equals(messageType) ? "success" : "error" %>">
                    <%= message %>
                </div>
            <% } %>


            <button type="submit">Confirm</button>
        </form>

       <div class="note">
    <span class="note-title">NOTE:</span> You will be locked out of the password change function for 1 day<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <!-- thêm khoảng trắng -->
    if you enter the current password incorrectly more than 5 times.
</div>

    </main>

</body>
</html>
