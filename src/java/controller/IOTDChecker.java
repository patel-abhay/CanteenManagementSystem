/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.AddItemAuth;
import Model.IOTDAuth;
import dto.AddItemDTO;
import dto.IOTDDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ashug
 */
public class IOTDChecker extends HttpServlet 
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.sendRedirect("ItemOfTheDayMain.html");
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String quantity1 = req.getParameter("Quantity1");        
        String name1 = req.getParameter("name1");
        String quantity2 = req.getParameter("Quantity2");        
        String name2 = req.getParameter("name2");
        String quantity3 = req.getParameter("Quantity3");        
        String name3 = req.getParameter("name3");
        String quantity4 = req.getParameter("Quantity4");        
        String name4 = req.getParameter("name4");
        
        IOTDDTO add = new IOTDDTO();
        add.setName1(name1);
        add.setName2(name2);
        add.setName3(name3);
        add.setName4(name4);
        add.setQuantity1(quantity1);
        add.setQuantity2(quantity2);
        add.setQuantity3(quantity3);
        add.setQuantity4(quantity4);
        
        
        IOTDAuth a1 = new IOTDAuth();
        boolean item = a1.isUpdate(add);
        
        if(item)
        { 
           resp.sendRedirect("ItemOfTheDayMain.jsp");
        }
        else
        {
            resp.sendRedirect("ItemCannotPurchased.jsp");
        }
    }
}