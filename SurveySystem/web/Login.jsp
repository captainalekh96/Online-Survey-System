<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
        <style>
        body {
          background-image: url('Ba.jpg');
          background-repeat: no-repeat;
          background-size: cover;
        }
        
        </style>
        </head>

<body> 
    
    <br><br><br>
    <center><h1>Login</h1>

    <form name="Login" action="LoginConfirm.jsp">

       <b>Username: <input type="text" placeholder="Username" name="username"><br><br></b>

        <b>Password: <input type="password" placeholder="Password" name="password" minlength="8"><br><br></b>
        <input type="submit" value="SignIn">&nbsp; &nbsp;
        <input type="reset" value="Reset"><br><br>
    </form>
    <form action="Register.jsp">
    <input type="submit" value="Register">
     </form>
    </center>
</body>
</html>