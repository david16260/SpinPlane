<%-- 
Document   : conultarClase.jsp
Created on : 25/06/2021, 02:40:36 PM
Author     : Yurny
--%>

<%@page import="ModeloDAO.NovedadDAO"%>
<%@page import="ModeloVO.NovedadVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.GrupoDAO"%>
<%@page import="ModeloVO.GrupoVO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloDAO.AsistenciaDAO"%>
<%@page import="ModeloVO.AsistenciaVO"%>
<%@include file="Sesiones.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>SpinPlane</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" />
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" href="Css/consultarNovedad.css"/>
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


        <!--     Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

        <!--  Google Maps Plugin    -->
        <script src="assets/js/demo.js"></script>
    </head>
    <body>

        <div class="wrapper">
            <div class="sidebar" data-color="orange" data-image="assets/img/siderbar.jpeg">


                <!--
            
                    Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
                    Tip 2: you can also add an image using data-image tag
            
                -->

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

                <div class="contenedor mt-2">
                    <%
                        if (tipoU.equals("Administrador")) {
                    %>
                    <table id="usuario" class="table table-striped" style="width:100%">
                        <thead>
                            <tr>
                                <th>Estudiante</th>
                                <th>Grupo</th>
                                <th>Fecha</th>
                                <th>Asistencia</th>                                                                                                                                
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                AsistenciaVO AsisVO = new AsistenciaVO();
                                AsistenciaDAO AsisDAO = new AsistenciaDAO(AsisVO);
                                ArrayList<AsistenciaVO> listaAsistencia = AsisDAO.listar();
                                for (int i = 0; i < listaAsistencia.size(); i++) {

                                    AsisVO = listaAsistencia.get(i);
                            %>               
                            <tr>
                                <td><%=AsisVO.getNombreUsuario()%> <%=AsisVO.getApellidoUsuario()%></td>
                                <td><%=AsisVO.getNombreGrupo()%></td>
                                <td><%=AsisVO.getFecha()%></td>
                                <td><%=AsisVO.getAsistencia()%></td>                                                                                                                               
                            </tr>
                            <%}%>  
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Estudiante</th>
                                <th>Grupo</th>
                                <th>Fecha</th>
                                <th>Asistencia</th>                                                                                                                                                                
                            </tr>
                        </tfoot>
                    </table>
                    <%}%>
                    <%
                        if (tipoU.equals("Estudiante")) {
                    %>
                    <table id="usuario" class="table table-striped" style="width:100%">
                        <thead>
                            <tr>
                                <th>Estudiante</th>
                                <th>Grupo</th>
                                <th>Fecha</th>
                                <th>Asistencia</th>                                                                                                                                                              
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                AsistenciaVO AsisVO = new AsistenciaVO();
                                AsistenciaDAO AsisDAO = new AsistenciaDAO(AsisVO);
                                ArrayList<AsistenciaVO> listaAsistenciaE = AsisDAO.listarE(usuVO.getUsuId());
                                for (int i = 0; i < listaAsistenciaE.size(); i++) {

                                    AsisVO = listaAsistenciaE.get(i);
                            %>               
                            <tr>
                                <td><%=AsisVO.getNombreUsuario()%> <%=AsisVO.getApellidoUsuario()%></td>
                                <td><%=AsisVO.getNombreGrupo()%></td>
                                <td><%=AsisVO.getFecha()%></td>
                                <td><%=AsisVO.getAsistencia()%></td> 
                            </tr>
                            <%}%>  
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Estudiante</th>
                                <th>Grupo</th>
                                <th>Fecha</th>
                                <th>Asistencia</th>                                                                                                                                
                            </tr>
                        </tfoot>
                    </table>
                    <%}%>
                    <%
                        if (tipoU.equals("Profesor")) {
                    %>
                    <table id="usuario" class="table table-striped" style="width:100%">
                        <thead>
                            <tr>
                                <th>Estudiante</th>
                                <th>Grupo</th>
                                <th>Fecha</th>
                                <th>Asistencia</th>                                                                                                
                                <th>Actualizar</th> 
                                <th>Novedad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                AsistenciaVO AsisVO = new AsistenciaVO();
                                AsistenciaDAO AsisDAO = new AsistenciaDAO(AsisVO);
                                ArrayList<AsistenciaVO> listaAsistenciaP = AsisDAO.listarP(usuVO.getIdGrupo());
                                for (int i = 0; i < listaAsistenciaP.size(); i++) {

                                    AsisVO = listaAsistenciaP.get(i);
                            %>               
                            <tr>
                                <td><%=AsisVO.getNombreUsuario()%> <%=AsisVO.getApellidoUsuario()%></td>
                                <td><%=AsisVO.getNombreGrupo()%></td>
                                <td><%=AsisVO.getFecha()%></td>
                                <td><%=AsisVO.getAsistencia()%></td>                              
                                <td>
                                    <a class="btn btn-info edit m-6 p-2"href="actualizarAsistencia.jsp?idAsistencia=<%=AsisVO.getIdAsistencia()%>&asistencia=<%=AsisVO.getAsistencia()%>&fecha=<%=AsisVO.getFecha()%>&usuario=<%=AsisVO.getNombreUsuario()%>&grupo=<%=AsisVO.getNombreGrupo()%>&idUsuario=<%=AsisVO.getIdUsuario()%>&idGrupo=<%=AsisVO.getIdGrupo()%>"><i class="fas fa-pen"></i></a>
                                </td>
                                <%
                                    if (AsisVO.getAsistencia().equals("No")) {
                                %>
                                <%
                                    NovedadVO NovVO = new NovedadVO();
                                    NovedadDAO NovDAO = new NovedadDAO(NovVO);
                                    ArrayList<NovedadVO> listaAsistenciaH = NovDAO.listarH(AsisVO.getIdAsistencia());
                                    if (listaAsistenciaH.size() > 0) {
                                %>
                                <td>                                    
                                    <p>Ya se registro la novedad para esta Inasistencia</p>
                                </td>                        
                                <%} else {
                                %>
                                <td>
                                    <p>Registre la Novedad</p>                                    
                                    <a class="btn btn-info edit m-6 p-2"href="registrarNovedad.jsp?idAsistencia=<%=AsisVO.getIdAsistencia()%>&fecha=<%=AsisVO.getFecha()%>&nombreUsuario=<%=AsisVO.getNombreUsuario()%>&apellidoUsuario=<%=AsisVO.getApellidoUsuario()%>&grupo=<%=AsisVO.getNombreGrupo()%>"><i class="fas fa-pen"></i></a>
                                </td>
                                <%
                                    }
                                %>                                                                                                
                                <%
                                } else {
                                %>
                                <td></td>
                            </tr>
                            <%}
                                }%>  
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Estudiante</th>
                                <th>Grupo</th>
                                <th>Fecha</th>
                                <th>Asistencia</th>                                                                                                
                                <th>Actualizar</th> 
                                <th>Novedad</th>
                            </tr>
                        </tfoot>
                    </table>
                    <%}%>
                </div>
                <script>
                    $(document).ready(function () {
                        $('#usuario').DataTable({
                            scrollY: 400,
                            language: {
                                "sProcessing": "Procesando...",
                                "sLengthMenu": "Mostrar _MENU_ registros",
                                "sZeroRecords": "No se encontraron resultados",
                                "sEmptyTable": "Ning????n dato disponible en esta tabla",
                                "sInfo": "Mostrando Asistencias del _START_ al _END_ de un total de _TOTAL_ Asistencias",
                                "sInfoEmpty": "Mostrando Asistencias del 0 al 0 de un total de 0 Asistencias",
                                "sInfoFiltered": "(filtrado de un total de _MAX_ Asistencias)",
                                "sInfoPostFix": "",
                                "sSearch": "Buscar:",
                                "sUrl": "",
                                "sInfoThousands": ",",
                                "sLoadingRecords": "Cargando...",
                                "oPaginate": {
                                    "sFirst": "Primero",
                                    "sLast": "????ltimo",
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
                <%
                    if (tipoU.equals("Profesor")) {
                %>
                <form method="post" action="Asistencia">
                    <input type="hidden" name="txtIdGrupo" value="<%=usuVO.getIdGrupo()%>">
                    <button class="abrir-registrar btn btn-primary" name="opcion" id="abrir-registrar" value="3">Registrar</button>
                </form>
                <%
                    }
                %>
                <%
                    AsistenciaVO AsiVO = (AsistenciaVO) request.getAttribute("Si");
                    if (AsiVO != null) {
                %>
                <script  type="text/javascript">

                    swal({
                        title: "Error",
                        text: "Para este grupo el dia de hoy ya se tomo asistencia",
                        type: 'error',
                        confirmButtonClass: "btn-primary",
                        confirmButtonText: "OK",
                        closeOnConfirm: false
                    },
                            function () {
                                window.location = "consultarAsistencia.jsp";
                            });
                </script>
                <%
                    }
                %>                    
                <script src="Js/consutarUsuario.js" type="text/javascript"></script>

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

                <footer class="footer">
                    <div class="container-fluid">

                        <p class="copyright text-center">
                            &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">SpinPlane</a>
                        </p>
                    </div>
                </footer>

            </div>
        </div>
        <script>
                    // Example starter JavaScript for disabling form submissions if there are invalid fields
                            (function () {
                                'use strict'

                                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                                var forms = document.querySelectorAll('.needs-validation')

                                // Loop over them and prevent submission
                                Array.prototype.slice.call(forms)
                                        .forEach(function (form) {
                                            form.addEventListener('submit', function (event) {
                                                if (!form.checkValidity()) {
                                                    event.preventDefault()
                                                    event.stopPropagation()
                                                }

                                                form.classList.add('was-validated')
                                            }, false)
                                        })
                            })()
        </script>
    </body>
    <!--   Core JS Files   -->
    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>


</html>
