<%-- 
    Document   : actualizarHorario
    Created on : 7/09/2021, 01:09:32 PM
    Author     : Sebas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Sesiones.jsp" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/registrarUsu.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <link href="Css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="Js/sweetalert.js" type="text/javascript"></script>
        <script src="Js/sweetalert.min.js" type="text/javascript"></script>
        <title>Actualizar Usuario</title>
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
        %>
        <section>
            <div class="entra"></div>
            <div class="entra"></div>
            <div class="entra"></div>
            <div class="box">
                <div class="container2">
                    <div class="form">
                        <div class="boton-volver">
                            <a class="boton-volver" href="consultarHorario.jsp" style="font-size: 40px;"><i class="fa fa-chevron-circle-left" id="cancel"></i></a>
                        </div>
                        <h2 for="usu">Actualizar Horario</h2>
                        <form class="row g-2" method="POST" action="Horario">
                            <input type="hidden" name="txtId" placeholder="Nombre" value="<%=idHorario%>">
                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">Fecha inicio</label>
                                <input type="date" name="txtFechaInicio" id="pass"
                                       value="<%=fechaInicio%>"
                                       min="2021-01-01" max="2021-12-31">   
                            </div>
                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Fecha fin</label>
                                <input type="date" name="txtFechaFin" id="pass"
                                       value="<%=fechaFin%>"
                                       min="2021-01-01" max="2021-12-31"> 
                            </div>                                                           
                                <input type="hidden" id="inputEmail4" name="txtDia" class="form-control" placeholder="Nombre" value="<%=dia%>">
                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Hora inicio</label>
                                <input type="time" class="form-control" id="inputPassword4" name="txtHoraInicio" placeholder="Apellido" value="<%=horaInicio%>" >
                            </div>
                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Hora fin</label>
                                <input type="time"class="form-control" id="inputPassword4" name="txtHoraFin" placeholder="Apellido" value="<%=horaFin%>" >
                            </div>
                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Grupo</label>
                                <input type="text"class="form-control" id="inputPassword4" name="txtGrupo" placeholder="Apellido" value="<%=idGrupo%>" >
                            </div>
                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Aula</label>
                                <input type="text"class="form-control" id="inputPassword4" name="txtAula" placeholder="Apellido" value="<%=idAula%>" >
                            </div>
                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Clase</label>
                                <input type="text"class="form-control" id="inputPassword4" name="txtClase" placeholder="Apellido" value="<%=idClase%>" >
                            </div>
                            <div class="col-12">
                                <input type="submit" class="btn btn-primary  d-flex justify-conted-center m-auto" id="btn" value="Actualizar">
                                <input type="hidden" value="2" name="opcion">
                            </div>
                        </form>
                        <div>
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</body>
</html>


