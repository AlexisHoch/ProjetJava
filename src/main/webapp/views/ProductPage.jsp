<%-- 
    Document   : ProductPage
    Created on : 5 déc. 2018, 16:34:49
    Author     : MANON J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>JSP Page</title>
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
        
        header .Deconnexion{
                float:right;
                margin-top:-2px;
                padding-right:10px;
                 
                
        }

        .Deconnexion input{
                color:white;
                width:100%;
                display: inline-block;
                text-align: center;
                font-size : 15px;
        }
    </style>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>

    <body>
        
        <header class="header">	
			
				<div class="name">									
						<a style="text-decoration:none; color:white;">
							Nom Site
						</a>	
                                    <div class="Deconnexion">
                                        <form method="POST" >
                                                <input type="submit" name="action" value="Déconnexion" class="btn btn-primary" >
                                        </form>
                                    </div>
                                </div>
				
	</header>
        
        <h1 id="titre">Produit</h1>
        
<!--        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                  <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Special title treatment</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <form method="POST">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                <input id="balloons" type="number" name="quantity"  min="0"  placeholder="quantity">
                                </div>
                                <div class="form-group col-md-6">
                                <input type="submit" name="action" value="Ajouter au panier" class="btn btn-primary "/>
                                </div>
                            </div>
                        </form>
                        <p>25.5€</p>
                      </div>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Special title treatment</h5>
                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                      <form method="POST">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                <input id="balloons" type="number" name="quantity"  min="0"  placeholder="quantity">
                                </div>
                                <div class="form-group col-md-6">
                                <input type="submit" name="action" value="Ajouter au panier" class="btn btn-primary "/>
                                </div>
                            </div>
                        </form>
                      <p>25.5€</p>
                    </div>
                  </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                  <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Special title treatment</h5>
                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <form method="POST">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                <input id="balloons" type="number" name="quantity"  min="0"  placeholder="quantity">
                                </div>
                                <div class="form-group col-md-6">
                                <input type="submit" name="action" value="Ajouter au panier" class="btn btn-primary "/>
                                </div>
                            </div>
                        </form>
                      <p>25.5€</p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Special title treatment</h5>
                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <form method="POST">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                <input id="balloons" type="number" name="quantity"  min="0"  placeholder="quantity">
                                </div>
                                <div class="form-group col-md-6">
                                <input type="submit" name="action" value="Ajouter au panier" class="btn btn-primary "/>
                                </div>
                            </div>
                        </form>
                      <p>25.5€</p>
                    </div>
                  </div>
                </div>
            </div>
        </div>-->
        <div class="container">
        <table class="table">
            <thead class="thead-dark">
              <tr>
                
                <th scope="col">Produit</th>
                <th scope="col">Description</th>
                <th scope="col">Prix</th>
                <th scope="col"></th>
                <th scope="col"></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Titre</td>
                <td>Identity Server</td>
                <td>1095.00</td>
                <td> 
                    <form method="POST">
                    <input type="submit" name="action" value="Ajouter au panier" class="btn btn-primary "/>
                    </form>
                8000 en stock                    
                </td>
                <td>
                    <form>
                        <input id="moins" type="button" value="-" />
                        <input id ="result" type="number" value="5" maxlength="2" />
                        <input id="plus" type="button" value="+" />
                    </form>
                </td>
              </tr>
              <tr>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>59.95</td>
                <td>
                    <form method="POST">
                    <input type="submit" name="action" value="Ajouter au panier" class="btn btn-primary "/>
                    </form>
                8000 en stock
                </td>
                <td>
                    <form>
                        <input id="moins" type="button" value="-" />
                        <input id ="result" type="texte" value="5" maxlength="2" />
                        <input id="plus" type="button" value="+" />
                    </form>
                </td>
              </tr>
              <tr>
                <td>Larry</td>
                <td>the Bird</td>
                <td>15.98</td>
                <td>
                    <form method="POST">
                    <input type="submit" name="action" value="Ajouter au panier" class="btn btn-primary "/>
                    </form>
                8000 en stock
                </td>
                <td>
                    <form>
                        <input id="moins" type="button" value="-" />
                        <input id ="result" type="texte" value="5" maxlength="2" />
                        <input id="plus" type="button" value="+" />
                    </form>
                </td>
              </tr>
              <tr>
                <td>Larry</td>
                <td>the Bird</td>
                <td>15.98</td>
                <td>
                    <form method="POST">
                    <input type="submit" name="action" value="Ajouter au panier" class="btn btn-primary "/>
                    </form>
                8000 en stock
                </td>
                <td>
                    <form>
                        <input id="moins" type="button" value="-" />
                        <input id ="result" type="texte" value="5" maxlength="2" />
                        <input id="plus" type="button" value="+" />
                    </form>
                </td>
              </tr>
              <tr>
                <td>Larry</td>
                <td>the Bird</td>
                <td>15.98</td>
                <td>
                    <form method="POST">
                    <input type="submit" name="action" value="Ajouter au panier" class="btn btn-primary "/>
                    </form>
                8000 en stock
                </td>
                <td>
                    <form>
                        <input id="moins" type="button" value="-" />
                        <input id ="result" type="texte" value="5" maxlength="2" />
                        <input id="plus" type="button" value="+" />
                    </form>
                </td>
              </tr>
              
            </tbody>
          </table>

          
        </div>
        
    </body>
</html>
