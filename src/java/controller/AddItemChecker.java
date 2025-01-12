/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.AddEmployeeAuth;
import Model.AddItemAuth;
import dto.AddEmployeeDTO;
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
public class AddItemChecker extends HttpServlet
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.sendRedirect("AddItem.html");
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String name = req.getParameter("name");
        String type = req.getParameter("type");
        String quantity = req.getParameter("quantity");
        String category = req.getParameter("category");
        String price = req.getParameter("price");
        
        AddItemDTO add = new AddItemDTO();
        add.setName(name);
        add.setCategory(category);
        add.setQuantity(quantity);
        add.setType(type);
        add.setPrice(price);
        
        AddItemAuth a1 = new AddItemAuth();
        boolean item = a1.isAdd(add);
        
        if(item)
        { 
           resp.sendRedirect("Menu.jsp");
        }
        else
        {
            resp.sendRedirect("AddItem.html");
        }
    }
}