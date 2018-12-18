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
        padding: 5px;
        width: 700px;
        height: auto;

        margin : 50px auto auto;
        }
        
        form button{
        width:100%;
        }

        #titre{
            text-align: center;
            margin-top: 60px;
        }       
        
        .header {  
            position:fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 50px;		
            background: black;   
            z-index: 4;
          }
          
       .name {			 
            font-size : 30px;
            font-style: italic;
            font-weight: bold;
        }
        .cont{
            padding: 5px;
            width: 900px;
            height: auto;

            margin : 50px auto auto;
        }
        tr{
            text-align: center;
        }
        #result{
            width: 30px;
        }
        
    </style>
    <body>
        <h1 id="titre">Connectez-vous!</h1>
        
        

        <form action="http://localhost:8080/ProjetJava/Servlet_Login" method="POST" class="container" >

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
                    <input type="submit" name="action" value="Connexion" class="btn btn-primary btn-lg btn-block"/>
                    <input type="submit" name="action" value="Creer_un_compte" class="btn btn-primary btn-lg btn-block"/>  
            </form>
       
    </body>
</html>
