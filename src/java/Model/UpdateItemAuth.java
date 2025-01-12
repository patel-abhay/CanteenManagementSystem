/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;
import dto.AddItemDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class UpdateItemAuth
{
    public boolean isUpdate(AddItemDTO add)
    {
        String id = add.getId();
        String quantity = add.getQuantity();
        String price = add.getPrice();
        
        System.out.println(id);
        System.out.println(quantity);
        System.out.println(price);
        
        int i = 0;
        try{
            
            Statement st=dbConnector.getStatement();
            String query = "UPDATE `menu` SET Quantity='"+quantity+"',Price='"+price+"' WHERE ItemId='"+id+"'";
            i = st.executeUpdate(query);
            System.out.println(query);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        if(i>0)
        {
            return true;
        }
        else{
            return false;
        }
    }
}
