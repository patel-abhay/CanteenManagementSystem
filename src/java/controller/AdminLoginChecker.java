/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.AdminLoginAuth;
import dto.UserDTOAdminLogin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ashug
 */
public class AdminLoginChecker extends HttpServlet 
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.sendRedirect("adminlogin.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        
//        System.out.println(username);
//        System.out.println(password);
        
        UserDTOAdminLogin  user = new UserDTOAdminLogin();
        user.setUsername(username);
        user.setPassword(password);
        
        AdminLoginAuth l1 = new AdminLoginAuth();
        boolean login = l1.isLogin(user);
        
        if (login)
        {
            HttpSession session = req.getSession(true);
            resp.sendRedirect("AdminHome.jsp");
        }
        else
        {
            resp.sendRedirect("adminlogin.html");
        }
    }
}