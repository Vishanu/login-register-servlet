<%
String user = (String) session.getAttribute("user");
String email = (String) session.getAttribute("email");

if(user == null){
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<style>
body{
    margin:0;
    font-family:Arial;
    background:#f4f6f9;
}

.nav{
    background:#2980b9;
    padding:15px;
    color:white;
    display:flex;
    justify-content:space-between;
}

.container{
    padding:40px;
    text-align:center;
}

.card{
    background:white;
    padding:30px;
    border-radius:10px;
    display:inline-block;
    box-shadow:0 0 10px rgba(0,0,0,0.1);
}

button{
    padding:10px 20px;
    background:red;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}
</style>

</head>
<body>

<div class="nav">
    <div>Welcome, <b><%=user%></b></div>
    <a href="profile" style="color:white; margin-right:15px;">My Profile</a>
    <div><a href="logout" style="color:white;">Logout</a></div>
</div>

<div class="container">

    <div class="card">
        <h2>Dashboard</h2>
        <p>Email: <b><%=email%></b></p>
        <p>You are successfully logged in 🎉</p>
    </div>

</div>

</body>
</html>
