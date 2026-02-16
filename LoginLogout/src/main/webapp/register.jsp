<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<style>
body{
    margin:0;
    font-family: Arial;
    background: linear-gradient(120deg,#f12711,#f5af19);
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
    background:#f12711;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

button:hover{
    background:#c61c0e;
}

a{
    text-decoration:none;
    color:#f12711;
}
</style>

</head>
<body>

<div class="card">
<h2>Create Account</h2>

<form action="register" method="post">
    <input type="text" name="name" placeholder="Enter Name">
    <input type="text" name="email" placeholder="Enter Email">
    <input type="password" name="password" placeholder="Enter Password">
    <button type="submit">Register</button>
</form>

<p>Already have account? <a href="login.jsp">Login</a></p>

</div>

</body>
</html>
