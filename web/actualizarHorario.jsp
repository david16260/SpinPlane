<%-- 
    Document   : actualizarHorario
    Created on : 7/09/2021, 01:09:32 PM
    Author     : Sebas
--%>

<%@page import="ModeloDAO.ClaseDAO"%>
<%@page import="ModeloVO.ClaseVO"%>
<%@page import="ModeloDAO.AulaDAO"%>
<%@page import="ModeloVO.AulaVO"%>
<%@page import="ModeloDAO.GrupoDAO"%>
<%@page import="ModeloVO.GrupoVO"%>
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
            String idHorario = request.getParameter("idHorario");
            String fechaInicio = request.getParameter("fechaInicio");
            String fechaFin = request.getParameter("fechaFin");
            String dia = request.getParameter("dia");
            String horaInicio = request.getParameter("horaInicio");
            String horaFin = request.getParameter("horaFin");
            String idGrupo = request.getParameter("idGrupo");
            String idAula = request.getParameter("idAula");
            String idClase = request.getParameter("idClase");
            String nomGrupo = request.getParameter("nomGrupo");
            String nomAula = request.getParameter("nomAula");
            String nomClase = request.getParameter("nomClase");
        %>
        <%
                        String tipoU = usuVO.getIdTipoUsuario();
                        if (tipoU.equals("Estudiante")|| tipoU.equals("Profesor")) {
                    %>
                    <script>
                        window.location.href = "menu.jsp";
                    </script>
                    <%}%>
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
                                    <h2 class="text-center">Gestionar Horario</h2>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>


                <div class="contenedor mt-4">


                    <form method="POST" action="Horario" class="form-registro needs-validation" novalidate>
                        <div class="tituloR">
                            <a href="consultarHorario.jsp" class="cerrar-registro" id="cerrar-registro"><i class="fas fa-times"></i></a>
                            <h2 class="textReg">Actualizar Horario</h2>
                        </div>
                        <div class="cuerpo">
                            <div class="formulario">
                                <input type="hidden" name="txtId" value="<%=idHorario %>">
                                <input type="hidden" name="txtAula" value="<%=idAula %>">
                                <input type="hidden" name="txtClase" value="<%=idClase %>">
                                <input type="hidden" name="txtGrupo" value="<%=idGrupo %>">
                                
                                <div class="col-md-6 ">
                                    <label for="validationTooltip01" class="col-form-label">Fecha Inicio:</label>  
                                    <input type="date" class="form-control" value="<%=fechaInicio %>" id="validationTooltip01" name="txtFechaInicio"  required >
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor registre la fecha de inicio  
                                    </div>
                                </div>
                                
                                <div class="col-md-6 ">
                                    <label for="validationTooltip01" class="col-form-label">Fecha Fin:</label>  
                                    <input type="date" class="form-control" value="<%=fechaFin %>"  id="validationTooltip01" name="txtFechaFin" placeholder="Nombre" required >
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor registre la fecha de fin  
                                    </div>
                                </div>
                                
                                <div class="col-md-6 ">
                                    <label for="validationCustom04" class="col-form-label">Dia:</label> 
                                    <select required id="validationCustom04" name="txtDia" class="form-control">
                                        <option value="<%=dia%>"><%=dia%></option>

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
                                    <label for="validationTooltip01" class="col-form-label">Hora Inicio:</label>  
                                    <input type="time" class="form-control" value="<%=horaInicio %>" id="validationTooltip01" name="txtHoraInicio" required >
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor registre la hora de inicio  
                                    </div>
                                </div>
                                
                                <div class="col-md-6 ">
                                    <label for="validationTooltip01" class="col-form-label">Hora Fin:</label>  
                                    <input type="time" class="form-control" value="<%=horaFin %>" id="validationTooltip01" name="txtHoraFin" placeholder="Nombre" required >
                                    <div class="valid-feedback">
                                        Correcto
                                    </div>
                                    <div class="invalid-feedback">
                                        Por favor registre la hora de fin  
                                    </div>
                                </div>   
                                
                                <div class="col-md-6 ">
                                    <label for="validationCustom04" class="col-form-label">Grupo:</label> 
                                    <select required id="validationCustom04" name="txtGrupo" class="form-control">
                                        <option value="<%=idGrupo%>"><%=nomGrupo%></option>
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
                                        <option value="<%=idAula%>"><%=nomAula%></option>
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
                                        <option selected disabled value="<%=idClase%>"><%=nomClase%></option>
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
