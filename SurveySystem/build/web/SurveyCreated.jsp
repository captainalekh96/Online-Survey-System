
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
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Survey","root", "alekh9696");
            String Question = request.getParameter("Question");
            String optiona = request.getParameter("Option a");
            String optionb = request.getParameter("Option b");
            String optionc = request.getParameter("Option c");
            String optiond = request.getParameter("Option d");
            
            
            String p="DROP TABLE IF EXISTS poll; ";
            PreparedStatement drop = c.prepareStatement(p);
               drop.executeUpdate();
               
            String de="DROP TABLE IF EXISTS Votes;";
            
            PreparedStatement ps = c.prepareStatement(de);
            ps.executeUpdate();
               
            String r=" CREATE TABLE poll (Question VARCHAR(100), c1 VARCHAR(100), c2 VARCHAR(100), c3 VARCHAR(100), c4 VARCHAR(100));";
            PreparedStatement create = c.prepareStatement(r);
               create.executeUpdate();
            
            String t ="INSERT INTO poll(Question,c1,c2,c3,c4) VALUES('"+Question+"','"+optiona+"','"+optionb+"','"+optionc+"','"+optiond+"');";
              
               PreparedStatement pst = c.prepareStatement(t);
               pst.executeUpdate();
              
             //HttpSession session = request.getSession();
           // session.setAttribute("name", name);
            session.setAttribute("question", Question);
            session.setAttribute("c1", optiona);
            session.setAttribute("c2", optionb);
            session.setAttribute("c3", optionc);
            session.setAttribute("c4", optiond);
           
             
            String table ="create table Votes(vote VARCHAR(10));";
            PreparedStatement ps1 = c.prepareStatement(table);
            ps1.executeUpdate();
        
                
            response.sendRedirect("Home.jsp");
            
            }catch(Exception ae){
                out.println("The error is"+ae);
            }

        
        %>
    </body>
</html>
