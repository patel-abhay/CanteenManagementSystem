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
    String empUser = (String)session.getAttribute("username");
        ResultSet rs = null;
        ResultSet rs1 = null;
        
        String empName="";
        String empAmt="";
            try
            {
                Statement st=dbConnector.getStatement();
                
                String query = "SELECT `name`,`amount` FROM emp WHERE `id`='"+empUser+"'";
                rs1 = st.executeQuery(query);
                
                if(rs1.next())
                {
                    empName = rs1.getString("name");
                    empAmt = rs1.getString("amount");
                }
                System.out.println("name "+empName);
                String query1 = "SELECT * FROM `debittrans` WHERE `from`='"+empName+"'";
                    
                rs = st.executeQuery(query1);
               
                %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>My Transaction</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/employeelist.css">
    </head>
    <body>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <div class="container">
        
            <h1>Transaction</h1>
            
            <table style="width: 100%">
            <tr>
                <td></td>
                <td>
                    <input style="pointer-events: none; max-width: 80vh;width: 40vh; border-radius: 2vh;border: none; height: 5vh;margin-right:1vh ;padding-left: 1vh;" type="text" value="Your Account balance : <%=empAmt%>" placeholder="Employee Balance" maxlength="15">   
                </td>
                <td>
                    <form action="EmpAddMoneyChecker" method="post">
                        <input style="font-weight: bold;padding-left: 1vh; width: 35vh;margin-right: 1vh;border-radius: 2vh;box-shadow:silver ;" placeholder="Add Money to your Account" maxlength="5" minlength="1" type="text" name="amt">
                        <input type="hidden" name="id" value="<%=empUser%>">
                        <input type="hidden" name="name" value="<%=empName%>">
                        <input style="width: 9vh;margin-right: 1vh;border-radius: 2vh;color: aliceblue;height: 3.5vh; border: none;background-color: rgb(0, 201, 97);" type="submit" value="Add">
                    </form>
                </td>
                <td><a href="EmployeeHome.jsp" style="float: right;"><button>User Home</button></a></td>
            </tr>
            </table>
                
            
        <table style="margin-top: 5vh;" class="table user-list">
            <thead>
                <tr>
                    <th>
                        <span>Type</span>
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
