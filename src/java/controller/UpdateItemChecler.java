/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.AddItemAuth;
import Model.UpdateItemAuth;
import dto.AddItemDTO;
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
public class UpdateItemChecler extends HttpServlet
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.sendRedirect("UpdateItem.jsp");
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String id = req.getParameter("id");
        String quantity = req.getParameter("quantity");        
        String price = req.getParameter("price");
        
        System.out.println(id);
        System.out.println(quantity);
        System.out.println(price);
        
        AddItemDTO add = new AddItemDTO();
        add.setId(id);
        add.setQuantity(quantity);
        add.setPrice(price);
        
        UpdateItemAuth a1 = new UpdateItemAuth();
        boolean item = a1.isUpdate(add);
        
        if(item)
        { 
           resp.sendRedirect("Menu.jsp");
        }
        else
        {
            resp.sendRedirect("UpdateItem.jsp");
        }
    }
}