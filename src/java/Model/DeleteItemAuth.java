/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class DeleteItemAuth 
{
    public boolean isDelete(String add)
    {
        String id = add;
        int i = 0;
        try{
            
            Statement st=dbConnector.getStatement();
            String query = "DELETE FROM menu WHERE ItemId='"+id+"'";
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
