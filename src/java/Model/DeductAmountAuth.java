/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;
import dto.DeductAmountDTO;
import dto.UpdateAmountDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class DeductAmountAuth 
{
    public boolean isUpdate(DeductAmountDTO d1)
    {
        String id = d1.getId();
        String name = d1.getName();
        int amt = d1.getAmt();
        
//        System.out.println(amt);
        
        int tableAmt = 0;
        int i=0,j=0;
        try{
            
            Statement st=dbConnector.getStatement();
            String query = "SELECT amount from emp where id = '"+id+"'";

            ResultSet rs = st.executeQuery(query);
            
            if(rs.next())
            {
                tableAmt = rs.getInt("amount");
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        try
        { 
            Statement st=dbConnector.getStatement();
            String query1 = "INSERT INTO transaction(`by`,`to`,`type`,`amount`) VALUES('Canteen','"+name+"','Debited','"+amt+"')";
            i = st.executeUpdate(query1);
            
            String query2 = "INSERT INTO `debittrans`(`type`,`from`,`amount`,`type2`,`to`,`purchased`) VALUES('Debited','"+name+"','"+amt+"','Creadit','Canteen','Nothing')";
            j = st.executeUpdate(query2);
            
            amt = tableAmt-amt;
            String query = "UPDATE emp SET amount='"+amt+"' WHERE id = '"+id+"';";
            
            st.executeUpdate(query);
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        if(tableAmt>=0 && amt==tableAmt)
        {
            return true;
        }
        else{
            return false;
        }
    }
}
