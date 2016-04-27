<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
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
</head>
<body>
 <!--This is the nav bar -->
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">PSC</a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Main</a></li>
        <li><a href="MappingTool.jsp">Info</a></li>
        </ul>
    </div>
  </div>
</nav>
<!--End Nav bar -->

<!--Begin info of load page-->
  <div class= "jumbotron text-center">
    <h2>Welcome to</h2>
    <h1 style="color:blue;">Power Plant Mapping Tool</h1>
    <h5>By Power Squad Consulting</h5>
    <p class="text-primary">See relevant information about the desired power plant!</p>
  </div>
<!--End -->
<!--Insert Plant Id-->
<div class="row">
  <div class="col-lg-6">
    <div class="input-group">
      <span class="input-group-btn">
      	<button id= plantIDButton type="button" class="btn btn-primary" onclick="myFunction()">Go!</button>
      </span>
      <input id=plantIDText type="text" class="form-control" name = "plantIDText" placeholder="Plant ID Here...">
    </div>
  </div>
  </div>
 <script>
 var plantID;
 function myFunction(){
	localStorage.setItem("Save.plantID", document.getElementById("plantIDText").value);
	
	location.href = 'http://localhost:8080/WebApp/MappingTool.jsp';
	
}
 </script>
<!--This is the footer -->
   <div class = "navbar navbar-inverse navbar-fixed-bottom" role = navigation>
    <div class = "container">
      <div class = "navbar-text pull">
      <p>Relay all questions on software to Power Squad Consulting at quest.bloomberg.team@gmail.com</p>
      </div>
    </div>
  </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>