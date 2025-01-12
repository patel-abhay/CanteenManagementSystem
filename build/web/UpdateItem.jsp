<%-- 
    Document   : UpdateItem
    
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="db.dbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<%
    String id = request.getParameter("id");
    ResultSet rs = null;
    System.out.println(id);
    try{

        Statement st=dbConnector.getStatement();
        String query = "SELECT * FROM menu WHERE ItemId='"+id+"';";

        rs = st.executeQuery(query);

        %>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    
    <link rel="stylesheet" href="css/addemployeestyle.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <div class="title">Update Item</div>
    <div class="content">
        <form action="UpdateItemChecler" method="post">
        <div class="user-details">
            <%
                if(rs.next())
          {
          %>
          <div class="input-box">
            <span class="details">Food Item</span>
            <input style="pointer-events: none;" type="text" value="<%=rs.getString("Name")%>" name="name" placeholder="Enter Food Item" required>
          </div>
          <div class="input-box">
            <span class="details">Quantity</span>
            <input  type="text" value="<%=rs.getString("Quantity")%>" name="quantity" placeholder="Quantity" required>
          </div>
		  <div class="input-box">
            <span class="details">Price</span>
            <input type="text" value="<%=rs.getString("Price")%>" name="price" placeholder="Enter item Price" required>
          </div>
          <div class="input-box">
            <span class="details">category</span>
            <input style="pointer-events: none;" type="text" value="<%=rs.getString("Category")%>" name="category" placeholder="category" required>
          </div>
            <input type="hidden" name="id" value="<%=rs.getString("ItemId")%>">
        <div class="button">
          <input type="submit" value="Update Item">
        </div>
      </form>
    </div>
  </div>
          
<%
            }
                }
            catch(SQLException e)
            {
                System.out.println(e);
            }
%>
</body>
</html>
