<%@include file="Sesiones.jsp" %>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>SpinPlane</title>

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
                        <li>
                            <a href="EnviarCorreo.jsp">
                                <i class="pe-7s-date"></i>
                                <p>Correo</p>
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
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <div class="col-md-6">
                                <form method="POST" action="Usuario">
                                    <input type="hidden" name="txtId" value="<%=usuVO.getUsuId()%>">
                                    <input type="submit" value="Perfil" class="btn btn-primary">
                                    <input type="hidden" name="opcion" value="4">
                                </form>
                            </div> 


                        </div>


                        <div class="collapse navbar-collapse">


                            <ul class="nav navbar-nav navbar-right">
                                <div class="col-md-6">
                                    <form class="cerrar" method="post" action="Sesiones">
                                        <input type="submit" value="Cerrar Sesión" class="btn btn-secondary">
                                    </form>

                                </div>           
                                <li class="separator hidden-lg"></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <section class="section my-services" data-section="section2">
                    <div class="container">
                        <div class="section-heading">
                            <h3 class="titulo-menu text-center">Academia de baile Bottie School</h3>
                            <div class="line-dec"></div>
                        </div>
                        <div class="row">
                            <div class=" col-md-6">
                                <div class="service-item" id="1">
                                    <div class="first-service-icon service-icon"></div>
                                    <h4>Misión</h4>
                                    <p>
                                        Somos una escuela de baile dedicada a la formación integral de personas, haciendo uso de la danza como una herramienta de bienestar para fortalecer las áreas física, social y emocional de nuestra comunidad, a través de la creación de espacios que permitan la diversión y el sano entretenimiento.
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="service-item" id="segundo">
                                    <div class="second-service-icon service-icon"></div>
                                    <h4>Visión</h4>
                                    <p>
                                        Ser reconocidos como la mejor escuela de baile en Bogotá, no solo por la participación de nuestros bailarines en eventos locales y nacionales, sino también por la calidad, excelencia y compromiso en el servicio de enseñanza dirigido a todos nuestros usuarios.
                                    </p>
                                </div>
                            </div>
                            <div class=" contenido col-md-6">
                                <div class="service-item" id="tercero">
                                    <div class="third-service-icon service-icon"></div>
                                    <h4>Beneficios</h4>
                                    <p>
                                        Con el baile se obtienen beneficios mejorando nuestra calidad de vida y salud, relacionado como la actividad física más completa, cuando bailamos se ejercita todo nuestro cuerpo desarrollando energía y vitalidad, logrando así un buen nivel físico.
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="service-item" id="4">
                                    <div class="fourth-service-icon service-icon"></div>
                                    <h4>Clases</h4>
                                    <p>
                                        Curso dirigido para todas las edades y en especial para los niños entre 4 y 10 años de edad que hacen uso del baile como medio fundamental para potencializar habilidades y cualidades para la vida, promoviendo el desarrollo motriz, social y cognitivo, con el fin de mejorar su calidad de vida.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <% if (request.getAttribute("mensajeBienvenida") != null) {%>
                <script  type="text/javascript">
                    swal({
                        title: "${mensajeBienvenida}",
                        type: 'success',
                        confirmButtonClass: "btn-primary",
                        confirmButtonText: "OK",
                        closeOnConfirm: false
                    },
                            function () {
                                window.location = "menu.jsp";
                            });
                </script>
                <%}%>




                <footer class="footer">
                    <div class="container-fluid">

                        <p class="copyright text-center">
                            &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">SpinPlane</a>
                        </p>
                    </div>
                </footer>

            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="Js/menu.js"></script>
    </body>
    <script src="Js/app.js" type="text/javascript"></script>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <!--  Charts Plugin -->
    <script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>


</html>
