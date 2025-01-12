<%-- 
    Document   : ItemPurchasedSuccess
    
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String ItemId = (String)session.getAttribute("ItemId");
    String EmpUsername = (String)session.getAttribute("EmpUsername");
    ResultSet rs = null,rs1=null;
    
    String EmpAmt = "";
            
    try 
    {
        Statement st = db.dbConnector.getStatement();
        String query1 = "Select amount from emp where id='"+EmpUsername+"'";
        rs1 = st.executeQuery(query1);
        
        if(rs1.next())
        {
            EmpAmt = rs1.getString("amount");
        }
        
        String query = "Select `Name`,`Type`,`Price` From menu where ItemId = '"+ItemId+"'";
        rs = st.executeQuery(query);
        
    
%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/addemployeestyle.css">
    <link rel="stylesheet" href="css/menu.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <body style="background: url(images/peakpx.jpg);background-repeat: no-repeat;background-size: 100% 100%;">
    
  <div class="container">
      <table style="width: 100%">
            <tr>
                <td></td>
                <td>
                    <input style="pointer-events: none; max-width: 80vh;width: 40vh; border-radius: 2vh;border: none; height: 5vh;margin-right:1vh ;padding-left: 1vh;" type="text" value="Your Account balance : <%=EmpAmt%>" placeholder="Employee Balance" maxlength="15">   
                </td>
                <td><a href="EmployeeHome.jsp" style="float: right;"><button>Employee Home</button></a></td>
            </tr>
            </table>
    <div class="title">Item Purchased Successfully</div>
    <div class="content">
        
        <%
            if(rs.next())
            {
                
        %>
        <div class="user-details">
            <h3>Item : <%=rs.getString("Name")%></h3>       
        </div>
        <div class="user-details">
            <h3>Type : <%=rs.getString("Type")%></h3>
        </div>
        <div class="user-details">
            <h3>Price : <%=rs.getString("Price")%></h3>
        </div>
        <%}%>
    </div>
    <table style="width: 100%">
            <tr>
                <td><a href="AdminMenu.jsp"><button>Purchase More Item</button></a></td>
                
            </tr>
            </table>
  </div>

</body>
<%  
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }


    
%>
</html>
