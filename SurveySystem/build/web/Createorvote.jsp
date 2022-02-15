
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
             body {
          background-image: url('oo.jpg');
          background-repeat: no-repeat;
          background-size: cover;
        }
        
.submit {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button1 {border-radius: 24px;}

</style>
    </head>
    <body><br><br><br><br>
        
    <center>
        <form action="CreateSurvey.jsp">
            <input type="submit" class="submit button1" value="CREATE A SURVEY">&nbsp;&nbsp;
            
        </form><br><br><br><br>
        <form action="Vote.jsp">
            <input type="submit" class="submit button1" value="VOTE IS SURVEY">
        </form><br><br><br><br>
        <form action="ViewResult.jsp">
        <input type="submit" class="submit button1" Value="RESULT"><br><br>
    </form>
    </center>
    </body>
</html>
