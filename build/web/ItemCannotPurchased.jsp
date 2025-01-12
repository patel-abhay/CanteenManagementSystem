<%-- 
    Document   : ItemPurchasedSuccess
    
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
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
               
                <td><a href="EmployeeHome.jsp" style="float: right;"><button>Employee Home</button></a></td>
            </tr>
            </table>
                <div class="title">Item Not Available<br>Or You Don't Have Enough Balance</div>
    
    <table style="width: 100%">
            <tr>
                <td><a href="EmpIOTD.jsp"><button>Item Of The Day</button></a></td>
                
            </tr>
            <tr>
                <td><a href="AdminMenu.jsp"><button>Menu</button></a></td>
                
            </tr>
            </table>
  </div>

</body>
<%
%>
</html>
