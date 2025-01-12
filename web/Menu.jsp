<%-- 
    Document   : Menu
    
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="db.dbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
        ResultSet rs = null;
//        if(session.equals(true))
//        {
            try{

                Statement st=dbConnector.getStatement();
                String query = "SELECT * FROM menu;";

                rs = st.executeQuery(query);
                
                %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Menu</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/menu.css">
        
    </head>
    <body>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
      integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="css/IOTDM.css" />
  </head>
  <body>
    
    
    <section class="showcase-area" id="showcase">
      <div class="showcase-container">
          
            <h1 class="main-title" id="home">Food Court Automation</h1>
            <table style="width: 100%">
            <tr>
                <td><a href="AddItem.html"><button>Add Item</button></a></td>
                <td><a href="AdminHome.jsp" style="float: right;"><button>Admin Home</button></a></td>
            </tr>
            </table>
        
      </div>
    </section>
        <div class="container">
        
            <h1>Menu</h1>
        <table style="margin-top: 5vh;" class="table user-list">
            <thead>
                <tr>
                    <th>
                        <span><b>Item Id</b></span>
                    </th>
                    
                    <th>
                        <span><b>Name</b></span>
                    </th>
                    <th>
                        <span><b>Type</b></span>
                    </th>
                    <th>
                        <span><b>Category</b></span>
                    </th>
                    <th>
                        <span><b>Quantity</b></span>
                    </th>
                    <th>
                        <span><b>Price</b></span>
                    </th>
                    <th>
                        <span><b>Delete Item</b></span>
                    </th>
                    <th>
                        <span><b>Update Item</b></span>
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
                        <span class="user-link"><%=rs.getString("ItemId")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("Name")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("Type")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("Category")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("Quantity")%></span>
                    </td>
                    <td>
                        <span class="user-link"><%=rs.getString("Price")%></span>
                    </td>
                    <td>
                        <form action="DeleteItemChecker" method="post">
                        <input type="hidden" name="id" value="<%=rs.getString("ItemId")%>">
                        <input style="width: 9vh;border-radius: 2vh;color: aliceblue;height: 3.5vh; border: none;background-color: rgb(0, 201, 97);" value="Delete" type="submit">
                        </form>
                    </td>
                    <td style="width: 20%;">
                        <form action="UpdateItem.jsp" method="post">
                        <input type="hidden" name="id" value="<%=rs.getString("ItemId")%>">
                        <input style="width: 9vh;margin-right: 1vh;border-radius: 2vh;color: aliceblue;height: 3.5vh; border: none;background-color: rgb(0, 201, 97);" value="Update" type="submit">
                        </form>
                    </td>
                    
                </tr>
                <%}%>
            </tbody>
        <%
                }
            catch(SQLException e)
            {
                System.out.println(e);
            }
%>
        </table>
        </div>
        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            
        </script>
    </body>
</html>