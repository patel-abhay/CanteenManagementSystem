/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.DeleteItemAuth;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ashug
 */
public class DeleteItemChecker extends HttpServlet
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.sendRedirect("Menu.jsp");
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String id = req.getParameter("id");
        DeleteItemAuth a1 = new DeleteItemAuth();
        boolean item = a1.isDelete(id);
        
        if(item)
        { 
           resp.sendRedirect("Menu.jsp");
        }
        else
        {
            resp.sendRedirect("Menu.jsp");
        }
    }
}