/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import db.dbConnector;
import dto.AddEmployeeDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ashug
 */
public class AddEmployeeAuth 
{
    public boolean isAddEmp(AddEmployeeDTO user)
     {
        
        String name = user.getname();
        String password = user.getPassword();
        String id = user.getId();
        String gender = user.getGender();
        String contact = user.getContact();
        String age = user.getAge();
        String city = user.getCity();
//        
//         System.out.println("Auth");
//        System.out.println(name);
//        System.out.println(id);
//        System.out.println(gender);
//        System.out.println(password);
//        System.out.println(contact);
//        System.out.println(age);
//        System.out.println(city);
        
        int i=0;
        if(name!=null && id!=null && password!=null && gender!=null && contact!=null && age!=null && city!=null)
        {
            try{

                Statement st=dbConnector.getStatement();
                String query1 = "INSERT INTO `emp`(`name`,`id`,`contact`,`gender`,`password`,`age`,`city`) VALUES ('"+name+"','"+id+"','"+contact+"','"+gender+"','"+password+"','"+age+"','"+city+"');";

//                System.out.println("Query = "+query1);
                i = st.executeUpdate(query1);
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
            if(i>0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
        
    }
}
