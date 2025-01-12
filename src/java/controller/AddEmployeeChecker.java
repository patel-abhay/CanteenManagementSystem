/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.AddEmployeeAuth;
import dto.AddEmployeeDTO;
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
public class AddEmployeeChecker extends HttpServlet
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.sendRedirect("AdminHome.html");
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String name = req.getParameter("name");
        String id = req.getParameter("id");
        String gender = req.getParameter("gender");
        String password = req.getParameter("password");
        String contact = req.getParameter("contact");
        String age = req.getParameter("age");
        String city = req.getParameter("city");

        AddEmployeeDTO user = new AddEmployeeDTO();
        user.setname(name);
        user.setId(id);
        user.setGender(gender);
        user.setPassword(password);
        user.setContact(contact);
        user.setAge(age);
        user.setCity(city);
        
        AddEmployeeAuth R1 = new AddEmployeeAuth();
        boolean regis = R1.isAddEmp(user);
        
        if(regis)
        { 
            HttpSession session = req.getSession(true);
           resp.sendRedirect("AdminHome.jsp");
        }
        else
        {
            resp.sendRedirect("AddEmployee.html");
        }
    }
}