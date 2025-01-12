/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import Model.EmpLoginAuth;

import dto.UserDTOEmpLogin;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ashug
 */
public class EmpLoginChecker extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.sendRedirect("employeelogin.html");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        
//        System.out.println(username);
//        System.out.println(password);
        
        UserDTOEmpLogin  user = new UserDTOEmpLogin();
        user.setUsername(username);
        user.setPassword(password);
        
        EmpLoginAuth l1 = new EmpLoginAuth();
        boolean login = l1.isLogin(user);
        
        if (login)
        {
            HttpSession session = req.getSession(true);
            session.setAttribute("username",username);
            
            resp.sendRedirect("EmployeeHome.jsp");
        }
        else
        {
            resp.sendRedirect("employeelogin.html");
        }
    }
}
