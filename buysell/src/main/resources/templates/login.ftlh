<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            font-size: 36px;
            margin: 20px 0;
            text-align: center;
        }

        h3 {
            font-size: 24px;
            margin: 10px 0;
        }

        form {
            display: flex;
            margin: 20px 0;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        input[type="email"],
        input[type="password"],
        input[type="submit"] {
            font-size: 18px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin: 10px 0;
            width: 30%;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            cursor: pointer;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<h3>Log in</h3>
<form action="/login" method="post">
    Email: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="ENTER">
</form>
<br>
<a href="/registration">Registration</a>
</body>
</html>