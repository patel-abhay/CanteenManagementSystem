/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import com.mysql.fabric.Response;
import controller.PurchaseItemChecker;
import db.dbConnector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class PurchaseItemAuth 
{   
    public boolean isItem(String Itemid,String EmpUsername)
    {
        System.out.println(Itemid);
        System.out.println(EmpUsername);
        
        ResultSet rs = null;
        ResultSet rs1 = null;
        ResultSet rs2 = null;
        String tableQuantity=null,tablePrice=null,canteenAcc=null,empName=null,itemName=null;
        int tableAmount = 0,tableQuantity1 = 0,i=0,j=0,k=0;
        
        try{
            
            Statement st=dbConnector.getStatement();
            String query = "SELECT amount,name from emp where id = '"+EmpUsername+"'";
            rs = st.executeQuery(query);
            
            if(rs.next())
            {
                tableAmount = Integer.parseInt(rs.getString("amount"));
                empName = rs.getString("name");
            }
            
            
            
            String query1 = "SELECT `Quantity`,`Price`,`Name` FROM menu WHERE ItemId = '"+Itemid+"'";
            rs1 = st.executeQuery(query1);
            if(rs1.next())
            {
                itemName = rs1.getString("Name");
                tableQuantity = rs1.getString("Quantity");
                tablePrice = rs1.getString("Price");
            }
            
            tableQuantity1 = Integer.parseInt(tableQuantity);
            if(tableQuantity1<=0)
            {
                return false;
            }
            else
            {
                tableQuantity1--;
                String query01 = "UPDATE menu SET Quantity='"+tableQuantity1+"' WHERE ItemId = '"+Itemid+"'";
                j = st.executeUpdate(query01);
            }
           
            if(tableAmount<=0)
            {
                return false;
            }
            else
            {
                tableAmount = tableAmount - (Integer.parseInt(tablePrice));
                String query0 = "UPDATE emp SET amount='"+tableAmount+"' where id = '"+EmpUsername+"'";
                i = st.executeUpdate(query0);
            
            }
            
                
            String query02 = "INSERT INTO debittrans(`type`,`from`,`amount`,`type2`,`to`,`purchased`) VALUES('Debited','"+empName+"','"+tablePrice+"','Credited','Canteen','"+itemName+"')";
            k = st.executeUpdate(query02);
            
            String query03 = "SELECT canteenacc FROM admin";
            rs2 = st.executeQuery(query03);
            
            if(rs2.next())
            {
                canteenAcc = rs2.getString("canteenacc");
            }
            
            int tablePrice1  = Integer.parseInt(tablePrice);
            int canteenAcc1 = Integer.parseInt(canteenAcc);
            canteenAcc1 = canteenAcc1 + tablePrice1;
            String query04 = "UPDATE admin SET canteenacc='"+canteenAcc1+"'";
            k = st.executeUpdate(query04);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        if(i>0 && j>0 && k>0)
        {
            return true;
        }
        else{
            return false;
        }
    }
}
