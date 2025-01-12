/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.DeductAmountAuth;
import Model.UpdateAmountAuth;
import dto.DeductAmountDTO;
import dto.UpdateAmountDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ashug
 */
public class DeductAmountChecker extends HttpServlet
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("EmployeeList.jsp");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
        String amt = req.getParameter("amt");
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        
        DeductAmountDTO d1 = new DeductAmountDTO();
        d1.setId(id);
        d1.setName(name);
        d1.setAmt(amt);
        
        DeductAmountAuth a1 = new DeductAmountAuth();
        boolean update = a1.isUpdate(d1);
        
        if(update)
        {
            resp.sendRedirect("EmployeeList.jsp");
        }
        else
        {
            resp.sendRedirect("EmployeeList.jsp");
        }
    }
}