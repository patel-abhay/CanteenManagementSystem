/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;
//import dto.UserDTOAdminLogin;
import dto.UserDTOEmpLogin;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class EmpLoginAuth {
    
    public boolean isLogin(UserDTOEmpLogin user){
        
        String username = user.getUsername();
        String password = user.getPassword();
        
        System.out.println();
        
        String tablePassword="";
        
        try{
            
            Statement st=dbConnector.getStatement();
            String query = "SELECT Password from emp where id = '"+username+"'";
//            System.out.println("Query = "+query);
            ResultSet rs = st.executeQuery(query);
            if(rs.next())
            {
                tablePassword = rs.getString("password");
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        if(username!=null && password!=null && !username.trim().equals("") && password.equals(tablePassword))
        {
            return true;
        }
        else{
            return false;
        }
        
    }
    
}
