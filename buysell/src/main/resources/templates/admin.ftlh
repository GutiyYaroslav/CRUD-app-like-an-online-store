<!doctype html>
<html lang="en">
<head>

    <title>Products</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
        }

        h1, h3 {
            text-align: center;
            color: #333;
        }

        table {
            margin: auto;
            border-collapse: collapse;
            border: 1px solid #333;
            width: 80%;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #333;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        form {
            display: inline-block;
        }

        input[type=submit] {
            background-color: #333;
            color: #fff;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            border-radius: 3px;
        }

        a {
            color: #333;
            text-decoration: none;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<h3>Admin page</h3>
<table>
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Status active</th>
        <th>Roles</th>
        <th>BAN</th>
        <th>Edit</th>
        <th>User's details</th>
    </tr>
    <#list users as user>
    <tr>
        <td>${user.email}</td>
        <td>${user.phoneNumber}</td>
        <td><#if user.active>true<#else>false</#if></td>
        <td><#list user.roles as role>${role}</#list></td>
        <td>
            <form action="/admin/user/ban/${user.id}" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" value="BAN">
            </form></td>
        <td><a href="/admin/user/edit/${user.id}">Edit</a></td>
        <td><a href="/user/${user.id}">Details</a></td>
    </tr>

        <#else>
        <h3>There aren't any users</h3>
    </#list>
</table>



</body>
</html>