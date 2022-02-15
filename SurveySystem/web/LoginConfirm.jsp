
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login check</title>
    </head>
    <body>
        <%
            //conn c1=new conn();
           Class.forName("com.mysql.jdbc.Driver");
            String u = request.getParameter("username");
            String p = request.getParameter("password");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Survey","root","alekh9696");
           String q="Select *from Login where username='"+u+"'and password='"+p+"'";
               PreparedStatement pst = c.prepareStatement(q);
               ResultSet rs=pst.executeQuery();
              boolean status = rs.next();
               if(status){
            
                    response.sendRedirect("Createorvote.jsp");
            }else{
            
                javax.swing.JOptionPane.showMessageDialog(null, "Invaild Login");
                response.sendRedirect("Login.jsp");
            }
            
            
            %>
    </body>
</html>
