<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
    String name=(String) request.getAttribute("name");
    String email=(String) request.getAttribute("email");
    
    if(email == null){
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>

<style>
body{
    margin:0;
    font-family:Arial, sans-serif;
    background: linear-gradient(120deg,#2980b9,#6dd5fa);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.card{
    background:white;
    width:400px;
    padding:30px;
    border-radius:12px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
    text-align:center;
}

.profile-icon{
    font-size:60px;
    margin-bottom:10px;
}

h2{
    margin-bottom:20px;
}

.info{
    text-align:left;
    margin:15px 0;
    padding:10px;
    background:#f4f6f9;
    border-radius:6px;
}

.label{
    font-weight:bold;
    color:#555;
}

.value{
    font-size:16px;
}

.buttons{
    margin-top:20px;
}

.btn{
    padding:10px 18px;
    border:none;
    border-radius:6px;
    margin:5px;
    cursor:pointer;
    text-decoration:none;
    color:white;
}

.dashboard{
    background:#2980b9;
}

.logout{
    background:#e74c3c;
}

.btn:hover{
    opacity:0.9;
}
</style>

</head>
<body>

<div class="card">

    <div class="profile-icon">👤</div>
    <h2>User Profile</h2>

    <div class="info">
        <div class="label">Name:</div>
        <div class="value"><%=name %></div>
    </div>

    <div class="info">
        <div class="label">Email:</div>
        <div class="value"><%=email %></div>
    </div>

    <div class="buttons">
        <a href="dashboard.jsp" class="btn dashboard">Dashboard</a>
        <a href="logout" class="btn logout">Logout</a>
    </div>

</div>

</body>
</html>
