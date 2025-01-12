<%-- 
    Document   : AdminTranscation
    Created on : 11 Apr, 2023, 6:15:32 PM
    Author     : ashug
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="db.dbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        ResultSet rs = null,rs1=null;
        String CanteenAcc="";
            try
            {
                Statement st=dbConnector.getStatement();
                String query1 = "SELECT `canteenacc` FROM admin";
                rs1 = st.executeQuery(query1);
                
                if(rs1.next())
                {
                    CanteenAcc = rs1.getString("canteenacc");
                }
                
                String query = "SELECT * FROM transaction";
                    
                rs = st.executeQuery(query);
             
               
                %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Food Court Transaction</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <a href="AdminTranscation.jsp"></a>
        <link rel="stylesheet" href="css/employeelist.css">
    </head>
    <body>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <div class="container">
        
            <h1>Food Court Transactions</h1>
            
            <table style="width: 100%">
            <tr>
                <td></td>
                <td>
                    <input style="pointer-events: none; max-width: 80vh;width: 40vh; border-radius: 2vh;border: none; height: 5vh;margin-right:1vh ;padding-left: 1vh;" type="text" value="Your Account balance : <%=CanteenAcc%>" placeholder="Employee Balance" maxlength="15">   
                </td>
                <td><a href="AdminHome.jsp" style="float: right;"><button>Admin Home</button></a></td>
            </tr>
            </table>
                
            
        <table style="margin-top: 5vh;" class="table user-list">
            <thead>
                <tr>
                    <th>
                        <span>By</span>
                    </th>
                    <th>
                        <span>Type</span>
                    </th>
                    <th>
                        <span>To</span>
                    </th>
                    
                    <th>
                        <span>Amount</span>
                    </th>
                </tr>
            </thead>
            <tbody>
                <%
                    while(rs.next())
                    {
                %>
                <tr>
                    <td>
                        <span class="user-link"><%=rs.getString("by")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("type")%></span>
                    </td>                   
                    <td>
                        <span class="user-link"><%=rs.getString("to")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("amount")%></span>
                    </td>                    
                </tr>
                <%}%>
            </tbody>
        </table>
<%  
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }

%>
        </div>
        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            
        </script>
        
    </body>
</html>
