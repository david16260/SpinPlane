<%-- 
    Document   : ConsultarUsuario
    Created on : 25/06/2021, 11:22:07 AM
    Author     : Sebas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloVO.TipoUsuarioVO" %>
<%@page import="ModeloDAO.TipoUsuarioDAO" %>

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
            <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

                <!--
            
                    Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
                    Tip 2: you can also add an image using data-image tag
            
                -->

                <div class="sidebar-wrapper">
                    <div class="logo">
                        <a href="menuF.jsp" class="simple-text">
                            SpinPlane
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
                            <a href="conultarClase.jsp">
                                <i class="pe-7s-users"></i>
                                <p>Grupo</p>
                            </a>
                        </li>
                        <li>
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
                        <li class="active">
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
                                    <a href="menuF.jsp">
                                        <i class="pe-7s-left-arrow"></i>
                                        
                                    </a>

                                </li>
                            </ul>
                            <ul style="list-style: none;">
                                <li>
                                    <h2 class="text-center">Gestionar Usuario</h2>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="contenedor mt-4">

                    <table id="usuario" class="table-striped">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Tipo de Documento</th>
                                <th>Documento</th>
                                <th>Celular</th>
                                <th>Telefono</th>
                                <th>Estado</th>
                                <th>Correo</th>
                                <th>Clave</th>
                                <th>Tipo Usuario</th>
                                <th>Estado</th>
                                <th>Actualizar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                UsuarioVO UsuVO = new UsuarioVO();
                                UsuarioDAO UsuDAO = new UsuarioDAO(UsuVO);
                                ArrayList<UsuarioVO> listaUsuario = UsuDAO.listar();
                                for (int i = 0; i < listaUsuario.size(); i++) {

                                    UsuVO = listaUsuario.get(i);
                            %>               
                            <tr>
                                <td><%=UsuVO.getUsuId()%></td>
                                <td><%=UsuVO.getNombre()%></td>
                                <td><%=UsuVO.getApellido()%></td>
                                <td><%=UsuVO.getTipoDocumento()%></td>
                                <td><%=UsuVO.getNumDocumento()%></td>
                                <td><%=UsuVO.getCelular()%></td>
                                <td><%=UsuVO.getTelefono()%></td>
                                <td>
                                    <a class="<%=UsuVO.getEstado().equals("Activo") ? "btn btn-success  m-3" : "btn btn-danger  m-3"%>" style="padding-right: 50px;">
                                        <%=UsuVO.getEstado()%>
                                    </a>
                                </td>
                                <td><%=UsuVO.getCorreo()%></td>
                                <td><%=UsuVO.getClave()%></td>
                                <td><%=UsuVO.getIdTipoUsuario().equals("1") ? "Profesor" : "Estudiante"%></td>  
                                <td>
                                    <a  class="btn btn-primary edit m-2 p-2"href="cambiarEstado.jsp?usuid=<%=UsuVO.getUsuId()%>&estado=<%=UsuVO.getEstado()%>"><i class="fas fa-pen"></i></a>

                                </td>

                                <td>
                                    <a class="btn btn-info edit m-2 p-2"href="actualizarUsuario.jsp?usuid=<%=UsuVO.getUsuId()%>&nombre=<%=UsuVO.getNombre()%>&apellido=<%=UsuVO.getApellido()%>&tipodoc=<%=UsuVO.getTipoDocumento()%>&numdoc=<%=UsuVO.getNumDocumento()%>&celular=<%=UsuVO.getCelular()%>&telefono=<%=UsuVO.getTelefono()%>&estado=<%=UsuVO.getEstado()%>&correo=<%=UsuVO.getCorreo()%>&clave=<%=UsuVO.getClave()%>&tipousu=<%=UsuVO.getIdTipoUsuario()%>"><i class="fas fa-pen"></i></a>
                                </td>

                            </tr>
                            <%}%>  
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Tipo de Documento</th>
                                <th>Documento</th>
                                <th>Celular</th>
                                <th>Telefono</th>
                                <th>Estado</th>
                                <th>Correo</th>
                                <th>Clave</th>
                                <th>Tipo Usuario</th>
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
                                "sInfo": "Mostrando usuarios del _START_ al _END_ de un total de _TOTAL_ usuarios",
                                "sInfoEmpty": "Mostrando usuarios del 0 al 0 de un total de 0 usuarios",
                                "sInfoFiltered": "(filtrado de un total de _MAX_ usuarios)",
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
                <button class="abrir-registrar btn btn-primary"  id="abrir-registrar">Registrar</button>
                <div class="overlay" id="overlay">
                    <form method="POST" action="Usuario" class="form-registro">
                        <div class="tituloR">
                            <a href="#" class="cerrar-registro" id="cerrar-registro"><i class="fas fa-times"></i></a>
                            <h2>Registrar Usuario</h2>
                        </div>
                        <div class="cuerpo">
                            <div class="formulario">
                                <input type="text" id="nombre" name="txtNombre" placeholder="Nombre" required class="input-50">
                                <input type="text" id="apellido" name="txtApellido" placeholder="Apellido" required class="input-50">
                                <div class="selector">
                                    <select id="TipoDocumento" name="txtTipoDocumento" class="estilo-selector">
                                        <option selected>Tipo de Documento</option>
                                        <option value="C.C">Cedula de Ciudadania</option>
                                        <option value="T.I">Tarjeta de Identidad</option>
                                        <option value="C.E">Cedula de Extranjeria</option>
                                    </select>
                                </div>
                                <input type="number" id="numeroDocumento" class="input-50" name="txtNumeroDocumento" required placeholder="Numero de Documento">
                                <input type="number" id="celular" name="txtCelular" placeholder="Celular" required class="input-50">
                                <input type="number" id="telefono" name="txtTelefono" placeholder="Telefono" class="input-50" >
                                <input type="hidden" value="Activo" name="txtEstado" required>
                                <input type="email" id="correo" name="txtCorreo" placeholder="Correo" required class="input-50">
                                <input type="password" name="txtClave" placeholder="Contraseña" required class="input-50">
                                <div class="selector">
                                    <select name="txtRol" class="estilo-selector">
                                        <option selected>Seleciona un opcion</option>
                                        <%
                                            TipoUsuarioDAO TipDAO = new TipoUsuarioDAO();
                                            for (TipoUsuarioVO TipVO : TipDAO.listar()) {
                                        %>
                                        <option value="<%=TipVO.getIdTipoUsuario()%>"><%=TipVO.getTipoUsuario()%></option>
                                        <% }%>
                                    </select>
                                </div>
                                <div class="selector">
                                    <input type="submit" class="btn" id="btn" value="Registrar">
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
