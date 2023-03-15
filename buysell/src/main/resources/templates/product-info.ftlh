<!doctype html>
<html lang="en">
<head>

    <title>Product info</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        h4 {
            margin-top: 30px;
        }

        img {
            display: block;
            margin: auto;
            max-width: 100%;
            height: auto;
            margin-bottom: 20px;
        }

        b {
            display: inline-block;
            width: 100px;
            margin-bottom: 10px;
            font-weight: normal;
        }

        a {
            color: #4CAF50;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<h4>Details</h4>
<#list images as img>
    <img src="/images/${img.id}" height="100px"><br><br>
</#list>
<b>Title: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
<b>Number: </b>${product.user.phoneNumber}<br>


</body>
</html>