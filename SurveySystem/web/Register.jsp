

<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register</title>
        <style>
            body {
              background-image: url('Background.jpg');
              background-repeat: no-repeat;
              background-size: cover;
            }
            </style>
    </head>
    <body>
        
            <br><br><br><br>
    <center><h1>Registration</h1><br><br><br>
        <form name="Register" action="registrationconfirm.jsp">
          <b>
           Username: <input type="text" name="username"  placeholder="Enter your Username"><br><br>
           Email: <input type="email" name="email" placeholder="Enter Email"><br><br>
           Password: <input type="password" name="password" placeholder="Create a Password"><br><br>
           AGE <input type="number" name="age" placeholder="AGE"><br><br></b>
           <input type="submit" value="Register" onclick="confirm('Are You Sure')">&nbsp;&nbsp;&nbsp;
            <input type="reset" value="Reset form" onclick="alert('Form Reset')">
        </form><br><br>
        <form action="Login.jsp">
        <input type="submit" value="BACK">
        </form>
    </center>
    
    </body>
</html>
