/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;
import dto.AddItemDTO;
import dto.UserDTOAdminLogin;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class AddItemAuth 
{
    public boolean isAdd(AddItemDTO add)
    {
        String name = add.getName();
        String type = add.getType();
        String quantity = add.getQuantity();
        String category = add.getCategory();
        String price = add.getPrice();
        
        int i = 0;
        try{
            
            Statement st=dbConnector.getStatement();
            String query = "INSERT INTO menu(`Name`,`Type`,`Category`,`Quantity`,`Price`) VALUES('"+name+"','"+type+"','"+category+"','"+quantity+"','"+price+"')";
            i = st.executeUpdate(query);
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
