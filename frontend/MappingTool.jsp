<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Mapping-Power-Plants</title>
    <!-- Bootstrap -->
    <link href="swatch.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
        <style>
      #map {
        width: 500px;
        height: 400px;
      }
    </style>
    <script type = "text/javascript">
  		var plantID = localStorage.getItem("Save.plantID")
  		var weatherlat = 42.3583
  		var weatherlong = -71.0603
  </script>
</head>
<body>
 <!--Nav Bar-->
  		<nav class="navbar navbar-inverse">
  			<div class="container-fluid">
    			<div class="navbar-header">
     				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
   					</button>
   						<a class="navbar-brand" href="#">PSC</a>
  				</div>
   				 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
      				<ul class="nav navbar-nav">
       				 <li><a href="index.jsp">Main</a></li>
       				<li class="active"><a href="MappingTool.jsp">Info</a></li>
       			   </ul>
    			</div>
  				</div>
			</nav>
		<!--End Nav Bar -->
		<!-- Header-->
		<a href="#" class="btn btn-inverse btn-lg btn-block">Power Plant Information</a>

		<!--Table of plant info -->
		<table class="table table-striped table-hover ">
  		<thead>
     		<tr class="active">
      		<th>Descriptor</th>
      		<th>Value</th>
    		</tr>
  		</thead>
  		<tbody>
    		<tr class="warning">
      			<td>Power Plant Name</td>
      			<td></td>
   			</tr>
     		<tr class="warning">
      			<td>Plant ID</td>
      			<td><script type="text/javascript">document.write(plantID);</script></td>
    		</tr>
    		<tr class="warning">
      			<td>Address</td>
      			<td>Column content</td>
    		</tr>
    		<tr class="warning">
      			<td>Zone</td>
      			<td>Column content</td>
    		</tr>
    		<tr class="warning">
      			<td>Fuel Type</td>
      <td>Column content</td>
    </tr>
    <tr class="warning">
      <td>Fuel Percentage</td>
      <td>Column content</td>
    </tr>
    <tr class="warning">
      <td>Number of Generators</td>
      <td>Column content</td>
    </tr>
    <tr class="warning">
      <td>Nameplate Capacity</td>
      <td>Column content</td>
    </tr>
    <tr class="warning">
      <td>Annual Generation by Type</td>
      <td>Column content</td>
    </tr>
    <tr class="warning">
      <td>Generation of Month, Last Year</td>
      <td>Column content</td>
    </tr>
  </tbody>
</table> 

<!--Insert Map from Google-->
<div id="map"  class="centered"></div>
    <script>
      function initMap() {
        var mapDiv = document.getElementById('map');
        var map = new google.maps.Map(mapDiv, {
          center: {lat: 40.404572, lng: -74.669038},
          zoom: 10
        });
      }
    </script>

<table class="table table-striped table-hover ">
  		<thead>
     		<tr class="active">
      		<th>Close Weather Station</th>
      		<th>Distance</th>
    		</tr>
  		</thead>
  		<tbody>
    		<tr class="warning">
      			<td>Power Plant Name</td>
      			<td></td>
   			</tr>
     		<tr class="warning">
      			<td>Plant ID</td>
      			<td><script type="text/javascript">document.write(plantID);</script></td>
    		</tr>
    		<tr class="warning">
      			<td>Address</td>
      			<td>Column content</td>
    		</tr>
    		<tr class="warning">
      			<td>Zone</td>
      			<td>Column content</td>
    		</tr>
    		<tr class="warning">
      			<td>Fuel Type</td>
      			<td>Column content</td>
    		</tr>
   		 </tbody>
    	</table>

<!--Footer-->
     <div class = "navbar navbar-inverse navbar-fixed-bottom" role = navigation>
    <div class = "container">
      <div class = "navbar-text pull">
      <p>Relay all questions on software to Power Squad Consulting at quest.bloomberg.team@gmail.com</p>
      </div>
   	</div>
 	 </div>
  
  
  
  <button type="button" class="navbar-toggle" data-toggle="sidebar" data-target=".sidebar">
  <span class="sr-only">Toggle navigation</span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
</button>
 
  
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
        async defer></script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>



</body>
</html>