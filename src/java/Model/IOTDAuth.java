/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;
import dto.IOTDDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class IOTDAuth 
{
    public boolean isUpdate(IOTDDTO add)
    {
        ResultSet rs1=null,rs2=null,rs3=null,rs4=null;
        String price1="",price2="",price3="",price4="";
        
        String name1 = add.getName1();
        String name2 = add.getName2();
        String name3 = add.getName3();
        String name4 = add.getName4();
        String quantity1 = add.getQuantity1();
        String quantity2 = add.getQuantity2();
        String quantity3 = add.getQuantity3();
        String quantity4 = add.getQuantity4();
        
        
        int i = 0;
        try{
            
            Statement st=dbConnector.getStatement();
            
            String query1= "select Price from menu where name='"+name1+"'";
            rs1 = st.executeQuery(query1);
            
            if(rs1.next())
            {
                price1 = rs1.getString("price");
            }
            
            String query2= "select Price from menu where name='"+name2+"'";
            rs2 = st.executeQuery(query2);
            
            if(rs2.next())
            {
                price2 = rs2.getString("price");
            }
            
            String query3= "select Price from menu where name='"+name3+"'";
            rs3 = st.executeQuery(query3);
            
            if(rs3.next())
            {
                price3 = rs3.getString("price");
            }
            
            String query4= "select Price from menu where name='"+name4+"'";
            rs4 = st.executeQuery(query4);
            
            if(rs4.next())
            {
                price4 = rs4.getString("price");
            }
            
            String query ="UPDATE iotd SET name1='"+name1+"',quantity1='"+quantity1+"',price1='"+price1+"',name2='"+name2+"',quantity2='"+quantity2+"',price2='"+price2+"',name3='"+name3+"',quantity3='"+quantity3+"',price3='"+price3+"',name4='"+name4+"',quantity4='"+quantity4+"',price4='"+price4+"'";
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
