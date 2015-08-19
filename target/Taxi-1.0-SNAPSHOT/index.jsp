<%-- 
    Document   : index
    Created on : 30/06/2015, 07:19:07 PM
    Author     : Luis
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="webthemez"> 

    <!-- Title -->
    <title>Radio Taxi</title>

    <!-- CSS -->
	<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
	<link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- Favicons -->
    <link href="images/favicon/favicon.png" rel="shortcut icon">
    <script src="js/modernizr-2.7.1.min.js"></script>
    <script src="js/jquery-2.1.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function (){

            $('#btnreserva').click(function (e){
                alert("mensaje");
            });
            $('#comboDNI').load('consultaDNI');
            $('#comboDNI').change(function (){
                var posicion=document.getElementById("comboDNI").options.selectedIndex; //posicion
                //alert(document.getElementById("comboDNI").options[posicion].text);
                var dniper = document.getElementById("comboDNI").options[posicion].text;
                //alert(dniper);
                //e.preventDefault();
                $.ajax({
                    data:{"dni" : dniper},
                    url:'consultaUsuario',
                    type:'POST',
                    success: function (resultado){
                        //alert("mensaje"+resultado);
                        $('#nombrePersona').val(resultado);
                    }
                });
            });
            
        });
    </script>
    
  </head>
  <body class="index" id="to-top">

    <!-- Side nav -->
    <nav class="side-nav" role="navigation">

      <ul class="nav-side-nav">
        <li><a class="tooltip-side-nav" href="#section-0" title="" data-original-title="Services" data-placement="left"></a></li>
        <li><a class="tooltip-side-nav" href="#section-1" title="" data-original-title="Services" data-placement="left"></a></li>
        <li><a class="tooltip-side-nav" href="#section-2" title="" data-original-title="Features" data-placement="left"></a></li>
        <li><a class="tooltip-side-nav" href="#section-3" title="" data-original-title="Subscribe" data-placement="left"></a></li>
        <li><a class="tooltip-side-nav" href="#section-4" title="" data-original-title="Subscribe" data-placement="left"></a></li>
        <li><a class="tooltip-side-nav" href="#to-top" title="" data-original-title="Back" data-placement="left"></a></li>
      </ul>
      
    </nav> <!-- /.side-nav -->

    <!-- mainBanner -->
    <header class="mainBanner" role="banner">
      <div class="container">
        <div class="row">
          <div class="col-md-7 col-sm-7">
            <figure>
              <a href="./index.html">
                <img class="img-logo" src="images/logo.png" alt="">
              </a>
            </figure> 
            <h1>Radio TAXI movile</h1>
            <p>Somos una Empresa de Servicio de Taxi Remisse ejecutivo, nos caracterizamos por la puntualidad, responsabilidad y el compromiso con cada uno de nuestros clientes para brindarles un servicio de primer nivel.</p>
            <div class="buttons-wrapper">
		<a href="#" class="button"> Login </a>
            </div>
          </div>
          <div class="col-md-5 col-sm-5">
          </div> <!-- /.col-md-5 -->
        </div> <!-- /.row -->
      </div> <!-- /.container -->
    </header> <!-- /.mainBanner -->

    <!-- Services -->
    <section class="highlights" id="section-0">
      <div class="container">
        <div class="row">
          <div class="col-md-4 highlightsCol">
            <figure>
              <img class="highlightsImg" src="images/icons/icon1.png" alt="">
            </figure>
            <h4>Servicio de Taxi</h4>
            <p>¿Quieres un taxi de confianza?</p>
          </div> 
          <div class="col-md-4 highlightsCol">
            <figure>
              <img class="highlightsImg" src="images/icons/icon2.png" alt="">
            </figure>
            <h4>Servicio Aeropuerto</h4>
            <p>Reserva por  anticipado el taxi segun tu hora de viaje y regreso.</p>
          </div> 
          <div class="col-md-4 highlightsCol">
            <figure>
              <img class="highlightsImg img-margin" src="images/icons/icon3.png" alt="">
            </figure>
            <h4>Servicio Especial</h4>
            <p>Se ofrece el servicio, de taxi de lujo para  ocaciones especiales</p>
          </div> 
        </div> 
      </div> 
    </section> <!-- /.highlights -->

