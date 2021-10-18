<%-- 
    Document   : conultarClase.jsp
    Created on : 25/06/2021, 02:40:36 PM
    Author     : Sebas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.ClaseDAO"%>
<%@page import="ModeloVO.ClaseVO"%>
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
                        <img src="images/LOGO4.gif" alt=""/>
                        <style type="text/css">
                            img{
                                width: 100%;
                                padding-left: 3%;
                                margin-bottom: -20%;
                                margin-top: -15%;
                            }
                            </style>
                        </a>
                    </div>

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
                        <li class="active">
                            <a href="conultarClase.jsp">
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
                    </ul>
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
                                    <h2 class="text-center">Gestionar Clase</h2>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="contenedor mt-4">

                    <table id="usuario" class="table table-striped" style="width:100%">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Estado</th>
                                <th>Cantidad de Sesiones</th>
                                <th>Estado</th>
                                <th>Actualizar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ClaseVO ClaVO = new ClaseVO();
                                ClaseDAO ClaDAO = new ClaseDAO(ClaVO);
                                ArrayList<ClaseVO> listaClase = ClaDAO.listar();
                                for (int i = 0; i < listaClase.size(); i++) {

                                    ClaVO = listaClase.get(i);
                            %>               
                            <tr>
                                <td><%=ClaVO.getIdClase()%></td>
                                <td><%=ClaVO.getNombre()%></td>
                                <td>
                                    <a class="<%=ClaVO.getEstado().equals("Activo") ? "btn btn-success  m-3" : "btn btn-danger  m-3"%>" style="padding-right: 56px;">
                                        <%=ClaVO.getEstado()%>
                                    </a>
                                </td>
                                <td class="text-center"><%=ClaVO.getCantidadSesiones()%></td> 
                                <td>
                                    <a class="btn btn-primary edit m-2 p-2" href="cambiarEstadoClase.jsp?idClase=<%=ClaVO.getIdClase()%>&estado=<%=ClaVO.getEstado()%>"><i class="fas fa-pen"></i></a>

                                </td>
                                <td>
                                    <a class="btn btn-primary edit m-2 p-2" href="actualizarClase.jsp?idClase=<%=ClaVO.getIdClase()%>&nombre=<%=ClaVO.getNombre()%>&estado=<%=ClaVO.getEstado()%>&cantidad=<%=ClaVO.getCantidadSesiones()%>"><i class="fas fa-pen"></i></a>

                                </td>

                            </tr>
                            <%}%>  
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Estado</th>
                                <th>Cantidad de Sesiones</th>
                                <th>Estado</th>
                                <th>Actualizar</th>
                            </tr>
                        </tfoot>
                    </table>
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
                                "sInfo": "Mostrando clases del _START_ al _END_ de un total de _TOTAL_ clases",
                                "sInfoEmpty": "Mostrando clases del 0 al 0 de un total de 0 clases",
                                "sInfoFiltered": "(filtrado de un total de _MAX_ clases)",
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
                <center><button class="abrir-registrar btn btn-primary"  id="abrir-registrar">Registrar</button></center>
                
                <div class="overlay" id="overlay">
                    <form method="POST" action="Clase" class="form-registro">
                        <div class="tituloR">
                            <a href="#" class="cerrar-registro" id="cerrar-registro"><i class="fas fa-times"></i></a>
                            <h2>Registrar Clase</h2>
                        </div>
                        <div class="cuerpo">
                            <div class="formulario">
                                
                                <div class="modal-body">
                                <label for="recipient-name" class="col-form-label">Nombre:</label>      
                                <input type="text" name="txtNombre" placeholder="Nombre" required class="form-control">
                                </div>
                                
                                <input type="hidden" name="txtEstado" value="Activo">
                                
                                <div class="modal-body">
                                <label for="recipient-name" class="col-form-label">Cantidad de sesiones:</label>      
                                <input type="number" name="txtcantidadSesiones" placeholder="Cantidad de Sesiones" class="form-control">
                                </div>
                                
                                <div class="selector">
                                    <input type="submit" id="btn" value="Registrar" class="btn btn-success">
                                    <input type="hidden" value="1" name="opcion">
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
                                window.location = "consultarUsuario.jsp";
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
                                window.location = "consultarUsuario.jsp";
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