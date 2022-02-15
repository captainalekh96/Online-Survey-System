

 


<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>  
            body {
          background-image: url('Results.jpg');
          background-repeat: no-repeat;
          background-size: cover;
        }
		
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  text-align: center;
  padding: 20px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #ff7708;
  color: white; 
    </style>
    </head>
    <body><br><br><br><br><br><br><center>
        <% 
        Class.forName("com.mysql.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Survey","root","alekh9696");
        String q="select vote,count(*) as Total from Votes group by vote;";
        PreparedStatement pst = c.prepareStatement(q);
        ResultSet rs=pst.executeQuery();
        %>
        <h1><%out.println(session.getAttribute("question"));%></h1>
    <TABLE BORDER="1" id="customers">
        <TR class="">
      <TH>Option</TH>
      <TH>Total Votes</TH>
      
      </TR>
      <% while(rs.next()){ %>
      <TR class="mobile-header">
       <TD> <%= rs.getString(1) %></td>
       <TD> <%= rs.getString(2) %></TD>
      
      </TR>
      <% } %>
        
     </TABLE>
    </center>
    </body>
</html>
