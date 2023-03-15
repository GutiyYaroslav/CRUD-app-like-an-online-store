<!doctype html>
<html lang="en">
<head>

    <title>Products</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        hr {
            border: none;
            height: 1px;
            background-color: #ccc;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        form {
            margin-top: 20px;
        }

        input[type="text"], input[type="number"], input[type="file"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #3e8e41;
        }

        h3 {
            margin-top: 30px;
        }

        p {
            margin-bottom: 5px;
        }

        a {
            color: #4CAF50;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<hr>

<#if user?? && user.name??>
    <h3>Username:  <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Log out">
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Admin page</a>
    </#if>
<#else>
    <a href="/login">Log in</a>
</#if>

<hr>
<h4>Products from whole WORLD</h4>
<form action="/" method="get">
    Search by title: <input type="text" name="title"/><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price}$ | <a href="/product/${product.id}">Details</a></p>
    </div>
    <#else>
    <h3>There aren't any products</h3>
</#list>
<#if user?? && user.name??>
<hr>
<h3>Create new product</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Product's title: <input type="text" name="title"/><br><br>
    Product's description: <input type="text" name="description"/><br><br>
    Product's price: <input type="number" name="price"/><br><br>
    City: <input type="text" name="city"/><br><br>
    First image: <input type="file" name="file1"/><br><br>
    Second image: <input type="file" name="file2"/><br><br>
    Third image: <input type="file" name="file3"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Create product"/>
</form>
</#if>
</body>
</html>