<!-- Features -->
<section class="ourFeatures" id="section-1">
    <div class="container">
        <h2>Login</h2> 
        <div class="features"><!-- Main Points -->
            <form action="Login" method="post" class="form-light mt-20" role="form">
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Email address">
                </div>
                <div class="form-group">
                    <label>Pass</label>
                    <input type="text" name="pass" class="form-control" placeholder="Pass">
                </div>
                <button type="submit" class="btn btn-two">Iniciar</button><p><br></p>
            </form>
        </div>
    </div> <!-- /.container -->
</section> <!-- /.ourFeatures -->


    <!-- Features -->
    <section class="ourFeatures" id="section-2">

      <div class="container">
 

<div class="row">
    <div class="container">
    <h2>Nuevo Usuario</h2> 
        <form action="AdminDB" method="post" class="form-light mt-20" role="form">
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" class="form-control" placeholder="Email address">
            </div>
            <div class="form-group">
                <label>Pass</label>
                <input type="text" name="pass" class="form-control" placeholder="Pass">
            </div>
            <button type="submit" class="btn btn-two">Registrarse</button><p><br></p>
        </form>
    </div>
</div>
 
    </div> <!-- /.row -->

  </div> <!-- /.container -->

</section> <!-- /.ourFeatures -->
          
<section class="ourFeatures" id="section-3">
    
    <div class="container">
        <h2>Reserva tu viaje</h2>
        <form action="" method="post" class="form-light mt-20" role="form">
                <div class="form-group">
                    <label>nombre</label>
                    <input type="text" id="nombrePersona" class="form-control" placeholder="Name">
                </div>
                <div class="form-group">
                    <label>DNI</label>
                    <select id="comboDNI">
                        
                    </select>
                </div>
                <div class="form-group">
                    <label>Fecha</label>
                    <input type="date" name="fecha" class="form-control">
                </div>
                <div class="form-group">
                    <label>Nuemro Taxis</label>
                    <input type="text" name="cantidad" class="form-control"  placeholder="Number requerid">
                </div>
                <div class="form-group">
                        <label>Detalle</label>
                        <textarea class="form-control" name="mensaje" id="message" placeholder="Write you message here..." style="height:100px;"></textarea>
                </div>
            <button id="btnreserva" type="submit" class="btn btn-two">Reservar</button><p><br></p>
            </form>
    </div>
</section>

<section class="ourFeatures" id="section-4">
    
    <div class="container">
        <h2>Hacer un reclamo</h2>
        <form action="Comentarios" method="post" class="form-light mt-20" role="form">
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Email address">
                </div>
                <div class="form-group">
                        <label>Message</label>
                        <textarea class="form-control" name="mensaje" id="message" placeholder="Write you message here..." style="height:100px;"></textarea>
                </div>
                <button type="submit" class="btn btn-two">Enviar</button><p><br></p>
            </form>
    </div>
</section>



    <!-- Footer -->
    <footer class="footer-section" role="contentinfo">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-7 footer-copyright">
	                    <p>All rights reserved.</p>
	                </div>
	                <div class="col-sm-5 footer-social">
	                    <div class="social-icons">
                        <a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>
                        <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
						 <a href="https://www.google.com/"><i class="fa fa-google-plus"></i></a>
                        <a href="https://www.dribbble.com/"><i class="fa fa-dribbble"></i></a>
                        <a href="https://www.linkedin.com/"><i class="fa fa-linkedin-square"></i></a> 
						</div>
	                </div>
	            </div>
	        </div>
        </footer>

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/customScripts.js"></script>
    <script type="text/javascript"> 
    </script>
  </body>
</html>
