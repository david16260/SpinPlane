<%-- 
    Document   : actualizarAsistencia
    Created on : Sep 6, 2021, 11:32:32 AM
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Sesiones.jsp" %>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>SpinPlane</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" />
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" href="Css/consultarUsuario.css"/>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
        <link href="Css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="Js/sweetalert.js" type="text/javascript"></script>
        <script src="Js/sweetalert.min.js" type="text/javascript"></script>
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
        <!--  CSS for Demo Purpose, don't include it in your project     -->


        <!--     Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

        <!--  Google Maps Plugin    -->
        <script src="assets/js/demo.js"></script>
    </head>
    <body>
        <%
            String idAsistencia = request.getParameter("idAsistencia");
            String asistencia = request.getParameter("asistencia");
            String fehca = request.getParameter("fecha");
            String estudiante = request.getParameter("usuario");
            String grupo = request.getParameter("grupo");
            String idGrupo = request.getParameter("idGrupo");
            String idUsuario = request.getParameter("idUsuario");
            
        %>

        <div class="wrapper">
            <div class="sidebar" data-color="orange" data-image="assets/img/siderbar.jpeg">

                <!--
            
                    Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
                    Tip 2: you can also add an image using data-image tag
            
                -->
                <%
                        String tipoU = usuVO.getIdTipoUsuario();
                        if (tipoU.equals("Estudiante")) {
                    %>
                    <script>
                        window.location.href = "menu.jsp";
                    </script>
                    <%}%>
                <div class="sidebar-wrapper">
                    <div class="logo">
                        <a href="menu.jsp">
                            <img src="images/LOGO4.gif" class="SpinPlane" alt=""/>
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
                            <li>
                                <a href="consultarNovedad.jsp">
                                    <i class="pe-7s-info"></i>
                                    <p>Novedad</p>
                                </a>
                            </li>
                            <li>

                            <li>
                                <a href="consultarUsuario.jsp">
                                    <i class="pe-7s-user"></i>
                                    <p>Usuario</p>
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
                                    <h2 class="text-center">Gestionar Asistencia</h2>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>


                <div class="contenedor mt-4">


                    <form method="POST" action="Asistencia" class="form-registro">
                        <div class="tituloR">
                            <a href="consultarAsistencia.jsp" class="cerrar-registro" id="cerrar-registro"><i class="fas fa-times"></i></a>
                            <h2 class="textReg">Actualizar Asistencia</h2>
                        </div>
                        <div class="cuerpo">
                            <div class="formulario">
                                
                                <input type="hidden" name="txtId" value="<%=idAsistencia %>">
                                <input type="hidden" name="txtIdUsuario" value="<%=idUsuario %>">
                                <input type="hidden" name="txtIdGrupo" value="<%=idGrupo %>">
                                
                                <div class="form-group">
                                    <label for="recipient-name" class="col-form-label">Estudiante:</label>          
                                    <input type="text" class="form-control" id="nombre" name="txtNombre" value="<%=estudiante %>" placeholder="Nombre" required readonly="">
                                </div>
                                
                                <div class="form-group">
                                    <label for="recipient-name" class="col-form-label">Grupo:</label>  
                                    <input type="text" class="form-control" value="<%=grupo %>" id="nombre" name="txtNombre" placeholder="Nombre" required readonly="">
                                </div>

                                <div class="form-group">
                                    <label for="recipient-name" class="col-form-label">Asistencia:</label>
                                    <select id="TipoDocumento" name="txtAsistencia" class="form-control">
                                        <option value="Si">Si</option>
                                        <option value="No">No</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="recipient-name" class="col-form-label">Fecha:</label>    
                                    <input type="date" id="numeroDocumento" value="<%=fehca %>" class="form-control" name="txtFecha" required readonly>
                                </div> 
                                <div class="boton">
                                    <input type="submit" id="btn" value="Actualizar" class="btn btn-success">
                                    <input type="hidden" value="2" name="opcion">
                                </div>
                            </div>
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
                                window.location = "consultarAsistencia.jsp";
                            });
                </script>

                <%} else if (request.getAttribute("mensajeExito") != null) {%>
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
                                window.location = "consultarAsistencia.jsp";
                            });
                </script>
                <%}%>



                
                <script src="Js/consutarUsuario.js" type="text/javascript"></script>


                <footer class="footer">
                    <div class="container-fluid">

                        <p class="copyright text-center">
                            &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">SpinPlane</a>
                        </p>
                    </div>
                </footer>

            </div>
        </div>

    </body>
    <!--   Core JS Files   -->
    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>


</html>