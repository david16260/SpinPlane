<%-- 
    Document   : actualizarAula
    Created on : 21-ago-2021, 13:50:30
    Author     : Yurny
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
        <link rel="stylesheet" href="Css/consultar.css"/>
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
            String idAula = request.getParameter("idAula");
            String nombre = request.getParameter("nombre");
            String capacidad = request.getParameter("capacidad");
        %>

        <div class="wrapper">
            <div class="sidebar" data-color="orange" data-image="assets/img/siderbar.jpeg">

                <!--
            
                    Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
                    Tip 2: you can also add an image using data-image tag
            
                -->
                <%
                        String tipoU = usuVO.getIdTipoUsuario();
                        if (tipoU.equals("Estudiante")|| tipoU.equals("Profesor")) {
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
                        if (tipoU.equals("Estudiante")&& tipoU.equals("Profesor")) {
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
                                    <h2 class="text-center">Gestionar Aula</h2>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <%
                    if (tipoU.equals("Administrador")) {
                %>
                <div class="contenedor mt-4">

                   <form method="POST" action="Aula" class="form-registro">
                       <input type="hidden" name="txtId" value="<%=idAula%>">
                        <div class="tituloR">
                            <a href="consultarAula.jsp" class="cerrar-registro" id="cerrar-registro"><i class="fas fa-times"></i></a>
                            <h2>Actualizar Aula</h2>
                        </div>
                        <div class="cuerpo">
                            <div class="formulario">

                                <div class="modal-body">
                                    <label for="recipient-name" class="col-form-label">Nombe Aula:</label>    
                                    <input type="text" name="txtNomAula" value="<%=nombre%>" placeholder="Nombre" required class="form-control" minlength="3" maxlength="30" onkeypress="return (event.charCode >= 65 && event.charCode >= 90 && event.charCode >= 97 && event.charCode <= 122)">
                                </div>
                                <div class="modal-body">
                                    <label for="recipient-name" class="col-form-label">Capacidad:</label>     
                                    <input type="number" name="txtCapacidad" value="<%=capacidad%>" placeholder="Capacidad" class="form-control">
                                </div>

                                <div class="selector text-primary">
                                    <input type="submit" id="btn" value="Actualizar" class="btn btn-success">
                                    <input type="hidden" value="2" name="opcion">
                                </div>
                            </div>
                        </div>
                    </form>
                    <%}%>
                </div>
                </div>

                <script>
                    $(document).ready(function () {
                        $('#usuario').DataTable({
                            scrollY: 400,
                            language: {
                                "sProcessing": "Procesando...",
                                "sLengthMenu": "Mostrar _MENU_ registros",
                                "sZeroRecords": "No se encontraron resultados",
                                "sEmptyTable": "NingÃºn dato disponible en esta tabla",
                                "sInfo": "Mostrando aulas del _START_ al _END_ de un total de _TOTAL_ aulas",
                                "sInfoEmpty": "Mostrando aulas del 0 al 0 de un total de 0 aulas",
                                "sInfoFiltered": "(filtrado de un total de _MAX_ aulas)",
                                "sInfoPostFix": "",
                                "sSearch": "Buscar:",
                                "sUrl": "",
                                "sInfoThousands": ",",
                                "sLoadingRecords": "Cargando...",
                                "oPaginate": {
                                    "sFirst": "Primero",
                                    "sLast": "Ãšltimo",
                                    "sNext": "Siguiente",
                                    "sPrevious": "Anterior"
                                },
                                "oAria": {
                                    "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                                    "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                                },
                                "buttons": {
                                    "copy": "Copiar",
                                    "colvis": "Visibilidad"
                                }
                            }
                        });
                    });
                </script>
                

                
                    
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
                                window.location = "consultarAula.jsp";
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
                                window.location = "consultarAula.jsp";
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
<!--   Core JS Files   -->
    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>
    </body>
    


</html>


