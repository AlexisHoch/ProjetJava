<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <style>
        .container{
            width: 700px;
            margin:  75px auto auto;
            padding: 5px;
            height: auto;
        }
        
    </style>
    <body>
        <h1 id="titre">Hello World! Connectez-vous!</h1>
        
        

            <form class="container" >

                <div class="form-group">
                    <div class="form-group">
                      <label for="inputEmail4">Email</label>
                      <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
                    </div>
                    </br>
                    <div class="form-group">
                      <label for="inputPassword4">Password</label>
                      <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-lg btn-block" id="connexion">Connexion</button>
                </br>
                <button type="submit" class="btn btn-primary btn-lg btn-block" id="creerCompt">Créer un compte</button>
            </form>

    </body>
</html>
