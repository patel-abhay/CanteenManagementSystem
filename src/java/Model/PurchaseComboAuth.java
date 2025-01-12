/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import controller.PurchaseItemChecker;
import db.dbConnector;
import dto.PurchaseComboDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class PurchaseComboAuth 
{
    
    public boolean isCombo(PurchaseComboDTO p)
    {
        String id = p.getId();
        String name = p.getName();
        String quantity = p.getQuantity();
        int total = p.getTotal();
        
        System.out.println("auth");
        System.out.println(id);
        System.out.println(total);
        
        int tableAmount=0,quantity1=0,canteenacc1=0;
        String tableName="",CanteenAcc=null;
        
        ResultSet rs=null,rs1=null,rs6=null;
       
        int i=0,j=0,k=0,n=0;
        try
        {
            Statement st=dbConnector.getStatement();
            String query01 = "select quantity from menu where name='"+name+"'";
            rs1 = st.executeQuery(query01);
            
            if(rs1.next())
            {
                quantity1 = Integer.parseInt(rs1.getString("Quantity"));
            }
            
            if(quantity1<=0)
            {
                return false;
            }
            else
            {
                quantity1 = quantity1 - Integer.parseInt(quantity);
            
                String query03 = "UPDATE menu SET Quantity='"+quantity1+"' WHERE name='"+name+"'";
                j = st.executeUpdate(query03);
            }
            
            String query = "select amount,name from emp where id ='"+id+"'";
            rs = st.executeQuery(query);
            
            if(rs.next())
            {
                tableName = rs.getString("name");
                tableAmount = Integer.parseInt(rs.getString("amount"));
            }
            
            if(tableAmount<=0)
            {
                return false;
            }
            else
            {
                tableAmount = tableAmount - total;
                String query1 = "Update emp set amount='"+tableAmount+"' where id='"+id+"'";
                i = st.executeUpdate(query1);
            }
            
            
            String query02 = "INSERT INTO debittrans(`type`,`from`,`amount`,`type2`,`to`,`purchased`) VALUES('Debited','"+tableName+"','"+total+"','Credited','Food Court','IOTD "+name+"')";
            n = st.executeUpdate(query02);
            
            String query07 = "SELECT canteenacc FROM admin";
            rs6 = st.executeQuery(query07);
            
            if(rs6.next())
            {
                canteenacc1 =rs6.getInt("canteenacc");
            }
            
            canteenacc1 = canteenacc1 + total;
            String query08 = "UPDATE admin SET canteenacc='"+canteenacc1+"'";
            k = st.executeUpdate(query08);
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        if(i>0 && j>0 && k>0)
        {
            return true;
        }
        else
        {
            return false;
        }
    
    }
    
    
}
