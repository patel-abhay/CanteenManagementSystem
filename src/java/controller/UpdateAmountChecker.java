/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.UpdateAmountAuth;
import dto.UpdateAmountDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ashug
 */
public class UpdateAmountChecker extends HttpServlet
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
        
        System.out.println(name+"  "+id+" checker");
        UpdateAmountDTO d1 = new UpdateAmountDTO();
        d1.setId(id);
        d1.setName(name);
        d1.setAmt(amt);
        
        UpdateAmountAuth a1 = new UpdateAmountAuth();
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