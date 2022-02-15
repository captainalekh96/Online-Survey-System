
<%@page import="java.sql.*"%>
<%@page import="java.sql.CallableStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            String vote = request.getParameter("Vote");
            
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Survey","root", "alekh9696");
            
            
           
            
            String v="insert into Votes(vote) values('"+vote+"');";
            PreparedStatement ps2 = c.prepareStatement(v);
            ps2.executeUpdate();
            
            response.sendRedirect("Thank You.jsp");
        
        %>
    </body>
</html>
