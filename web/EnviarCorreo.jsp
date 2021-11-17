<%-- 
    Document   : EnviarCorreo
    Created on : 28/08/2021, 03:43:47 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Sesiones.jsp" %>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Enviar Correo</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />


        <!-- Bootstrap core CSS     -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="Css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="Js/sweetalert.js" type="text/javascript"></script>
        <script src="Js/sweetalert.min.js" type="text/javascript"></script>

        <!-- Animation library for notifications   -->
        <link href="assets/css/animate.min.css" rel="stylesheet"/>

        <!--  Light Bootstrap Table core CSS    -->
        <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


        <!--  CSS for Demo Purpose, don't include it in your project     -->
        <link href="assets/css/demo.css" rel="stylesheet" />

        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

    </head>
</head>
<body>
    <div class="wrapper">
        <div class="sidebar" data-color="orange" data-image="assets/img/siderbar.jpeg">
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="menu.jsp">
                        <img src="images/LOGO4.gif" class="SpinPlane" alt="">
                    </a>
                </div>
                <%
                    String tipoU = usuVO.getIdTipoUsuario();
                    if (tipoU.equals("Profesor")) {
                %>
                <ul class="nav">
                    <li>
                        <a href="consultarAsistencia.jsp">
                            <i class="pe-7s-notebook"></i>
                            <p>Asistencia</p>
                        </a>
                    </li>
                    <li>
                        <a href="consultarAula.jsp">
                            <i class="pe-7s-culture"></i>
                            <p>Aula</p>
                        </a>
                    </li>
                    <li>
                        <a href="consultarGrupo.jsp">
                            <i class="pe-7s-users"></i>
                            <p>Grupo</p>
                        </a>
                    </li>
                    <li>
                        <a href="consultarClase.jsp">
                            <i class="pe-7s-news-paper"></i>
                            <p>Clase</p>
                        </a>
                    </li>
                    <li>
                    <li>
                        <a href="consultarNovedad.jsp">
                            <i class="pe-7s-info"></i>
                            <p>Novedad</p>
                        </a>
                    </li>
                    <li>
                    <li>
                        <a href="consultarHorario.jsp">
                            <i class="pe-7s-date"></i>
                            <p>Horario</p>
                        </a>
                    </li>

                </ul>
                <%} else if (tipoU.equals("Estudiante")) {%>
                <ul class="nav">
                    <li>
                        <a href="consultarAsistencia.jsp">
                            <i class="pe-7s-notebook"></i>
                            <p>Asistencia</p>
                        </a>
                    </li>
                    <li>
                        <a href="consultarGrupo.jsp">
                            <i class="pe-7s-users"></i>
                            <p>Grupo</p>
                        </a>
                    </li>
                    <li>
                    <li>
                        <a href="consultarAula.jsp">
                            <i class="pe-7s-culture"></i>
                            <p>Aula</p>
                        </a>
                    </li>
                    <li>
                        <a href="consultarClase.jsp">
                            <i class="pe-7s-news-paper"></i>
                            <p>Clase</p>
                        </a>
                    </li>
                    <li>
                        <a href="consultarHorario.jsp">
                            <i class="pe-7s-date"></i>
                            <p>Horario</p>
                        </a>
                    </li>
                    <%} else if (tipoU.equals("Administrador")) {%>
                    <ul class="nav">
                       <li>
                                <a href="consultarAsistencia.jsp">
                                    <i class="pe-7s-notebook"></i>
                                    <p>Asistencia</p>
                                </a>
                            </li>
                            <li>
                                <a href="consultarAula.jsp">
                                    <i class="pe-7s-culture"></i>
                                    <p>Aula</p>
                                </a>
                            </li>
                            <li>
                                <a href="consultarGrupo.jsp">
                                    <i class="pe-7s-users"></i>
                                    <p>Grupo</p>
                                </a>
                            </li>
                            <li>
                                <a href="consultarClase.jsp">
                                    <i class="pe-7s-news-paper"></i>
                                    <p>Clase</p>
                                </a>
                            </li>
                           
                            <li>
                                <a href="consultarNovedad.jsp">
                                    <i class="pe-7s-info"></i>
                                    <p>Novedad</p>
                                </a>
                            </li>
                           <li>
                            <a href="consultarHorario.jsp">
                                <i class="pe-7s-date"></i>
                                <p>Horario</p>
                            </a>
                        </li>

                            <li>
                                <a href="consultarUsuario.jsp">
                                    <i class="pe-7s-user"></i>
                                    <p>Usuario</p>
                                </a>
                            </li>
                            <li>
                                <a href="EnviarCorreo.jsp">
                                    <i class="pe-7s-date"></i>
                                    <p>Correo</p>
                                </a>
                            </li>
                    </ul>
                    <%}%>
            </div>
        </div>

        <div class="main-panel">
            <nav class="navbar navbar-default navbar-fixed">
                <div class="container-fluid">

                    <div class="collapse navbar-collapse">

                        <ul class="nav navbar-nav navbar-left">

                            <li>
                                <a href="menu.jsp">
                                    <i class="pe-7s-left-arrow"></i>

                                </a>

                            </li>
                        </ul>
                        <ul style="list-style: none; margin-top: 15px;">
                            <li>
                                <h2 class="text-center">Correo</h2>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="contenedor mt-4">


                <form method="post" action="parametrosCorreo">

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Destino</label>
                        <input type="text" class="form-control" name="destino" id="exampleFormControlInput1" placeholder="name@example.com">
                    </div>

                    <br>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Asunto</label>
                        <input type="text" class="form-control" name="asunto" id="exampleFormControlInput1" placeholder="Asunto...">
                    </div>

                    <br>
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Contenido</label>
                        <textarea class="form-control" name="contenido" id="exampleFormControlTextarea1" rows="5"></textarea>
                    </div>
                    <br>
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Contenido</label>
                        <input type="file" name="imagen" id="exampleFormControlInput1" class="form-control-file">
                    </div>
                    
                    <center> <input type="submit" class="btn btn-success" name="Enviar"> </center>
                    
                </form>


                
            </div>


            <footer class="footer">
                <div class="container-fluid">

                    <p class="copyright text-center">
                        &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">SpinPlane</a>
                    </p>
                </div>
            </footer>

        </div>
    </div>
             <% if (request.getAttribute("resultadoM") != null) {%>
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
                            window.location = "EnviarCorreo.jsp";
                        });
            </script>

            <%} else if (request.getAttribute("resultado") != null) {%>
            <script  type="text/javascript">

                swal({
                    title: "Correcto",
                    text: "${mensajeExito}",
                    type: 'success',
                    confirmButtonClass: "btn-primary",
                    confirmButtonText: "OK",
                    closeOnConfirm: false
                },
                        function () {
                            window.location = "EnviarCorreo.jsp";
                        });
            </script>
            <%}%>
            <script src="Js/consutarUsuario.js" type="text/javascript"></script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="Js/menu.js"></script>
</body>
</html>
