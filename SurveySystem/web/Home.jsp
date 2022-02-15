<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Survey System</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Parisienne|Quicksand&display=swap');
 
	body {
          background-image: url('Hoba.jpg');
          background-repeat: no-repeat;
          background-size: cover;
        }
		



.header-bar {
	position: relative;
	width: 100%;
	min-width: 300px;
	height: 50px;
	border: 10px solid transparent;
	border-top: 10px solid rgb(12, 12, 12);
	border-left: 10px solid rgb(0, 0, 0);
	background-image: linear-gradient(to bottom right, rgb(245, 245, 245), rgb(233, 233, 233), rgb(243, 240, 242), rgb(245, 240, 243), rgb(240, 240, 240))
}
.header-bar::after {
	content: '';
	position: absolute;
	top: -10px;
	right: -10px;
	width: 50%;
	height: 49px;
	border: 10px solid transparent;
	border-bottom: 10px solid rgb(8, 8, 8);
	border-right: 10px solid rgb(0, 0, 0);
	transition: 0.3s linear all;
}

.slider-menu {
	position: absolute;
	top: 0;
	right: 0;
	display: flex;
	list-style-type: none;
	margin: 0;
	padding: 0;
	z-index: 1;
}
.slider-menu > li {
	display: inline-flex;
	padding: 14px;
	margin-left: 2px;
	font-family: 'Quicksand', sans-serif;
	color: #fff;
	cursor: pointer;
	transition: 0.3s linear all;
	user-select: none;
}

.aeu-signature {
	position: fixed;
	top: 5px;
	left: 50%;
	transform: translate(-50%);
	font-size: 15px;
	line-height: 30px;
	background-color: #fff;
	padding: 5px 10px;
	border-radius: 25px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
}
.Link{
    color: #000000;
    font: bold;
    text-decoration: none;
}
.submit {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 50px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 25px;
  margin: 4px 2px;
  cursor: pointer;
}
.button1 {border-radius: 24px;}
    </style>
</head>
<body>
    <div class="Head">
        <left><header>
            <div class="header-bar">
		
                <ul class="slider-menu">
                    <li><a href="Home.html" class="Link" >HOME</a></li>
                    <li><a href="Login.jsp" class="Link">LOGIN</a></li>
                    <li><a href="Register.jsp" class="Link">REGISTER</a></li>
                    <li><a href="Vote.jsp" class="Link">VOTE</a></li>
                    <li><a href="Contact.jsp" class="Link">CONTACT</a></li>
                    <li><a href="About.jsp" class="Link">ABOUT</a></li>
                </ul>
            </div>
        
            <hr>
        </header></left>
    </div>
    <br><br><br>
    <img src="Home.png" alt="Online Survey SYSTEM" width="700">
<center><form action="Login.jsp">
        <input type="submit" class="submit button1" Value="Create Survey"><br><br>
    </form>
    <form action="Vote.jsp">
        <input type="submit" class="submit button1" Value="VOTE"><br><br>
    </form>
    
</center>
</body>
</html>