<%-- 
    Document   : CreateComptePage
    Created on : 28 nov. 2018, 16:39:42
    Author     : pedago
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            /*border-bottom: 2px solid tomato;*/ 		
            background: black;   
            z-index: 4;
          }
          
       .name {			
            /*text-align: center;*/ 
            font-size : 30px;
            /*line-height: 3;*/
            font-style: italic;
            font-weight: bold;
        }    
    </style>
    <body>
        
        <header class="header">	
            <div class="name">	
                <a style="text-decoration:none; color:white;">Nom Site</a>					
            </div>				
	</header>
        <h1 id="titre">Hello World!</h1>
        <div class="container">
            <div class="col-xs-12">
                <form>

                      <div class="form-group">
                        <label for="inputEmail4">Email</label>
                        <input type="email" class="form-control is-valid" id="inputEmail4" placeholder="Email">
                      </div> 


                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="inputPassword4">Password</label>
                        <input type="password" class="form-control is-invalid" id="inputPassword4" placeholder="Password">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="inputPassword4">Password</label>
                        <input type="password" class="form-control is-invalid" id="inputPassword4" placeholder="Password">
                      </div>
                    </div>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">First and last name</span>
                      </div>
                      <input type="text" aria-label="First name" class="form-control">
                      <input type="text" aria-label="Last name" class="form-control">
                    </div>
                    <div class="form-group">
                      <label for="inputAddress">Address</label>
                      <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                    </div>

                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="inputCity">City</label>
                        <input type="text" class="form-control" id="inputCity">
                      </div>
                      <div class="form-group col-md-4">
                        <label for="inputState">State</label>
                        <select id="inputState" class="form-control">
                          <option selected>Choose...</option>
                          <option>...</option>
                        </select>
                      </div>
                      <div class="form-group col-md-2">
                        <label for="inputZip">Zip</label>
                        <input type="text" class="form-control" id="inputZip">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="gridCheck">
                        <label class="form-check-label" for="gridCheck">
                          Check me out
                        </label>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Sign in</button>
                </form>
            </div>
        </div>
    </body>
</html>
