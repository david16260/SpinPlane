<!DOCTYPE html>
<html lang="en" >
<head>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <link href="Css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="Js/sweetalert.js" type="text/javascript"></script>
        <script src="Js/sweetalert.min.js" type="text/javascript"></script>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="shortcut icon" href="images/LOGO2.gif" />
  <link rel="stylesheet" href="Css/login.css">

</head>
<body>
<!-- partial:index.partial.html -->
<body>
  <div class="session">
    <div class="left">
      <?xml version="1.0" encoding="UTF-8"?>
       
<style type="text/css">
	.st01{fill:#fff;}
</style>
			<path class="st01" d="m126 302.2c-2.3 0.7-5.7 0.2-7.7-1.2l-105-71.6c-2-1.3-3.7-4.4-3.9-6.7l-9.4-126.7c-0.2-2.4 1.1-5.6 2.8-7.2l93.2-86.4c1.7-1.6 5.1-2.6 7.4-2.3l125.6 18.9c2.3 0.4 5.2 2.3 6.4 4.4l63.5 110.1c1.2 2 1.4 5.5 0.6 7.7l-46.4 118.3c-0.9 2.2-3.4 4.6-5.7 5.3l-121.4 37.4zm63.4-102.7c2.3-0.7 4.8-3.1 5.7-5.3l19.9-50.8c0.9-2.2 0.6-5.7-0.6-7.7l-27.3-47.3c-1.2-2-4.1-4-6.4-4.4l-53.9-8c-2.3-0.4-5.7 0.7-7.4 2.3l-40 37.1c-1.7 1.6-3 4.9-2.8 7.2l4.1 54.4c0.2 2.4 1.9 5.4 3.9 6.7l45.1 30.8c2 1.3 5.4 1.9 7.7 1.2l52-16.2z"/>
</svg>      
    </div>
      <form action="Usuario" class="log-in" autocomplete="off" method="POST"> 
      <img src="images/LOGO4.gif" alt="Logo SpinPlane" class="logoLogin">
      <div class="iniciar">
      <b><p class="letra">Inicia sesi�n</p></b>
      </div>
      <div class="floating-label">
          <input placeholder="Correo:" type="email" name="txtCorreo" id="email" autocomplete="off" class="input-registro">
        <label for="email">Correo:</label>
        <div class="icon">
<?xml version="1.0" encoding="UTF-8"?>
<svg enable-background="new 0 0 100 100" version="1.1" viewBox="0 0 100 100" xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
<style type="text/css">
	.st0{fill:none;}
</style>
<g transform="translate(0 -952.36)">
	<path d="m17.5 977c-1.3 0-2.4 1.1-2.4 2.4v45.9c0 1.3 1.1 2.4 2.4 2.4h64.9c1.3 0 2.4-1.1 2.4-2.4v-45.9c0-1.3-1.1-2.4-2.4-2.4h-64.9zm2.4 4.8h60.2v1.2l-30.1 22-30.1-22v-1.2zm0 7l28.7 21c0.8 0.6 2 0.6 2.8 0l28.7-21v34.1h-60.2v-34.1z"/>
</g>
<rect class="st0" width="100" height="100"/>
</svg>

        </div>
      </div>
      <div class="floating-label">
        <input placeholder="Contrase�a:" type="password" name="txtClave" id="password" autocomplete="off" class="input-registro">
        <label for="password">Contrase�a:</label>
        <div class="icon">
          
          <?xml version="1.0" encoding="UTF-8"?>
          <svg enable-background="new 0 0 24 24" version="1.1" viewBox="0 0 24 24" xml:space="preserve"              xmlns="http://www.w3.org/2000/svg">
<style type="text/css">
	.st0{fill:none;}
	.st1{fill:#010101;}
</style>
		<rect class="st0" width="24" height="24"/>
		<path class="st1" d="M19,21H5V9h14V21z M6,20h12V10H6V20z"/>
		<path class="st1" d="M16.5,10h-1V7c0-1.9-1.6-3.5-3.5-3.5S8.5,5.1,8.5,7v3h-1V7c0-2.5,2-4.5,4.5-4.5s4.5,2,4.5,4.5V10z"/>
		<path class="st1" d="m12 16.5c-0.8 0-1.5-0.7-1.5-1.5s0.7-1.5 1.5-1.5 1.5 0.7 1.5 1.5-0.7 1.5-1.5 1.5zm0-2c-0.3 0-0.5 0.2-0.5 0.5s0.2 0.5 0.5 0.5 0.5-0.2 0.5-0.5-0.2-0.5-0.5-0.5z"/>
</svg>
        </div>
        
      </div>
      <ul class="error" id="error"></ul>
                            <div class="inputb">
                                <!--<input type="submit" id="btn" value="Entrar">-->
                                
                                <button type="submit" >Ingresar</button>
                                <input type="hidden" value="3" name="opcion">

                               
                                
                            </div>
      
    </form>
  </div>
     <% if (request.getAttribute("mensajeError") != null) {%>
                    <script  type="text/javascript">
                        
                        swal({
                            title: "Error",
                            text: "${mensajeError}",
                            type: 'error',
                            confirmButtonClass: "btn-primary",
                            confirmButtonText: "OK",
                            closeOnConfirm: false
                        },
                                function () {
                                    window.location = "login.jsp";
                                });
                    </script>

                    <%}%>
</body>
<!-- partial -->
  
</body>
</html>