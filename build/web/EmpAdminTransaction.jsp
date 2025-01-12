<%-- 
    Document   : EmpTransaction
    Created on : 15 Apr, 2023, 2:53:36 PM
    Author     : ashug
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="db.dbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<%
        ResultSet rs = null;
        
            try
            {
                Statement st=dbConnector.getStatement();
                
                String query1 = "SELECT * FROM `debittrans`";
                    
                rs = st.executeQuery(query1);
               
                %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Employee Transaction</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/employeelist.css">
    </head>
    <body>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <div class="container">
        
            <h1>User Transaction</h1>
            
            <table style="width: 100%">
            <tr>
                <td></td>
                
                <td><a href="AdminHome.jsp" style="float: right;"><button>Admin Home</button></a></td>
            </tr>
            </table>
                
            
        <table style="margin-top: 5vh;" class="table user-list">
            <thead>
                <tr>
                    <th>
                        <span>Type</span>
                    </th>
                   <th>
                        <span>From</span>
                    </th>
                   
                    <th>
                        <span>Amount</span>
                    </th>
                    <th>
                        <span>to</span>
                    </th>
                    <th>
                        <span>Purchased</span>
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
                        <span class="user-link"><%=rs.getString("type")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("from")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("Amount")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("to")%></span>
                    </td>    
                    <td>
                        <span class="user-link"><%=rs.getString("purchased")%></span>
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
