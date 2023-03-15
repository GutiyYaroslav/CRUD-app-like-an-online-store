<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
        }

        h1, h3 {
            text-align: center;
            color: #333;
        }

        hr {
            border: none;
            height: 1px;
            background-color: #333;
            margin: 20px 0;
        }

        form {
            width: 50%;
            margin: auto;
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="checkbox"] {
            margin-right: 10px;
        }

        button[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            border-radius: 3px;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h3>Edit user: ${user.name}</h3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit">Save</button>
</form>

</body>
</html>