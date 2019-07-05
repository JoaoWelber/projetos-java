 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>HTML and CSS Form with Bootstrap 4</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style type="text/css">
    body {
        background:#0080FF;
    }
    .wrapper {
        margin: 100px;
    }
    
    .form-signin {
        max-width: 360px;
        margin: 0 auto; /*will center the content*/
        background-color:#eee;
        padding: 15px 40px 60px;
        border: 1px solid #e5e5e5;
        border-radius: 10px;
    }
    
    .form-signin .form-signin-heading, .form-signin .checkbox {
        margin-bottom: 20px;
    }
    
    .form-signin .checkbox {
        margin-top: 10px;
    }
    
    .form-signin input[type="text"], .form-sign input[type="password"] {
        margin-bottom: 20px;
    }
    
    .form-sign .form-control {
        padding: 10px;
       
    }
    
    .conteudo-link {
        padding: 10px;
        float: left;
    }

    a {
        text-decoration: none;
    }
    
    a:link {
       color: #2E64FE; 
    }
    
    a:visited {
        color: #2E64FE;
    }
    
    a:hover {
        color: #58ACFA;
    }
    
</style>
</head>
<body>

<body>
    <div>
    <h3 style="color:red">${message}</h3>
    <h3 style="color:red">${successMessage}</h3>
    </div>>

<div class="wrapper"><!-- to wrap our login form -->

 <!-- o indiano colocou 
            <table>
             <tr>
                <td>${message}</td>
                <td>${successMessage}</td>
             </tr>
             </table>
             obs: posso colocar fora do form dentro do body mas a mensagem dentro de uma div e mudar a cor dela
            -->

  <form class="form-signin" action="LoginRegister" method="post">
  
    <h2 class="form-signin-heading text-center">Login</h2>
      
    <input type="text" class="form-control" name="text" placeholder="username" required="" autofocus="" autocomplete=""/>
      
    <input type="password" class="form-control" name="password1" placeholder="password" required="" autofocus="" /> 
      
      <label class="checkbox">
          
      <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe" >
          Remember Me
      </label>
      
      <button class="btn btn-lg btn-primary btn-block" type="submit" name="login" value="login">Login</button>
       
             <div style="float: left; padding: 3px">Don't have an account ? </div>
             
             <div style="float: left; padding: 3px"><a href="register.jsp">Registration</a></div>
      
    </form>
    
    </div>

</body>
</html>