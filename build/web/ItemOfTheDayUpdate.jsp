<%-- 
    Document   : ItemOfTheDayUpdate

    
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="db.dbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<%
    ResultSet rs0 = null,rs1 = null,rs2 = null,rs3 = null;
//    System.out.println(id);
    try{

        Statement st=dbConnector.getStatement();
        String query = "SELECT `Name` FROM menu;";

        rs0 = st.executeQuery(query);
        
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
        <form action="IOTDChecker" method="post">
        <div class="user-details">
            
          <div class="input-box">
            <span class="details">Food Item</span>
            <select name="name1" style="height:5vh; border-radius: 2vh;"> 
            <%while(rs0.next()){%>
            <option ><%=rs0.getString("Name")%></option>
                <%}%>
            </select>
          </div>
          <div class="input-box">
            <span class="details">Quantity</span>
            <input type="text" name="Quantity1" maxlength="1" placeholder="Enter Food Quantity <10" required>
        </div>
            <%
                String query1 = "SELECT `Name` FROM menu;";

                rs1 = st.executeQuery(query1);
        
            %>
	<div class="input-box">
            <span class="details">Food Item</span>
            <select name="name2" style="height:5vh; border-radius: 2vh;"> 
            <%while(rs1.next()){%>
                <option><%=rs1.getString("Name")%></option>
                <%}%>
            </select>
          </div>
          <div class="input-box">
            <span class="details">Quantity</span>
            <input type="text" name="Quantity2" maxlength="1" placeholder="Enter Food Quantity <10" required>
        </div>
            <%
                String query2 = "SELECT `Name` FROM menu;";

                rs2 = st.executeQuery(query2);
        
            %>
            <div class="input-box">
            <span class="details">Food Item</span>
            <select name="name3" style="height:5vh; border-radius: 2vh;"> 
            <%while(rs2.next()){%>
                <option><%=rs2.getString("Name")%></option>
                <%}%>
            </select>
          </div>
          <div class="input-box">
            <span class="details">Quantity</span>
            <input type="text" name="Quantity3" maxlength="1" placeholder="Enter Food Quantity <10" required>
        </div>
            <%
                String query3 = "SELECT `Name` FROM menu;";

                rs3 = st.executeQuery(query1);
        
            %>
	<div class="input-box">
            <span class="details">Food Item</span>
            <select name="name4" style="height:5vh; border-radius: 2vh;"> 
            <%while(rs3.next()){%>
                <option><%=rs3.getString("Name")%></option>
                <%}%>
            </select>
          </div>
          <div class="input-box">
            <span class="details">Quantity</span>
            <input type="text" name="Quantity4" maxlength="1" placeholder="Enter Food Quantity <10" required>
        </div>
            <div class="button">
          <input type="submit" value="Update Item">
        </div></div>
      </form>
    
  </div>
          
<%
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
%>
</body>
</html>
