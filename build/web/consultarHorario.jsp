<%-- 
    Document   : ConsultarUsuario
    Created on : 25/06/2021, 11:22:07 AM
    Author     : Sebas
--%>

<%@page import="java.util.Calendar"%>
<%@page import="ModeloDAO.ClaseDAO"%>
<%@page import="ModeloVO.ClaseVO"%>
<%@page import="ModeloDAO.AulaDAO"%>
<%@page import="ModeloVO.AulaVO"%>
<%@page import="ModeloDAO.GrupoDAO"%>
<%@page import="ModeloVO.GrupoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.HorarioDAO"%>
<%@page import="ModeloVO.HorarioVO"%>
<%@page import="java.time.LocalDate"%>

<%@include file="Sesiones.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                                    <h2 class="text-center">Gestionar Horario</h2>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="contenedor mt-4">
                    <%
                        if (tipoU.equals("Administrador")) {
                    %>
                    <table id="usuario" class="table table-striped" style="width:100%">
                        <thead>
                            <tr>     
                                <th>Grupo</th>
                                <th>Aula</th>
                                <th>Clase</th>
                                <th>Fecha Inicio</th>
                                <th>Fecha Fin</th>
                                <th>Dia</th>
                                <th>Hora Inicio</th>
                                <th>Hora Fin</th>
                                <th>Estado</th>                                
                                <th>Estado</th>
                                <th>Actualizar</th>
                                <th>Reporte</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                HorarioVO HorVO = new HorarioVO();
                                HorarioDAO HorDAO = new HorarioDAO(HorVO);
                                ArrayList<HorarioVO> listaHorario = HorDAO.listar();

                                for (int i = 0; i < listaHorario.size(); i++) {

                                    HorVO = listaHorario.get(i);
                            %>               
                            <tr>                
                                <td><%=HorVO.getNombreGrupo()%></td>
                                <td><%=HorVO.getNombreAula()%></td>
                                <td><%=HorVO.getNombreClase()%></td>
                                <td><%=HorVO.getFechaInicio()%></td>
                        <input type="hidden" class="Fechas" value="<%=HorVO.getFechaInicio()%>,<%=HorVO.getFechaFin()%>">
                        <td><%=HorVO.getFechaFin()%></td>
                        <td><%=HorVO.getDia()%></td>
                        <input type="hidden" class="FechasDia" value="<%=HorVO.getFechaInicio()%>,<%=HorVO.getFechaFin()%>,<%=HorVO.getDia()%>">
                        <td><%=HorVO.getHoraInicio()%></td>
                        <td><%=HorVO.getHoraFin()%></td>
                        <td><a class="<%=HorVO.getEstado().equals("Activo") ? "btn btn-success  m-5" : "btn btn-danger  m-5"%>" style="padding-right: 10px;">
                                <%=HorVO.getEstado()%>
                                <input type="hidden" class="FormularioCompleto" value="<%=HorVO.getFechaInicio()%>,<%=HorVO.getFechaFin()%>,<%=HorVO.getDia()%>,<%=HorVO.getHoraInicio()%>,<%=HorVO.getHoraFin()%>,<%=HorVO.getEstado()%>,<%=HorVO.getIdGrupo()%>,<%=HorVO.getIdAula()%>,<%=HorVO.getIdClase()%>">
                            </a></td>  

                        <%
                            if (tipoU.equals("Administrador")) {
                        %>
                        <td>
                            <%
                                if (HorVO.getEstado().equals("Activo")) {
                            %>
                            <form method="POST" action="Horario">
                                <input type="hidden" name="txtId" value="<%=HorVO.getIdHorario()%>">
                                <input type="hidden" name="txtEstado" value="Inactivo">
                                <input type="hidden" name="estadoF" value="Activo">
                                <button class="btn btn-info edit m-2 p-2" type="submit"><i class="fas fa-pen"></i></button>
                                <input type="hidden" name="opcion" value="3">
                            </form>
                            <%
                            } else {
                            %>
                            <form method="POST" action="Horario">
                                <input type="hidden" name="txtId" value="<%=HorVO.getIdHorario()%>">
                                <input type="hidden" name="txtEstado" value="Activo">
                                <button class="btn btn-info edit m-2 p-2" type="submit"><i class="fas fa-pen"></i></button>
                                <input type="hidden" name="opcion" value="3">
                            </form>
                            <%
                                }
                            %>
                        </td>
                        <td>
                            <a class="btn btn-info edit m-2 p-2"href="actualizarHorario.jsp?idHorario=<%=HorVO.getIdHorario()%>&fechaInicio=<%=HorVO.getFechaInicio()%>&fechaFin=<%=HorVO.getFechaFin()%>&dia=<%=HorVO.getDia()%>&horaInicio=<%=HorVO.getHoraInicio()%>&horaFin=<%=HorVO.getHoraFin()%>&idGrupo=<%=HorVO.getIdGrupo()%>&idAula=<%=HorVO.getIdAula()%>&idClase=<%=HorVO.getIdClase()%>&nomGrupo=<%=HorVO.getNombreGrupo()%>&nomClase=<%=HorVO.getNombreClase()%>&nomAula=<%=HorVO.getNombreAula()%>   "><i class="fas fa-pen"></i></a>
                        </td>
                        <td>   
                            <form action="generarReporteHorarioId.jsp" method="post" target="_blank">

                                <select name="horario" hidden="">
                                    <option value="<%=HorVO.getIdHorario()%>"></option>
                                </select>
                                <input type="submit" value="Generar" class="btn btn-outline-info m-5">
                                <input type="hidden" value="Reportes/ReporteHorarioId.jasper" name="nombre">   
                            </form>
                        </td>
                        <%}%>
                        </tr>
                        <%}%>                             
                        </tbody>
                        <tfoot>
                            <tr>     
                                <th>Grupo</th>
                                <th>Aula</th>
                                <th>Clase</th>
                                <th>Fecha Inicio</th>
                                <th>Fecha Fin</th>
                                <th>Dia</th>
                                <th>Hora Inicio</th>
                                <th>Hora Fin</th>
                                <th>Estado</th>                                
                                    <%
                                        if (tipoU.equals("Administrador")) {
                                    %>
                                <th>Estado</th>
                                <th>Actualizar</th>
                                <th>
                                    <form method="post" action="generarReportesHorario.jsp" target="_blank">
                                        <input type="submit" value="Generar" class="btn btn-outline-info m-5">
                                        <input type="hidden" value="Reportes/ReporteHorario.jasper" name="nombre">  
                                    </form>
                                </th>
                                <%}%>
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
                                <th>Grupo</th>
                                <th>Aula</th>
                                <th>Clase</th>
                                <th>Fecha Inicio</th>
                                <th>Fecha Fin</th>
                                <th>Dia</th>
                                <th>Hora Inicio</th>
                                <th>Hora Fin</th>
                                <th>Estado</th>
                                <th>Reporte</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%
                                HorarioVO HorVO = new HorarioVO();
                                HorarioDAO HorDAO = new HorarioDAO(HorVO);
                                ArrayList<HorarioVO> listaHorarioPE = HorDAO.listarPE(usuVO.getIdGrupo());
                                for (int i = 0; i < listaHorarioPE.size(); i++) {

                                    HorVO = listaHorarioPE.get(i);
                            %>               
                            <tr>                
                                <td><%=HorVO.getNombreGrupo()%></td>
                                <td><%=HorVO.getNombreAula()%></td>
                                <td><%=HorVO.getNombreClase()%></td>
                                <td><%=HorVO.getFechaInicio()%></td>
                                <td><%=HorVO.getFechaFin()%></td>
                                <td><%=HorVO.getDia()%></td>
                                <td><%=HorVO.getHoraInicio()%></td>
                                <td><%=HorVO.getHoraFin()%></td>
                                <td><a class="<%=HorVO.getEstado().equals("Activo") ? "btn btn-success  m-5" : "btn btn-danger  m-5"%>" style="padding-right: 10px;">
                                        <%=HorVO.getEstado()%>
                                    </a></td> 
                                <td>   
                                    <form action="generarReporteHorarioId.jsp" method="post" target="_blank">

                                        <select name="horario" hidden="">
                                            <option value="<%=HorVO.getIdHorario()%>"></option>
                                        </select>
                                        <input type="submit" value="Generar" class="btn btn-outline-info m-5">
                                        <input type="hidden" value="Reportes/ReporteHorarioId.jasper" name="nombre">   
                                    </form>
                                </td>
                            </tr>
                            <%}%>                             
                        </tbody>
                        <tfoot>
                            <tr>     
                                <th>Grupo</th>
                                <th>Aula</th>
                                <th>Clase</th>
                                <th>Fecha Inicio</th>
                                <th>Fecha Fin</th>
                                <th>Dia</th>
                                <th>Hora Inicio</th>
                                <th>Hora Fin</th>
                                <th>Estado</th> 
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
                                <th>Grupo</th>
                                <th>Aula</th>
                                <th>Clase</th>
                                <th>Fecha Inicio</th>
                                <th>Fecha Fin</th>
                                <th>Dia</th>
                                <th>Hora Inicio</th>
                                <th>Hora Fin</th>
                                <th>Estado</th> 
                                <th>Reporte</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%
                                HorarioVO HorVO = new HorarioVO();
                                HorarioDAO HorDAO = new HorarioDAO(HorVO);
                                ArrayList<HorarioVO> listaHorarioPE = HorDAO.listarPE(usuVO.getIdGrupo());
                                for (int i = 0; i < listaHorarioPE.size(); i++) {

                                    HorVO = listaHorarioPE.get(i);
                            %>               
                            <tr>                
                                <td><%=HorVO.getNombreGrupo()%></td>
                                <td><%=HorVO.getNombreAula()%></td>
                                <td><%=HorVO.getNombreClase()%></td>
                                <td><%=HorVO.getFechaInicio()%></td>
                                <td><%=HorVO.getFechaFin()%></td>
                                <td><%=HorVO.getDia()%></td>
                                <td><%=HorVO.getHoraInicio()%></td>
                                <td><%=HorVO.getHoraFin()%></td>
                                <td><a class="<%=HorVO.getEstado().equals("Activo") ? "btn btn-success  m-5" : "btn btn-danger  m-5"%>" style="padding-right: 10px;">
                                        <%=HorVO.getEstado()%>
                                    </a></td> 
                                <td>   
                                    <form action="generarReporteHorarioId.jsp" method="post" target="_blank">

                                        <select name="horario" hidden="">
                                            <option value="<%=HorVO.getIdHorario()%>" ></option>
                                        </select>
                                        <input type="submit" value="Generar" class="btn btn-outline-info m-5">
                                        <input type="hidden" value="Reportes/ReporteHorarioId.jasper" name="nombre">   
                                    </form>
                                </td>
                            </tr>
                            <%}%>                             
                        </tbody>
                        <tfoot>
                            <tr>     
                                <th>Grupo</th>
                                <th>Aula</th>
                                <th>Clase</th>
                                <th>Fecha Inicio</th>
                                <th>Fecha Fin</th>
                                <th>Dia</th>
                                <th>Hora Inicio</th>
                                <th>Hora Fin</th>
                                <th>Estado</th>                                
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
                                "sLengthMenu": "Mostrar MENU registros",
                                "sZeroRecords": "No se encontraron resultados",
                                "sEmptyTable": "Ning????n dato disponible en esta tabla",
                                "sInfo": "Mostrando Horarios del START al END de un total de TOTAL Horarios",
                                "sInfoEmpty": "Mostrando usuarios del 0 al 0 de un total de 0 Horarios",
                                "sInfoFiltered": "(filtrado de un total de MAX Horarios)",
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
                    if (tipoU.equals("Administrador")) {
                %>
                <button class="abrir-registrar btn btn-primary" id="abrir-registrar">Registrar</button>
                <div class="overlay" id="overlay">
                    <form method="POST" action="Horario" class="form-registro needs-validation" novalidate>
                        <div class="tituloR">
                            <a href="#" class="cerrar-registro" id="cerrar-registro"><i class="fas fa-times"></i></a>
                            <h2>Registrar Horario</h2>
                        </div>
                        <div class="cuerpo">                            
                            <div class="col-md-6 ">
                                <%LocalDate fechaHoy = LocalDate.now();
                                    Calendar calendario = Calendar.getInstance();
                                    int hora = calendario.get(Calendar.HOUR);
                                    int minutos = calendario.get(Calendar.MINUTE);
                                %>
                                <label for="validationTooltip04" class="col-form-label">Fecha inicio:</label>
                                <input type="date" name="txtFechaInicio" min="<%=fechaHoy%>" required class="form-control" id="inicio">
                                <div class="valid-feedback">
                                    Correcto
                                </div>
                                <div class="invalid-feedback">
                                    Por favor registre la fecha de inicio  
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <label for="validationTooltip04" class="col-form-label">Fecha fin:</label>
                                <input type="date" name="txtFechaFin" min="" required class="form-control" id="fin">
                                <div class="valid-feedback">
                                    Correcto
                                </div>
                                <div class="invalid-feedback">
                                    Por favor registre la fecha de fin  
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <label for="validationCustom04" class="col-form-label">Dia:</label> 
                                <select required id="dia" name="txtDia" class="form-control">
                                    <option selected disabled value="">Dia...</option>

                                    <option value="Lunes">Lunes</option>
                                    <option value="Martes">Martes</option>
                                    <option value="Miercoles">Miercoles</option>
                                    <option value="Jueves">Jueves</option>
                                    <option value="Viernes">Viernes</option>

                                </select>
                                <div class="valid-feedback">
                                    Correcto
                                </div>
                                <div class="invalid-feedback">
                                    Por favor selecciona el Dia 
                                </div>
                            </div>





                            <div class="col-md-6 ">
                                <label for="validationTooltip04" class="col-form-label">Hora inicio:</label>
                                <input type="time" name="txtHoraInicio" min="" required class="form-control"  >
                                <div class="valid-feedback">
                                    Correcto
                                </div>
                                <div class="invalid-feedback">
                                    Por favor registre la hora de inicio 
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <label for="validationTooltip04" class="col-form-label">Hora fin:</label>
                                <input type="time"  name="txtHoraFin" required class="form-control" id="validationTooltip01" >
                                <div class="valid-feedback">
                                    Correcto
                                </div>
                                <div class="invalid-feedback">
                                    Por favor registre la hora de fin 
                                </div>
                            </div>



                            <div class="col-md-6 ">
                                <input type="hidden" value="Activo" name="txtEstado">
                            </div>

                            <div class="col-md-6 ">
                                <label for="validationCustom04" class="col-form-label">Grupo:</label> 
                                <select required id="validationCustom04" name="txtGrupo" class="form-control">
                                    <option selected disabled value="">Grupo</option>
                                    <%
                                        GrupoVO GruVO = new GrupoVO();
                                        GrupoDAO GruDAO = new GrupoDAO(GruVO);
                                        ArrayList< GrupoVO> listaGrupo = GruDAO.listar();
                                        for (int i = 0; i < listaGrupo.size(); i++) {

                                            GruVO = listaGrupo.get(i);
                                    %>
                                    <option value="<%=GruVO.getIdGrupo()%>"><%=GruVO.getNombre()%></option>
                                    <%
                                        }
                                    %> 
                                </select>
                                <div class="valid-feedback">
                                    Correcto
                                </div>
                                <div class="invalid-feedback">
                                    Por favor selecciona el Grupo 
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <label for="validationCustom04" class="col-form-label">Aula:</label>     
                                <select required id="validationCustom04" name="txtAula" class="form-control">
                                    <option selected disabled value="">Aula</option>
                                    <%
                                        AulaVO AulVO = new AulaVO();
                                        AulaDAO AulDAO = new AulaDAO(AulVO);
                                        ArrayList<AulaVO> listaAula = AulDAO.listar();
                                        for (int i = 0; i < listaAula.size(); i++) {

                                            AulVO = listaAula.get(i);
                                    %>
                                    <option value="<%=AulVO.getIdAula()%>"><%=AulVO.getNombre()%></option>
                                    <%
                                        }
                                    %> 
                                </select>
                                <div class="valid-feedback">
                                    Correcto
                                </div>
                                <div class="invalid-feedback">
                                    Por favor selecciona el Aula 
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <label for="validationCustom04" class="col-form-label">Clase:</label>      
                                <select required id="validationCustom04" name="txtClase" class="form-control">
                                    <option selected disabled value="">Clase</option>
                                    <%
                                        ClaseVO ClaVO = new ClaseVO();
                                        ClaseDAO ClaDAO = new ClaseDAO(ClaVO);
                                        ArrayList<ClaseVO> listaclase = ClaDAO.listar();
                                        for (int i = 0; i < listaclase.size(); i++) {

                                            ClaVO = listaclase.get(i);
                                    %>
                                    <option value="<%=ClaVO.getIdClase()%>"><%=ClaVO.getNombre()%></option>
                                    <%
                                        }
                                    %> 
                                </select>
                                <div class="valid-feedback">
                                    Correcto
                                </div>
                                <div class="invalid-feedback">
                                    Por favor selecciona la clase 
                                </div> 

                                <div class="boton">
                                    <input type="submit" id="btn" value="Registrar" class="btn btn-success">
                                    <input type="hidden" value="4" name="opcion">
                                </div>
                            </div>
                        </div>
                    </form>
                    <%}%>
                </div>
                <script>

                    let inicio = document.querySelector('[name="txtFechaInicio"]');
                    let fin = document.querySelector('[name="txtFechaFin"]');
                    let Horainicio = document.querySelector('[name="txtHoraInicio"]');
                    let Horafin = document.querySelector('[name="txtHoraFin"]');
                    let dia = document.querySelector('[name="txtDia"]');
                    let estado = document.querySelector('[name="estadoF"]');
                    let IdGrupo = document.querySelector('[name="txtGrupo"]');
                    let IdAula = document.querySelector('[name="txtAula"]');
                    let IdClase = document.querySelector('[name="txtClase"]');
                    let inputFechas = document.querySelectorAll(".Fechas");
                    let Fechas = [];
                    let inputFechasDia = document.querySelectorAll(".FechasDia");
                    let FechasDia = [];
                    let inputFormularioCompleto = document.querySelectorAll(".FormularioCompleto");
                    let FormularioCompleto = [];


                    inputFormularioCompleto.forEach(function (elemento) {
                        FormularioCompleto.push(elemento.value)
                    });
                    console.log(FormularioCompleto);
                    inicio.addEventListener('change', function (e) {
                        console.log(this.value);
                        fin.setAttribute("min", this.value);
                        event.preventDefault();

                    });
                    IdClase.addEventListener('change', function (e) {
                        let FormularioCom = inicio.value + "," + fin.value + "," + dia.value + "," + Horainicio.value + "," + Horafin.value + "," + estado.value + "," + IdGrupo.value + "," + IdAula.value + "," + IdClase.value;
                        console.log(FormularioCom);
                        if (FormularioCompleto.includes(FormularioCom)) {
                            document.getElementById("inicio").value = "";
                            document.getElementById("fin").value = "";
                            swal({
                                title: "??Advertencia!",
                                text: "Los datos elegidos ya no est??n disponibles",
                                type: 'info',
                                confirmButtonClass: "btn-primary",
                                confirmButtonText: "OK",
                                closeOnConfirm: false
                            });

                        }
                        event.preventDefault();

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
                                window.location = "consultarHorario.jsp";
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
                                window.location = "consultarHorario.jsp";
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