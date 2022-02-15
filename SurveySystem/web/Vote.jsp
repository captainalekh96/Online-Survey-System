
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VOTE</title>
        <style>
            body {
          background-image: url('vote.jpg');
          background-repeat: no-repeat;
          background-size: cover;
        }
/* The container */
.container {
  display: block;
  position: relative;
  padding-center: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
/* Hide the browser's default radio button */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 640px;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.container .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;

}
.submit {
  background-color: #6d6b6b;
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
.button1 {border-radius: 20px;}
</style>
    </head>
    <body><br><br><br><br>
        
    <center>
        <form action="VoteLocked.jsp">
            <h1><%out.println(session.getAttribute("question"));%></h1><br>
            
            
            <label class="container"><%out.println(session.getAttribute("c1"));%>
                <input type="radio" name="Vote" value="<%out.println(session.getAttribute("c1"));%>">
                <span class="checkmark"></span>
              </label>
            
            
            <label class="container"><%out.println(session.getAttribute("c2"));%>
                <input type="radio" name="Vote" value="<%out.println(session.getAttribute("c2"));%>">
                <span class="checkmark"></span>
              </label>
               
            <label class="container"><%out.println(session.getAttribute("c3"));%>
                <input type="radio" name="Vote" value="<%out.println(session.getAttribute("c3"));%>">
                <span class="checkmark"></span>
              </label>
            
             <label class="container"><%out.println(session.getAttribute("c4"));%>
                 <input type="radio" name="Vote" value="<%out.println(session.getAttribute("c4"));%>">
                <span class="checkmark"></span>
              </label>
            <br><br><br><br><br>
            
            <input type="submit" value="SUBMIT VOTE" class='submit button1' onclick="confirm('ARE YOU SURE')">&nbsp;&nbsp;&nbsp;
            
            <input type="reset" value="RESET" class="submit button1" onclick="alert('VOTING is RESETED')">
        </form>
    </center>
    </body>
</html>
