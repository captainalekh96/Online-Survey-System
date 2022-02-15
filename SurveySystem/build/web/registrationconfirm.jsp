
<%@page import="java.sql.*"%>
<%@page import="java.sql.CallableStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm</title>
    </head>
    <body>
        <%
            try{
             Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Survey","root", "alekh9696");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            String age = request.getParameter("age");
            
            String q ="INSERT INTO Login(username,Email,password,age) VALUES('"+username+"','"+email+"','"+pass+"','"+age+"');";
              
               PreparedStatement pst = c.prepareStatement(q);
               pst.executeUpdate();
              
             
            
                    
                javax.swing.JOptionPane.showMessageDialog(null, "Record Inserted");
                        response.sendRedirect("Login.jsp");
            
            }catch(Exception ae){
                out.println("The error is"+ae);
            }

        %>
        
    </body>
</html>
