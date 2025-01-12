/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.AddItemAuth;
import Model.PurchaseItemAuth;
import dto.AddItemDTO;
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
public class PurchaseItemChecker extends HttpServlet 
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.sendRedirect("AdminMenu.jsp");
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        String Itemid = req.getParameter("id");
        String Empusername = req.getParameter("username");
        
        System.out.println(Itemid);
        System.out.println(Empusername);
        
        
        PurchaseItemAuth a1 = new PurchaseItemAuth();
        boolean item = a1.isItem(Itemid,Empusername);
        
        if(item)
        { 
           HttpSession session = req.getSession(true);
           session.setAttribute("EmpUsername",Empusername);
           session.setAttribute("ItemId",Itemid);
           resp.sendRedirect("ItemPurchasedSuccess.jsp");
        }
        else
        {
            resp.sendRedirect("ItemCannotPurchased.jsp");
        }
    }
}