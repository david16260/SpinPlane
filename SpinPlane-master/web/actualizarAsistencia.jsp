<%-- 
    Document   : actualizarAsistencia
    Created on : Sep 6, 2021, 11:32:32 AM
    Author     : Julian
--%>

<%@page import="ModeloVO.NovedadVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
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
        <title>Actualizar Asistencia</title>
    </head>
    <body>
        <%
            String idAsistencia = request.getParameter("idAsistencia");
            String asistencia = request.getParameter("asistencia");
            String fecha = request.getParameter("fecha");
            String usuario = request.getParameter("usuario");
            String grupo = request.getParameter("grupo");
        %>
        <section>
            <div class="entra"></div>
            <div class="entra"></div>
            <div class="entra"></div>
            <div class="box">
                <div class="container2">
                    <div class="form">
                        <div class="boton-volver">
                            <a class="boton-volver" href="consultarAsistencia.jsp" style="font-size: 40px;"><i class="fa fa-chevron-circle-left" id="cancel"></i></a>
                        </div>
                        <h2 for="usu">Actualizar Asistencia</h2>
                        <form class="row g-3" method="POST" action="Asistencia">
                            <input type="hidden" name="txtId" placeholder="Id" value="<%=idAsistencia%>">
                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">Asistencia</label>
                                <select class="custom-select" name="txtAsistencia">
                                    <%
                                      if(asistencia.equals("si")){  
                                    %>    
                                    <option value="Si">Si</option>
                                    <option value="No">No</option>
                                    <%
                                        }else{
                                    %>
                                    <option value="No">No</option>
                                    <option value="Si">Si</option>
                                    <%
                                        }
                                    %>    
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Fecha</label>
                                <input type="date" class="form-control" id="inputPassword4" name="txtFecha" placeholder="Fecha inicio" value="<%=fecha%>" >
                            </div>
                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">Usuario</label>
                                <input type="number" class="form-control" id="inputEmail4" name="txtIdUsuario" placeholder="Fecha fin" value="<%=usuario%>">
                            </div>
                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">Grupo</label>
                                <input type="number"  class="form-control" id="inputEmail4" name="txtIdGrupo"  placeholder="Tipo novedad" value="<%=grupo%>">
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
                                            window.location = "actualizarNovedad.jsp";
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
                                            window.location = "consultarNovedad.jsp";
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
