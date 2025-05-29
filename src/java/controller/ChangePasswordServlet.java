/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class ChangePasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private int failedAttempts = 0;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String retypePassword = request.getParameter("retypePassword");

        // Giả lập password hiện tại (bạn nên thay bằng kiểm tra trong DB)
        String storedPassword = "123456";

        if (!currentPassword.equals(storedPassword)) {
            failedAttempts++;
            if (failedAttempts >= 5) {
                request.setAttribute("message", "Too many incorrect attempts. Try again after 1 day.");
            } else {
                request.setAttribute("message", "Incorrect current password, please retry!");
            }
            request.setAttribute("messageType", "error");
        } else if (!newPassword.equals(retypePassword)) {
            request.setAttribute("message", "You retyped incorrect new password, please try again!");
            request.setAttribute("messageType", "error");
        } else {
            failedAttempts = 0; // Reset nếu đổi thành công
            // TODO: Lưu password mới vào DB
            request.setAttribute("message", "Password changed successfully!");
            request.setAttribute("messageType", "success");
        }

        request.getRequestDispatcher("changepassword.jsp").forward(request, response);
    }
}
