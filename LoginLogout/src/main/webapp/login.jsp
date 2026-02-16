<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
body{
    margin:0;
    font-family: Arial;
    background: linear-gradient(120deg,#2980b9,#6dd5fa);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.card{
    background:white;
    padding:30px;
    border-radius:10px;
    width:320px;
    box-shadow:0 0 15px rgba(0,0,0,0.2);
    text-align:center;
}

input{
    width:90%;
    padding:10px;
    margin:10px 0;
    border-radius:5px;
    border:1px solid #ccc;
}

button{
    width:100%;
    padding:10px;
    background:#2980b9;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

button:hover{
    background:#1c5985;
}

a{
    text-decoration:none;
    color:#2980b9;
}
</style>

</head>
<body>

<div class="card">
<h2>Login</h2>

<form action="login" method="post">
    <input type="text" name="email" placeholder="Enter Email">
    <input type="password" name="password" placeholder="Enter Password">
    <button type="submit">Login</button>
</form>

<p>New user? <a href="register.jsp">Register</a></p>

</div>

</body>
</html>
