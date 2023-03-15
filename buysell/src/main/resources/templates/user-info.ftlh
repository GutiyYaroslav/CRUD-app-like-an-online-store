<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
        }

        h1, h2, h3 {
            text-align: center;
            color: #333;
        }

        hr {
            border: none;
            height: 1px;
            background-color: #333;
            margin: 20px 0;
        }

        b {
            font-weight: bold;
        }

        p {
            margin: 0;
        }

        a {
            color: #333;
        }

        div {
            border: 1px solid #ccc;
            background-color: #fff;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
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
<h2>Author's details : ${user.name}</h2>
<b>Phone number: </b>${user.phoneNumber}<br>
<b>Email: </b>${user.email}<br>
<h3>Author's products: ${user.name}</h3>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price}$ | <a href="/product/${product.id}">Details</a></p>
    </div>
    <#else>
    <h3>There are not any products</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>

</body>
</html>