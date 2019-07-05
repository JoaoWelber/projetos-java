<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Registro de conta</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style type="text/css">
    
    body {
        background: #0080FF;
    }
    
    .wrapper {
        margin: 100px;
    }
    
    .RegisterForm {
        max-width: 360px;
        margin: 0 auto; /*will center the content*/
        background-color: #eee;
        padding: 15px 40px 60px;
        border: 1px solid #e5e5e5;
        border-radius: 10px;
        
    }
    
    .RegisterForm .form-register-heading {
        margin-bottom: 25px;
    }
    
    .RegisterForm input[type="text"], .RegisterForm input[type="email"], .RegisterForm input[type="password"] {
        margin-bottom: 20px;
    }
    
    .RegisterForm .form-control {
        padding: 10px;
    }
    
    
</style>
</head>
    <body>
    <div>
    <h3 style="color:red">${successMessage}</h3>
    </div>>
        <div class="wrapper"> 
            
        <form class="RegisterForm" action="LoginRegister" method="post">
            
            <h2 class="form-register-heading text-center">REGISTER</h2>
            
            <!-- o indiano colocou 
            <table>
             <tr>
                <td>${message}</td>
                <td>${successMessage}</td>
             </tr>
             </table>
             obs: posso colocar fora do form dentro do body mas a mensagem dentro de uma div e mudar a cor dela
            -->
            
            <input type="text" class="form-control" name="name" placeholder="Name" required="" autofocus="" />
            
            <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
            
            <input type="email" class="form-control" name="email" placeholder="Email Address" required="" autofocus="" />
            
            <input type="password" class="form-control" name="password1" placeholder="Password" required="" autofocus="" />
            
            <input type="password" class="form-control" name="password2" placeholder="Retype Password" required="" autofocus="" />
            
            <p></p>
            
            <button class="btn btn-lg btn-primary btn-block" type="submit" name="register" value="Register">Register</button>                   
            
            </form>
        
        </div>
    
    </body>
</html>