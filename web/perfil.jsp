<%@include file="Sesiones.jsp" %>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" />
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css"/>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
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
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
        <link rel="stylesheet" href="Css/consultarUsuario.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SpinPlane</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords"
              content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Admin-Pro lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Admin-Pro lite design, Admin-Pro lite dashboard bootstrap 5 dashboard template">
        <meta name="description"
              content="Admin-Pro Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
        <meta name="robots" content="noindex,nofollow">
        <title>Admin-Pro Lite Template by WrapPixel</title>
        <link rel="canonical" href="https://www.wrappixel.com/templates/adminpro-lite/" />
        <!-- Favicon icon -->
        <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
        <!-- Bootstrap Core CSS -->
        <link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="Css/style.css" rel="stylesheet">
        <!-- You can change the theme colors from here -->
        <link href="css/colors/default-dark.css" id="theme" rel="stylesheet">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <!-- Favicon icon -->
        <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
        <!-- Bootstrap Core CSS -->
        <link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
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


        <!--     Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

    </head>
    <body class="fix-header card-no-border fix-sidebar">
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

            <div >
                <nav class="navbar navbar-default navbar-fixed">
                    <div>
                        <div>
                            <ul style="list-style: none; margin-top: 15px;">
                                <li>
                                <center><h2 class="text-themecolor">Perfil</h2></center>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>



                <% UsuarioVO UsuVO = (UsuarioVO) request.getAttribute("usuario");
                    if (UsuVO != null) {

                %>

                <!-- ============================================================== -->
                <!-- Main wrapper - style you can find in pages.scss -->
                <!-- ============================================================== -->
                <div id="main-wrapper">

                    <div class="page-wrapper">
                        <!-- ============================================================== -->
                        <!-- Container fluid  -->
                        <!-- ============================================================== -->
                        <div class="container-fluid">
                            <!-- ============================================================== -->
                            <!-- Bread crumb and right sidebar toggle -->
                            <!-- ============================================================== -->

                            <!-- ============================================================== -->
                            <!-- End Bread crumb and right sidebar toggle -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- Start Page Content -->
                            <!-- ============================================================== -->
                            <!-- Row -->

                            <div class="row">
                                <!-- Column -->
                                <div class="col-lg-4 col-xlg-3">
                                    <div class="card">
                                        <div class="card-body">
                                            <center class="mt-4"> <img src="images/estudiante1.jpg" class="img-circle"width="150" />
                                                <h4 class="card-title mt-2"><%=UsuVO.getNombre()%></h4>
                                                <h6 class="card-subtitle"><%=UsuVO.getTipoUsuario()%></h6>

                                            </center>
                                        </div>
                                    </div>
                                </div>
                                <!-- Column -->

                                <div class="col-lg-8 col-xlg-9">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="form-horizontal form-material mx-2">
                                                <br>
                                                <div class="form-group">
                                                    <label class="col-md-12">Nombre completo:</label>
                                                    <input class="form-control m-l-15 form-control-line" value="<%=UsuVO.getNombre()%>">

                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-12">Apellido completo:</label>
                                                    <input class="form-control m-l-15 form-control-line" value="<%=UsuVO.getApellido()%>">

                                                </div>
                                                <div class="form-group">
                                                    <label for="example-email" class="col-md-12">Tipo de identificación:</label>
                                                    <input class="form-control m-l-15 form-control-line" value="<%=UsuVO.getTipoDocumento()%>">
                                                </div>
                                                <div class="form-group">
                                                    <label for="example-email" class="col-md-12">Número de identificación:</label>
                                                    <input class="form-control m-l-15 form-control-line" value="<%=UsuVO.getNumDocumento()%>">
                                                </div>
                                                <div class="form-group">
                                                    <label for="example-email" class="col-md-12">Grupo:</label>
                                                    <input class="form-control m-l-15 form-control-line" value="<%=UsuVO.getGrupo() %>">
                                                </div>
                                                <div class="form-group">
                                                    <label for="example-email" class="col-md-12">Correo:</label>
                                                    <input class="form-control m-l-15 form-control-line" value="<%=UsuVO.getCorreo()%>"> 


                                                </div>
                                                <div class="form-group">
                                                    <label for="example-email" class="col-md-12">Teléfono:</label>                                                    
                                                    <input class="form-control m-l-15 form-control-line" value="<%=UsuVO.getCelular()%>">                                                    
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-12">Contraseña:</label>                                                    
                                                    <input type="password" value="<%=UsuVO.getClave()%>"
                                                           class="form-control m-l-15 form-control-line" >                                                    
                                                </div>                                                                                                                                              
                                            <button class="abrir-registrar btn btn-success" id="abrir-registrar">Atualizar</button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Column -->
                                </div>
                                
                            </div>
                            <!-- ============================================================== -->
                            <!-- End Container fluid  -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- footer -->
                            <!-- ============================================================== -->

                            <div class="overlay" id="overlay">
                                <form method="POST" action="Usuario" class="form-registro needs-validation" novalidate>
                                    <div class="tituloR">
                                        <a href="#" class="cerrar-registro" id="cerrar-registro"><i class="fas fa-times"></i></a>
                                        <h2 class="textReg">Datos del Usuario</h2>
                                    </div>
                                    <div class="cuerpo">
                                        <div class="formulario">
                                            <div class="col-md-6 ">
                                                <input type="hidden" name="txtId" value="<%=UsuVO.getUsuId()%>">
                                                <label for="validationTooltip01" class="form-label">Nombre:</label>
                                                <input value="<%=UsuVO.getNombre()%>" type="text" class="form-control"  id="validationTooltip01" name="txtNombre" placeholder="Nombre" minlength="3" maxlength="30" required>
                                                <div class="valid-feedback">
                                                    Correcto
                                                </div>
                                                <div class="invalid-feedback">
                                                    Por favor ingresa el Nombre 
                                                </div>
                                            </div>

                                            <div class="col-md-6 ">
                                                <label for="validationTooltip04" class="form-label">Apellido:</label>
                                                <input value="<%=UsuVO.getApellido()%>" type="text" class="form-control"  id="validationTooltip01" name="txtApellido" placeholder="Apellido" minlength="3" maxlength="30" required>
                                                <div class="valid-feedback">
                                                    Correcto
                                                </div>
                                                <div class="invalid-feedback">
                                                    Por favor ingresa el apellido 
                                                </div>
                                            </div>
                                            <div class="col-md-6 ">
                                                <label for="validationTooltip01" class="form-label">Número de celular:</label>
                                                <input value="<%=UsuVO.getCelular()%>" type="number" class="form-control"  id="validationTooltip01" name="txtCelular" placeholder="Celular"minlength="10" maxlength="10" required>
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
                                                    <input value="<%=UsuVO.getCorreo()%>" type="email" class="form-control" id="validationCustomUsername"  minlength="10" maxlength="30" name="txtCorreo" placeholder="Correo" required>
                                                    <div class="invalid-feedback">
                                                        Por favor ingresa un correo valido
                                                    </div>
                                                    <div class="valid-feedback">
                                                        Correcto
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 ">
                                                <label for="validationTooltip01" class="form-label">Contraseña:</label>
                                                <input value="" type="password" name="txtClave" placeholder="Contraseña" class="form-control"  id="validationTooltip01" minlength="8" maxlength="30" required>
                                                <div class="valid-feedback">
                                                    Correcto
                                                </div>
                                                <div class="invalid-feedback">
                                                    Por favor ingresa una contraseña valida 
                                                </div>
                                            </div>
                                            <div class="col-12 mt-3">
                                                <input type="submit" class="btn btn-success" id="btn" value="Actualizar">
                                                <input type="hidden" value="6" name="opcion">
                                            </div>
                                        </div>
                                    </div>                                    
                                </form>
                            </div>
                            <%
                                }
                            %>
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
                                            window.location = "menu.jsp";
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
                                            window.location = "menu.jsp";
                                        });
                            </script>
                            <%}%>
                            <script src="Js/consutarUsuario.js" type="text/javascript"></script>
                            <footer class="footer"><p class="copyright text-center">
                                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">SpinPlane</a>
                                </p> </footer>
                            </footer>
                        </div>
                    </div>   
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
</html>