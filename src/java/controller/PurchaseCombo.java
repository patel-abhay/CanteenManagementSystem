/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.PurchaseComboAuth;
import dto.PurchaseComboDTO;
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
public class PurchaseCombo extends HttpServlet 
{

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        resp.sendRedirect("EmpIOTD.jsp");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String quantity = req.getParameter("quantity");
        String price = req.getParameter("price");
        int price1 = Integer.parseInt(req.getParameter("price"));
        
        PurchaseComboDTO p = new PurchaseComboDTO();
        p.setId(id);
        p.setName(name);
        p.setQuantity(quantity);
        p.setTotal(price1);
        
                
        PurchaseComboAuth p1 = new PurchaseComboAuth();
        boolean combo = p1.isCombo(p);
        
        if(combo)
        {
            HttpSession session = req.getSession(true);
            session.setAttribute("EmpUsername",id);
            session.setAttribute("name", name);
            session.setAttribute("price",price);
            resp.sendRedirect("ComboPurchasedSuccess.jsp");
        }
        else
        {
            resp.sendRedirect("ItemCannotPurchased.jsp");
        }
    }
}