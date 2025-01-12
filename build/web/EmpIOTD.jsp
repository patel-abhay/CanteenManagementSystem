<%@page import="java.sql.SQLException"%>
<%@page import="db.dbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<%
    String id = (String)session.getAttribute("username");
//    System.out.println("id iotd "+id);
       ResultSet rs = null;
       
        int p1=0,p2=0,p3=0,p4=0,total=0,q1=0,q2=0,q3=0,q4=0;
            try{

                Statement st=dbConnector.getStatement();
                String query = "SELECT * FROM iotd;";
                

                rs = st.executeQuery(query);
                
%>
<html lang="en">
  <head>
      <style>
          #inp_1
{
  text-decoration:none;
  border-radius: 3vh;
  border: none;
  margin: 2vh;
  width:150px;
  height: 51px;
  
  
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 0;
  background: #333;
  font-size: 15px;
  color: #fff;}
      </style>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Item of the Day</title>
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
    
    <nav class="navbar">
      <div class="navbar-container container">
          <input type="checkbox" name="" id="">
          <div class="hamburger-lines">
              <span class="line line1"></span>
              <span class="line line2"></span>
              <span class="line line3"></span>
          </div>
      </div>
  </nav>
    <section class="showcase-area" id="showcase">
      <div class="showcase-container">
        <h1 class="main-title" id="home">Food Court Automation</h1>
      </div>
    </section>
    <table style="width: 100%">
        <tr>
            <td><a href="EmployeeHome.jsp" style="float: right;"><button>Employee Home</button></a></td>
        </tr>
        </table>

    <section id="food-menu">
      <h2 class="food-menu-heading">Item of the Day</h2>
      <%
          if(rs.next())
          {
%>
      <div class="food-menu-container container">

        <div class="food-menu-item">
          <div class="food-img">
              <img src="images/menu-1.jpg" alt="" />
          </div>
          <div class="food-description">
            <h2 class="food-titile"><%=rs.getString("name1")%></h2>
            <p class="food-price">Price: &#8377; <%=rs.getString("price1")%></p>
            <form action="PurchaseCombo" method="post">
                <table style="width: 100%">            
                <tr>
                    <td></td>
                    <td><input type="hidden" name="id" value="<%=id%>"></td>
                    <td><input type="hidden" name="name" value="<%=rs.getString("name1")%>" ></td>
                    <td><input type="hidden" name="quantity" value="<%=rs.getString("quantity1")%>" ></td>
                    <td><input type="hidden" name="price" value="<%=rs.getString("price1")%>" ></td>                    
                    <td><input type="submit" id="inp_1" value="Purchase"/></td>
                </tr>        
                </table>        
            </form>
          </div>
        </div>
              
      </div>
          <div class="food-menu-container container">

        <div class="food-menu-item">
          <div class="food-img">
              <img src="images/hero.png" alt="" />
          </div>
          <div class="food-description">
            <h2 class="food-titile"><%=rs.getString("name2")%></h2>
            <p class="food-price">Price: &#8377; <%=rs.getString("price2")%></p>
            <form action="PurchaseCombo" method="post">
                <table style="width: 100%">            
                <tr>
                    <td></td>
                    <td><input type="hidden" name="id" value="<%=id%>"></td>                    
                    <td><input type="hidden" name="name" value="<%=rs.getString("name2")%>" ></td>
                    <td><input type="hidden" name="quantity" value="<%=rs.getString("quantity2")%>" ></td>
                    <td><input type="hidden" name="price" value="<%=rs.getString("price2")%>" ></td>                    
                    <td><input type="submit" id="inp_1" value="Purchase"/></td>
                </tr>        
                </table>        
            </form>
          </div>
        </div>
              
      </div>
          <div class="food-menu-container container">

        <div class="food-menu-item">
          <div class="food-img">
              <img src="images/peakpx.jpg" alt="" />
          </div>
          <div class="food-description">
            <h2 class="food-titile"><%=rs.getString("name3")%></h2>
            <p class="food-price">Price: &#8377; <%=rs.getString("price3")%></p>
            <form action="PurchaseCombo" method="post">
                <table style="width: 100%">            
                <tr>
                    <td></td>
                    <td><input type="hidden" name="id" value="<%=id%>"></td>
                    <td><input type="hidden" name="name" value="<%=rs.getString("name3")%>" ></td>
                    <td><input type="hidden" name="quantity" value="<%=rs.getString("quantity3")%>" ></td>
                    <td><input type="hidden" name="price" value="<%=rs.getString("price3")%>" ></td>                    
                    <td><input type="submit" id="inp_1" value="Purchase"/></td>
                </tr>        
                </table>        
            </form>
          </div>
        </div>
              
      </div>
          <div class="food-menu-container container">

        <div class="food-menu-item">
          <div class="food-img">
              <img src="images/VegPaora.jpg" alt="" />
          </div>
          <div class="food-description">
            <h2 class="food-titile"><%=rs.getString("name4")%></h2>
            <p class="food-price">Price: &#8377; <%=rs.getString("price4")%></p>            
            <form action="PurchaseCombo" method="post">
                <table style="width: 100%">            
                <tr>
                    <td></td>
                    <td><input type="hidden" name="id" value="<%=id%>"></td>
                    <td><input type="hidden" name="name" value="<%=rs.getString("name4")%>" ></td>
                    <td><input type="hidden" name="quantity" value="<%=rs.getString("quantity4")%>" ></td>
                    <td><input type="hidden" name="price" value="<%=rs.getString("price4")%>" ></td>                    
                    <td><input type="submit" id="inp_1" value="Purchase"/></td>
                </tr>        
                </table>        
            </form>
          </div>
        </div>
        <%
           
        %>      
      </div>
          <%}%>
    </section>
  </body>
  <%  
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }

%>
  <!-- 
    .................../ JS Code for smooth scrolling /...................... -->

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script>
    $(document).ready(function () {
      // Add smooth scrolling to all links
      $("a").on("click", function (event) {
        // Make sure this.hash has a value before overriding default behavior
        if (this.hash !== "") {
          // Prevent default anchor click behavior
          event.preventDefault();

          // Store hash
          var hash = this.hash;

          // Using jQuery's animate() method to add smooth page scroll
          // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
          $("html, body").animate(
            {
              scrollTop: $(hash).offset().top,
            },
            800,
            function () {
              // Add hash (#) to URL when done scrolling (default click behavior)
              window.location.hash = hash;
            }
          );
        } // End if
      });
    });
  </script>
</html>