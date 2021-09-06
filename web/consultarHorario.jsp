<%-- 
    Document   : ConsultarUsuario
    Created on : 25/06/2021, 11:22:07 AM
    Author     : Sebas
--%>

<%@page import="ModeloDAO.ClaseDAO"%>
<%@page import="ModeloVO.ClaseVO"%>
<%@page import="ModeloDAO.AulaDAO"%>
<%@page import="ModeloVO.AulaVO"%>
<%@page import="ModeloDAO.GrupoDAO"%>
<%@page import="ModeloVO.GrupoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.HorarioDAO"%>
<%@page import="ModeloVO.HorarioVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" />
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" href="../Css/consultar.css"/>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Horario</title>
    </head>
    <body >
        <style>
            .contenedor{
                width: 100%;
                max-width: 1400px;
                display: flex;
                justify-content: center;
                margin: auto;
                background:#fefefe;
                padding: 15px;
                margin-radius:5px; 
            }
            body{
                background:#ECECEC;
            }
            h2{
                width:100%;
                max-width: 300px;
                display: flex;
                justify-content: center;
                margin: auto;
                text-align: center;
                background: #007bff;
                border-radius:7px;
                padding: 5px;
                margin-bottom: 15px;
                margin-top: 35px;
                color: white;
            }
            h2:hover{
                background: #4CA3FF;
                color: white;
            }
            .verde{
                background: green;
                color: white;
                border-radius:5px; 
            }
            .rojo{
                background:brown;
                color: white;
            }
            .overlay {
                background: rgb(0, 0, 0, .3);
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                display: flex;
                align-items: center;
                justify-content: center;
                visibility: hidden;
            }

            .overlay.activado {
                visibility: visible;
            }

            h2 {
                color: #fff;
                text-align: center;
                margin-top: -7px;
            }

            .form-registro {
                width: 40%;
                background: #fff;
                border-radius: 8px;
                box-shadow: 0px 0px 5px 0px black;
            }

            .tituloR {
                background: #fff;
                color: #fff;
                padding: 5px;
                text-align: center;
                font-weight: 100;
                font-size: 15px;
                border-top-left-radius: 8px;
                border-top-right-radius: 8px;
            }

            .tituloR .cerrar-registro {
                font-size: 25px;
                line-height: 0px;
                display: block;
                margin-top: -5px;
                text-align: right;
                color: #BBBBBB;
            }

            .formulario {
                padding: 10px 30px;
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }

            .formulario input {
                margin-bottom: 15px;
                padding: 5px;
                font-size: 15px;
            }

            .formulario .input-50 {
                width: 45%;
            }

            .formulario .input-50:hover {
                width: 46%;
                transition: 0.5s;
            }

            .selector {
                width: 45%;
            }

            .estilo-selector {
                width: 100%;
                margin-bottom: 15px;
                height: 34px;
                overflow: hidden;
                background: #fff;
                border: 1px solid grey;
                font-size: 15px;
                appearance: none; 
                padding: 5px;
            }

            .estilo-selector:hover {
                width: 103%;
                height: 34px;
                overflow: hidden;
                background: #fff;
                border: 1px solid grey;
                font-size: 15px;
                transition: 0.5s;
            }

            .boton {
                width: 100%;
            }

            .btn {
                width: 20%;
                margin-left: 40%;
                color: white;
                background: #007bff;
                border: solid 2px #fff;
                border-radius: 5px;
            }

            .btn:hover {
                background: #4371A3;
                color: #fff;
            }
        </style>
        <h2 class="text-center mt-20">Gestion de los Horarios</h2>
        <div class="contenedor">
            <table id="usuario" class="table table-striped" style="width:100%">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Fecha Inicio</th>
                        <th>Fecha Fin</th>
                        <th>Dia</th>
                        <th>Hora Inicio</th>
                        <th>Hora Fin</th>
                        <th>Estado</th>
                        <th>Grupo</th>
                        <th>Aula</th>
                        <th>Clase</th>
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
                        <td><%=HorVO.getIdHorario()%></td>
                        <td><%=HorVO.getFechaInicio()%></td>
                        <td><%=HorVO.getFechaFin()%></td>
                        <td><%=HorVO.getDia()%></td>
                        <td><%=HorVO.getHoraInicio()%></td>
                        <td><%=HorVO.getHoraFin()%></td>
                        <%if (HorVO.getEstado()!="Inactivo") {%>
                        <td class="verde text-center"><%=HorVO.getEstado()%></td>
                        <%}else if(HorVO.getEstado()=="Inactivo"){%>
                        <td class="rojo"><%=HorVO.getEstado()%></td>
                        <%}%>
                        <td><%=HorVO.getIdGrupo()%></td>
                        <td><%=HorVO.getIdAula()%></td>
                        <td><%=HorVO.getIdGrupo()%></td>           
                    </tr>
                    <%}%>  
                </tbody>
                <tfoot>
                    <tr>
                        <th>Id</th>
                        <th>Fecha Inicio</th>
                        <th>Fecha Fin</th>
                        <th>Dia</th>
                        <th>Hora Inicio</th>
                        <th>Hora Fin</th>
                        <th>Estado</th>
                        <th>Grupo</th>
                        <th>Aula</th>
                        <th>Clase</th>
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
        <button class="abrir-registrar" id="abrir-registrar">Registrar</button>
        <div class="overlay" id="overlay">
            <form method="POST" action="Horario" class="form-registro">
                <div class="tituloR">
                    <a href="#" class="cerrar-registro" id="cerrar-registro"><i class="fas fa-times"></i></a>
                    <h2>Registrar Horario</h2>
                </div>
                <div class="cuerpo">
                    <div class="formulario">
                        <input type="date" name="txtFechaInicio" required class="input-50">
                        <input type="date" name="txtFechaFin" required class="input-50">
                        <input type="date" name="txtDia" required class="input-50">
                        <input type="time" name="txtHoraInicio" class="input-50">
                        <input type="time" name="txtHoraFin" class="input-50">
                        <input type="hidden" value="Activo" name="txtEstado">
                        <div class="selector">
                            <select name="txtGrupo" class="estilo-selector">
                                <option selected>Grupo</option>
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
                        </div>
                        <div class="selector">
                            <select name="txtAula" class="estilo-selector">
                                <option selected>Aula</option>
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
                        </div>
                        <div class="selector">
                            <select name="txtClase" class="estilo-selector">
                                <option selected>Clase</option>
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
                        </div>
                        <div class="boton">
                            <input type="submit" id="btn" value="Registrar" class="btn">
                            <input type="hidden" value="1" name="opcion">
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <script src="Js/consutarUsuario.js" type="text/javascript"></script>
    </body>
</html>
