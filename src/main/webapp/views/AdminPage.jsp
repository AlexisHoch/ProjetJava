<%-- 
    Document   : AdminPage
    Created on : 11 déc. 2018, 15:48:09
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
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script>
              google.charts.load('current', {'packages':['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {

              var data = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],
                ['Work',     11],
                ['Eat',      2],
                ['Commute',  2],
                ['Watch TV', 2],
                ['Sleep',    7]
              ]);

              var options = {
                title: 'My Daily Activities'
              };

              var chart = new google.visualization.PieChart(document.getElementById('piechart'));

              chart.draw(data, options);
            }
        </script>       
        <script type="text/javascript">
          google.charts.load('current', {'packages':['corechart']});
          google.charts.setOnLoadCallback(drawChart);

          function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Year', 'Sales', 'Expenses'],
              ['2004',  1000,      400],
              ['2005',  1170,      460],
              ['2006',  660,       1120],
              ['2007',  1030,      540]
            ]);

            var options = {
              title: 'Company Performance',
              curveType: 'function',
              legend: { position: 'bottom' }
            };

            var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

            chart.draw(data, options);
          }
        </script>
        
        <script>
            google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawAnnotations);

function drawAnnotations() {
      var data = new google.visualization.DataTable();
      data.addColumn('timeofday', 'Time of Day');
      data.addColumn('number', 'Motivation Level');
      data.addColumn({type: 'string', role: 'annotation'});
      data.addColumn('number', 'Energy Level');
      data.addColumn({type: 'string', role: 'annotation'});

      data.addRows([
        [{v: [8, 0, 0], f: '8 am'},   1, '1',  .25, '.2'],
        [{v: [9, 0, 0], f: '9 am'},   2, '2',   .5, '.5'],
        [{v: [10, 0, 0], f:'10 am'},  3, '3',    1,  '1'],
        [{v: [11, 0, 0], f: '11 am'}, 4, '4', 2.25,  '2'],
        [{v: [12, 0, 0], f: '12 pm'}, 5, '5', 2.25,  '2'],
        [{v: [13, 0, 0], f: '1 pm'},  6, '6',    3,  '3'],
        [{v: [14, 0, 0], f: '2 pm'},  7, '7', 3.25,  '3'],
        [{v: [15, 0, 0], f: '3 pm'},  8, '8',    5,  '5'],
        [{v: [16, 0, 0], f: '4 pm'},  9, '9',  6.5,  '6'],
        [{v: [17, 0, 0], f: '5 pm'}, 10, '10',  10, '10'],
      ]);

      var options = {
        title: 'Motivation and Energy Level Throughout the Day',
        annotations: {
          alwaysOutside: true,
          textStyle: {
            fontSize: 14,
            color: '#000',
            auraColor: 'none'
          }
        },
        hAxis: {
          title: 'Time of Day',
          format: 'h:mm a',
          viewWindow: {
            min: [7, 30, 0],
            max: [17, 30, 0]
          }
        },
        vAxis: {
          title: 'Rating (scale of 1-10)'
        }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
        .admin{
            margin-top:80px;
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
        <h1 id="titre">Compte administrateur</h1>
        
        <!--<div id="piechart" style="width: 400px; height: 200px;"></div>-->
<!--        <table class="table">
            <thead>
              <tr>
                <th scope="col">g1</th>
                <th scope="col">g2</th>
                <th scope="col">g3</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td scope="col">g1</td>
                <td scope="col">g2</td>
                <td scope="col">g3</td>
              </tr>
              <tr>
                   
                  <td><div id="piechart" style="width: 400px; height: 200px;"></div></td>
                  <td><div id="curve_chart" style="width: 400px; height: 200px"></div></td>
                  <td><div id="chart_div" style="width: 400px; height: 200px"></div></td>
              </tr>
              
            </tbody>
          </table>-->
        
       
        
       
       
<!--       <div class="panel-group">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#collapse1">Ajouter un produit</a>
                </h4>
              </div>
              <div id="collapse1" class="panel-collapse collapse">
                <div class="panel-body">
                <label for="identifiant">Identifiant</label>
                <input class="form-control" id="identifiant" value="1">
                <label for="Product_id">Product_id</label>
                <input class="form-control" id="Product_id" value="98001">
                <label for="Manufacturer_id">Manufacturer_id</label>
                <input class="form-control" id="Manufacturer_id" value="19985678">
                <label for="Product_code">Product_code</label>
                <input class="form-control" id="Product_code" value="SW">
                <label for="Purchase_code">Purchase_code</label>
                <input class="form-control" id="Purchase_code" value="1095.00">
                <input class="form-control" id="Quantity_on_hand" value="800000">
                <input class="form-control" id="Markup" value="8.25">
                <input class="form-control" id="available" value="true">
                <input class="form-control" id="description" value="Identity Server">
                </div>
              </div>
            </div>
           <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" href="#collapse">Ajouter un produit</a>
                </h4>
              </div>
           </div>
          </div>-->
        
        <div class="admin">
              <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Statistique chiffres d'affaire</a>
                    </h4>
                  </div>
                  <div id="collapse1" class="panel-collapse collapse in">
                    <div class="panel-body">
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">
                                        <form>
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <label for="inputState">Choix par: </label>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <label for="inputState">De: </label>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <label for="inputState">A: </label>
                                                </div>
                                            </div>
                                        </form>
                                            
                                        <form>
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <select id="inputState" class="form-control">
                                                      <option selected>catégorie </option>
                                                      <option>zone géographique</option>
                                                      <option>client</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <input class="form-control" id="Date_d" value="2017">
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <input class="form-control" id="Date_f" value="2018">
                                                </div>
                                            </div>
                                        </form>
                                        </th>
                                        <th scope="col">
                                            <form>
                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                        <label for="inputState">Choix par: </label>
                                                    </div>
                                                    <div class="form-group col-md-3">
                                                        <label for="inputState">De: </label>
                                                    </div>
                                                    <div class="form-group col-md-3">
                                                        <label for="inputState">A: </label>
                                                    </div>
                                                    
                                                </div>
                                            </form>
                                            
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <select id="inputState" class="form-control">
                                                      <option selected>zone géographique </option>
                                                      <option>catégorie</option>
                                                      <option>client</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <input class="form-control" id="Date_d1" value="2017">
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <input class="form-control" id="Date_f1" value="2018">
                                                </div>
                                            </div>
                                        </th>
                                        <th scope="col">
                                            <form>
                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                        <label for="inputState">Choix par: </label>
                                                    </div>
                                                    <div class="form-group col-md-3">
                                                        <label for="inputState">De: </label>
                                                    </div>
                                                    <div class="form-group col-md-3">
                                                        <label for="inputState">A: </label>
                                                    </div>
                                                </div>
                                            </form>
                                            
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <select id="inputState" class="form-control">
                                                      <option selected>client</option>
                                                      <option>catégorie</option>
                                                      <option>zone géographique</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <input class="form-control" id="Date_d2" value="2017">
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <input class="form-control" id="Date_f2" value="2018">
                                                </div>
                                            </div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>

                                        <td><div id="piechart" style="width: 400px; height: 200px;"></div></td>
                                        <td><div id="curve_chart" style="width: 400px; height: 200px"></div></td>
                                        <td><div id="chart_div" style="width: 400px; height: 200px"></div></td>
                                    </tr>

                                </tbody>
                            </table>

                            </div>
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Ajouter produit</a>
                    </h4>
                  </div>
                  <div id="collapse2" class="panel-collapse collapse">
                    <div class="panel-body">
                        <form method="POST" class="container">
                            
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="identifiant">Identifiant</label>
                                    <input class="form-control" id="identifiant" value="1">
                                </div> 
                                <div class="form-group col-md-6">
                                    <label for="Product_id">Product_id</label>
                                    <input class="form-control" id="Product_id" value="98001">
                                </div> 
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="Manufacturer_id">Manufacturer_id</label>
                                    <input class="form-control" id="Manufacturer_id" value="19985678">
                                </div> 
                                <div class="form-group col-md-6">
                                    <label for="Product_code">Product_code</label>
                                    <input class="form-control" id="Product_code" value="SW">
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="Purchase_code">Purchase_code</label>
                                    <input class="form-control" id="Purchase_code" value="1095.00">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="Quantity_on_hand">Quantity_on_hand</label>
                                    <input class="form-control" id="Quantity_on_hand" value="800000">
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="Markup">Markup</label>
                                    <input class="form-control" id="Markup" value="8.25">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="available">available</label>
                                    <input class="form-control" id="available" value="true">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="description">description</label>
                                <input class="form-control" id="description" value="Identity Server">
                            </div>
                            <input type="submit" name="action" value="Ajouter" class="btn btn-primary btn-lg btn-block"/>
                            </form>
                    </div>
                  </div>
                </div>

              </div> 
</div>
       
   
    </body>
    
</html>
