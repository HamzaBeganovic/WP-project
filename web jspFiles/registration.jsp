<%-- 
    Document   : registration
    Created on : Nov 23, 2021, 1:29:13 PM
    Author     : Hamza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <style>
            
     body {
        margin: 0;
        padding: 0;
        font-family: sans-serif;
        background: lightblue;
    }

    .card {
        margin-bottom: 20px;
        border: none
    }

    .box {
        width: 500px;
        padding: 40px;
        position: absolute;
        top: 50%;
        left: 50%;
        background: #191919;;
        text-align: center;
        transition: 0.25s;
        margin-top: 100px;
        border-top-left-radius: 30px;
        border-top-right-radius: 30px;
        border-bottom-left-radius: 30px;
        border-bottom-right-radius: 30px;
    }

    .box input[type="text"],
    .box input[type="password"] {
        border: 0;
        background: none;
        display: block;
        margin: 20px auto;
        text-align: center;
        border: 2px solid #3498db;
        padding: 10px 10px;
        width: 250px;
        outline: none;
        color: white;
        border-radius: 24px;
        transition: 0.25s
    }

    .box h1 {
        color: white;
        text-transform: uppercase;
        font-weight: 500
    }

    .box input[type="text"]:focus,
    .box input[type="password"]:focus {
        width: 300px;
        border-color: #2ecc71
    }

    .box input[type="submit"] {
        border: 0;
        background: none;
        display: block;
        margin: 20px auto;
        text-align: center;
        border: 2px solid #2ecc71;
        padding: 14px 40px;
        outline: none;
        color: white;
        border-radius: 24px;
        transition: 0.25s;
        cursor: pointer
    }

    .box input[type="submit"]:hover {
        background: #2ecc71
    }

    .forgot {
        text-decoration: underline
    }


        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <form action="Registration" method="POST" class="box">
                           
                            <h1>Sign in</h1>
                            <p class="text-muted"> Please enter your registration data!</p> 
                            <input type="text" id="username" name="username" placeholder="Username"> 
                            <input type="password" id="password" name="password" placeholder="Password"> 
                            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm password">
                            <input type="text" id="address" name="address" placeholder="Address">
                            <input type="submit" id="address" name="address" value="Create Account" href="#">
                            </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
