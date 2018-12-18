<%-- 
    Document   : ClientPage
    Created on : 11 déc. 2018, 15:47:58
    Author     : MANON J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
    <body>
        <header class="header">	
            <div class="name">	
                <a style="text-decoration:none; color:white;">Nom Site</a> 
            			
                <div class="Deconnexion">
                    <form method="POST" >
                            <input type="submit" name="action" value="Déconnexion" class="btn btn-primary" >
                    </form>
                </div>
            </div>
	</header>
        <h1 id="titre">Client</h1>
        
        
        
        
        
        <div class="container">
  <!--<h2>Dynamic Tabs</h2>-->
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Données personel</a></li>
    <li><a data-toggle="tab" href="#menu1">Commande en cours</a></li>
    <li><a data-toggle="tab" href="#menu2">Ancienne commande</a></li>
    <!--<li><a data-toggle="tab" href="#menu3">Menu 3</a></li>-->
  </ul>
<!--  <nav>
      <div class="nav nav-tabs" id="nav-tab" role="tablist">
          <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#menu1" role="tab" aria-controls="nav-home" aria-selected="true">Données perso</a>
          <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#menu2" role="tab" aria-controls="nav-profile" aria-selected="false">Commande en cours</a>
          <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#menu3" role="tab" aria-controls="nav-contact" aria-selected="false">Ancienne commande</a>
       </div>
   </nav>-->

  <div class="tab-content">
      <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      
      <form method="POST">
                              <div class="form-group">
                                <label for="inputEmail4">Email</label>
                                <!--contenteditable="true" permet de rendre la zone modifiable-->
                                <p contenteditable="true" type="email" class="form-control" id="inputEmail4" placeholder="Email">kg.gh@hhh.vl</p>
                              </div> 
                              <div class="form-row">
                                <div class="form-group col-md-6">
                                  <label for="inputName">Nom</label>
                                  <p contenteditable="true" class="form-control" id="inputName">Joffres</p>
                                </div>

                                <div class="form-group col-md-6">
                                  <label for="inputName">Prénom </label>
                                  <p contenteditable="true" class="form-control" id="inputFirstName">Manon</p>
                                </div>
                              </div>

                            <div class="form-group">
                              <label for="inputAddress">Addresse</label>
                              <p contenteditable="true" class="form-control" id="inputAddress">1234 Main St</p>
                            </div>

                            <div class="form-row">
                              <div class="form-group col-md-6">
                                <label for="inputCity">Ville</label>
                                <p contenteditable="true" class="form-control" id="inputCity">Albi</p>
                              </div>
                              <div class="form-group col-md-4">
                                <label for="inputState">Etat</label>
                                <p contenteditable="true" class="form-control" id="inputState">France</p>
                              </div>
                              <div class="form-group col-md-2">
                                <label for="inputZip">Zip</label>
                                <p contenteditable="true" class="form-control" id="inputZip">81000</p>
                              </div>
                            </div>
                            <input type="submit" name="action" value="Modifier" class="btn btn-primary btn-lg btn-block"/>
                        </form>
      
      </div>
    
    <div id="menu1" class="tab-pane fade">
      
    </div>
      
    <div id="menu2" class="tab-pane fade">
    <!--</div>-->
  </div>
</div>
        
        
        
        
        
        
        
        
        
        
<!--        <div class="container">
            <div class="col-xs-12">      
                
                 <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                      <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Données perso</a>
                      <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Commande en cours</a>
                      <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Ancienne commande</a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    
                    Home
                    class="tab-pane fade show active" pour afficher l'onglet
                    <div class="tab-pane fade show active " id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">                    
                        <form method="POST">
                              <div class="form-group">
                                <label for="inputEmail4">Email</label>
                                contenteditable="true" permet de rendre la zone modifiable
                                <p contenteditable="true" type="email" class="form-control" id="inputEmail4" placeholder="Email">kg.gh@hhh.vl</p>
                              </div> 
                              <div class="form-row">
                                <div class="form-group col-md-6">
                                  <label for="inputName">Nom</label>
                                  <p contenteditable="true" class="form-control" id="inputName">Joffres</p>
                                </div>

                                <div class="form-group col-md-6">
                                  <label for="inputName">Prénom </label>
                                  <p contenteditable="true" class="form-control" id="inputFirstName">Manon</p>
                                </div>
                              </div>

                            <div class="form-group">
                              <label for="inputAddress">Addresse</label>
                              <p contenteditable="true" class="form-control" id="inputAddress">1234 Main St</p>
                            </div>

                            <div class="form-row">
                              <div class="form-group col-md-6">
                                <label for="inputCity">Ville</label>
                                <p contenteditable="true" class="form-control" id="inputCity">Albi</p>
                              </div>
                              <div class="form-group col-md-4">
                                <label for="inputState">Etat</label>
                                <p contenteditable="true" class="form-control" id="inputState">France</p>
                              </div>
                              <div class="form-group col-md-2">
                                <label for="inputZip">Zip</label>
                                <p contenteditable="true" class="form-control" id="inputZip">81000</p>
                              </div>
                            </div>
                            <input type="submit" name="action" value="Modifier" class="btn btn-primary btn-lg btn-block"/>
                        </form>
                    </div>
                    Bon de commande
                    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">...</div>
                    Ancien bon de commande
                    <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">...</div>
                </div>
            </div>
        </div>-->
    </body>

</html>
