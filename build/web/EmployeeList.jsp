<%-- 
    Document   : EmployeeList
    
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="db.dbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        ResultSet rs = null;
        String id = null;
            try
            {
                Statement st=dbConnector.getStatement();
                id = request.getParameter("id");
                
                if(id==null || id=="")
                {
                    System.out.println(id);
                    
                    String query = "SELECT * FROM emp";
                    
                    rs = st.executeQuery(query);
                    System.out.println(query);
                }
                else
                {
                    String query = "SELECT * FROM emp where id='"+id+"'";
        
//                    Statement st=dbConnector.getStatement();

                    rs = st.executeQuery(query);
                }
                %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Employee List</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/employeelist.css">
    </head>
    <body>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <div class="container">
        
            <h1>User list</h1>
            
            <table style="width: 100%">
            <tr>
                <td><a href="AddEmployee.html"><button>Add User</button></a></td>
                <td><form method="post" action="EmployeeList.jsp">
                    
                        <input style="max-width: 80vh;width: 40vh; border-radius: 2vh;border: none; height: 5vh;margin-right:1vh ;padding-left: 1vh;" type="search" name="id" placeholder="Search with User id" maxlength="15">
                        <input  style="font-size: large;font-weight: bold; color: bisque; background-color: royalblue;width: 15vh; border-radius: 2vh;border: none; height: 5vh;" type="submit" value="search"></a>
                    </form>
                    </td>
                <td><a href="AdminHome.jsp" style="float: right;"><button>Admin Home</button></a></td>
            </tr>
            </table>
                
            
        <table style="margin-top: 5vh;" class="table user-list">
            <thead>
                <tr>
                    <th>
                        <span>User Name</span>
                    </th>
                    <th>
                        <span>User Id</span>
                    </th>
                    <th class="text-center">
                        <span>Contact no</span>
                    </th>
                    <th class="text-center">
                        <span>Gender</span>
                    </th>
                    <th class="text-center">
                        <span>Age</span>
                    </th>
                    <th class="text-center">
                        <span>City</span>
                    </th>
                    <th>
                        <span>Amount</span>
                    </th>
                    <th>
                        <span>Add Amount</span>
                    </th>
                    <th>
                        <span>Deduct Amount</span>
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
                        <span class="user-link"><%=rs.getString("name")%></span>
                    </td>
                    <td>
                        <%=rs.getString("id")%>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("contact")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("gender")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("age")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("city")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("amount")%></span>
                    </td>
                    
                    <td style="width: 20%;">
                        <form action="UpdateAmountChecker" method="post">
                            <input style="font-weight: bold;padding-left: 1vh; width: 9vh;margin-right: 1vh;border-radius: 2vh;box-shadow:silver ;" maxlength="5" minlength="1" type="text" name="amt">
                            <input type="hidden" name="id" value="<%=rs.getString("id")%>">
                            <input type="hidden" name="name" value="<%=rs.getString("name")%>">
                            <input style="width: 9vh;margin-right: 1vh;border-radius: 2vh;color: aliceblue;height: 3.5vh; border: none;background-color: rgb(0, 201, 97);" type="submit" value="Add">
                        </form>
                    </td>
                    <td style="width: 20%;">
                        <form action="DeductAmountChecker" method="post">
                            <input style="font-weight: bold;padding-left: 1vh; width: 9vh;margin-right: 1vh;border-radius: 2vh;box-shadow:silver ;" maxlength="5" minlength="1" type="text" name="amt">
                            <input type="hidden" name="id" value="<%=rs.getString("id")%>">
                            <input type="hidden" name="name" value="<%=rs.getString("name")%>">
                            <input style="width: 9vh;margin-right: 1vh;border-radius: 2vh;color: aliceblue;height: 3.5vh; border: none;background-color: rgb(0, 201, 97);" type="submit" value="Deduct">
                        </form>
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