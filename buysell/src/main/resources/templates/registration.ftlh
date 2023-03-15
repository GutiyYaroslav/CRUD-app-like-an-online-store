<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f1f1;
        }

        h1 {
            text-align: center;
            background-color: #333;
            color: white;
            padding: 10px;
            margin-top: 0;
        }

        h3 {
            margin-top: 30px;
        }

        form {
            background-color: white;
            padding: 20px;
            max-width: 500px;
            margin: 0 auto;
            border-radius: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
        }

        input[type="text"], input[type="email"], input[type="number"], input[type="password"], input[type="submit"] {
            display: block;
            margin-bottom: 10px;
            padding: 10px;
            width: 100%;
            border: none;
            border-radius: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
        }

        input[type="submit"] {
            background-color: #333;
            color: white;
            cursor: pointer;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 10px;
        }

        h2 {
            text-align: center;
            color: red;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h3>Registration</h3>
<form action="/registration" method="post">
    Name: <input type="text" name="name"><br><br>
    Email: <input type="email" name="email"><br><br>
    Phone number: <input type="number" name="phoneNumber"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Registration">
</form>
<br>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
<br>
<a href="/login">Log in</a>
</body>
</html>