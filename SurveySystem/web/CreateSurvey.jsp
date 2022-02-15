
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Survey</title>
    </head>
    <body><br><br><br>
    <center> <h1>Create a Survey</h1><br><br><br>
        <form action="SurveyCreated.jsp">
        Enter Question:-<input type="text" name="Question" placeholder="Enter Your Question"><br><br>
        Option a- <input type="text" name="Option a" placeholder="Option a"><br><br>
        Option b- <input type="text" name="Option b" placeholder="Option b"><br><br>
        Option c- <input type="text" name="Option c" placeholder="Option c"><br><br>
        Option d- <input type="text" name="Option d" placeholder="Option d"><br><br>
        <input type="submit" value="SUBMIT VOTE" onclick=" alert('RECORDS INSETERED')">
        <input type="reset"  value="Reset">
        </form>
    </center>
    </body>
</html>
