<%-- 
    Document   : ConsultarUsuario
    Created on : 25/06/2021, 11:22:07 AM
    Author     : Yurny B)
--%>
<%@include file="Sesiones.jsp" %>
<%@page import="ModeloVO.GrupoVO"%>
<%@page import="ModeloDAO.GrupoDAO"%>
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
        <%
            String tipoUs = usuVO.getIdTipoUsuario();
            if (tipoUs.equals("Estudiante")) {
        %>
        <script>
            window.location.href = "menu.jsp";
        </script>
        <%}%>
        <div class="wrapper">
            <div class="sidebar" data-color="orange" data-image="assets/img/siderbar.jpeg">


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
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Tipo de Documento</th>
                                <th>Documento</th>
                                <th>Celular</th>
                                <th>Estado</th>
                                <th>Correo</th>                                
                                <th>Tipo Usuario</th>
                                <th>Grupo</th>
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
                                <td><%=UsuVO.getNombre()%></td>
                                <td><%=UsuVO.getApellido()%></td>
                                <td><%=UsuVO.getTipoDocumento()%></td>
                                <td><%=UsuVO.getNumDocumento()%></td>
                                <td><%=UsuVO.getCelular()%></td>

                                <td>
                                    <a class="<%=UsuVO.getEstado().equals("Activo") ? "btn btn-success  m-3" : "btn btn-danger  m-3"%>" style="padding-right: 56px;">
                                        <%=UsuVO.getEstado()%>
                                    </a>
                                </td>
                                <td><%=UsuVO.getCorreo()%></td>                                
                                <td><%=UsuVO.getTipoUsuario()%></td>  
                                <td><%=UsuVO.getGrupo()%></td>
                                <td>
                                    <%
                                        if (UsuVO.getEstado().equals("Activo")) {
                                    %>
                                    <form method="POST" action="Usuario">
                                        <input type="hidden" name="txtId" value="<%=UsuVO.getUsuId() %>">
                                        <input type="hidden" name="txtEstado" value="Inactivo">
                                        <button class="btn btn-info edit m-2 p-2" type="submit"><i class="fas fa-pen"></i></button>
                                        <input type="hidden" name="opcion" value="5">
                                    </form>
                                    <%
                                    } else {
                                    %>
                                    <form method="POST" action="Usuario">
                                        <input type="hidden" name="txtId" value="<%=UsuVO.getUsuId() %>">
                                        <input type="hidden" name="txtEstado" value="Activo">
                                        <button class="btn btn-info edit m-2 p-2" type="submit"><i class="fas fa-pen"></i></button>
                                        <input type="hidden" name="opcion" value="5">
                                    </form>
                                    <%
                                        }
                                    %>
                                </td>

                                <td>
                                    <a class="btn btn-info edit m-2 p-2"href="actualizarUsuario.jsp?usuid=<%=UsuVO.getUsuId()%>&tipodoc=<%=UsuVO.getTipoDocumento()%>&idTipousu=<%=UsuVO.getIdTipoUsuario()%>&tipoUsuario=<%=UsuVO.getTipoUsuario()%>&idGrupo=<%=UsuVO.getIdGrupo()%>&grupo=<%=UsuVO.getGrupo()%>&nombre=<%=UsuVO.getNombre()%>&apellido=<%=UsuVO.getApellido()%>"><i class="fas fa-pen"></i></a>
                                </td>

                            </tr>
                            <%}%>  
                        </tbody>
                        <tfoot>
                            <tr>

                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Tipo de Documento</th>
                                <th>Documento</th>
                                <th>Celular</th>                                
                                <th>Estado</th>
                                <th>Correo</th>                                
                                <th>Tipo Usuario</th>
                                <th>Grupo</th>
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
                                "sLengthMenu": "Mostrar MENU registros",
                                "sZeroRecords": "No se encontraron resultados",
                                "sEmptyTable": "Ning????n dato disponible en esta tabla",
                                "sInfo": "Mostrando usuarios del START al END de un total de TOTAL usuarios",
                                "sInfoEmpty": "Mostrando usuarios del 0 al 0 de un total de 0 usuarios",
                                "sInfoFiltered": "(filtrado de un total de MAX usuarios)",
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
                <button class="abrir-registrar btn btn-primary" id="abrir-registrar">Registrar</button>
                <div class="overlay" id="overlay">
                    <form method="POST" action="Usuario" class="form-registro needs-validation" novalidate>
                        <div class="tituloR">
                            <a href="#" class="cerrar-registro" id="cerrar-registro"><i class="fas fa-times"></i></a>
                            <h2 class="textReg">Registrar Usuario</h2>
                        </div>
                        <div class="cuerpo">
                            <div class="formulario">
                                <div class="col-md-6 ">
                                    <label for="validationTooltip01" class="form-label">Nombre:</label>
                                    <input type="text" class="form-control"  id="validationTooltip01" name="txtNombre" placeholder="Nombre" minlength="3" maxlength="30" required>
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor ingresa el Nombre 
                                    </div>
                                </div>

                                <div class="col-md-6 ">
                                    <label for="validationTooltip04" class="col-form-label">Apellido:</label>
                                    <input type="text" class="form-control"  id="validationTooltip01" name="txtApellido" placeholder="Apellido" minlength="3" maxlength="30" required>
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor ingresa el apellido 
                                    </div>
                                </div>

                                <div class="col-md-6">


                                    <label for="recipient-name" class="col-form-label">Tipo documento:</label>
                                    <select id="TipoDocumento" class="form-control" name="txtTipoDocumento" >
                                        <option selected disabled value="">Selccione tipo documento</option>
                                        <option value="C.C">Cedula de Ciudadania</option>
                                        <option value="T.I">Tarjeta de Identidad</option>
                                        <option value="C.E">Cedula de Extranjeria</option>
                                    </select>

                                    <div class="invalid-feedback">
                                        Por favor selecciona el tipo documento 
                                    </div>
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>

                                </div>

                                <div class="col-md-6 ">
                                    <label for="validationTooltip01" class="form-label">N??mero de documento:</label>
                                    <input type="text" class="form-control"  id="validationTooltip01" name="txtNumeroDocumento" placeholder="Numero de Documento" minlength="7" maxlength="10" required>
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor ingresa el Numero de de documento 
                                    </div>
                                </div>

                                <div class="col-md-6 ">
                                    <label for="validationTooltip01" class="form-label">N??mero de celular:</label>
                                    <input type="number" class="form-control"  id="validationTooltip01" name="txtCelular" placeholder="Celular"minlength="10" maxlength="10" required>
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor ingresa el numero de celular 
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label for="validationCustomUsername" class="form-label">Correo:</label>
                                    <div class="input-group has-validation">
                                        <input type="email" class="form-control" id="validationCustomUsername"  minlength="10" maxlength="30" name="txtCorreo" placeholder="Correo" required>
                                        <div class="invalid-feedback">
                                            Por favor ingresa un correo valido
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 ">
                                    <label for="validationTooltip01" class="form-label">Contrase??a:</label>
                                    <input type="password" name="txtClave" placeholder="Contrase??a" class="form-control"  id="validationTooltip01" minlength="8" maxlength="30" required>
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor ingresa una contrase??a valida 
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="validationCustom04" class="col-form-label mt-0">Rol:</label>
                                    <select  id="validationCustom04" required name="txtRol" class="form-control">
                                        <option selected disabled value="">Rol...</option>
                                        <%
                                            TipoUsuarioDAO TipDAO = new TipoUsuarioDAO();
                                            for (TipoUsuarioVO TipVO : TipDAO.listar()) {
                                        %>
                                        <option value="<%=TipVO.getIdTipoUsuario()%>"><%=TipVO.getTipoUsuario()%></option>
                                        <% }%>
                                    </select>
                                    <div class="invalid-feedback">
                                        Por favor selecciona el rol 
                                    </div>
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="validationCustom04" class="col-form-label mt-0">Grupo:</label>
                                    <select  id="validationCustom04" required name="txtidGrupo" class="form-control">
                                        <option selected disabled value="">Grupo...</option>
                                        <%
                                            GrupoVO GruVO = new GrupoVO();
                                            GrupoDAO GruDAO = new GrupoDAO(GruVO);
                                            ArrayList<GrupoVO> listaGrupo = GruDAO.listar();
                                            for (int i = 0; i < listaGrupo.size(); i++) {

                                                GruVO = listaGrupo.get(i);
                                        %>
                                        <option value="<%=GruVO.getIdGrupo()%>"><%=GruVO.getNombre()%></option>
                                        <% }%>
                                    </select>
                                    <div class="invalid-feedback">
                                        Por favor selecciona el grupo 
                                    </div>
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>
                                </div>
                                <div class="col-12 mt-3">
                                    <input type="submit" class="btn btn-success" id="btn" value="Registrar">
                                    <input type="hidden" value="1" name="opcion">
                                </div>
                            </div>
                        </div>
                        <input type="hidden" value="Activo" name="txtEstado" required>

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
