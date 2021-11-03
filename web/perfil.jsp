<%-- 
    Document   : perfil
    Created on : 28/10/2021, 09:20:13 PM
    Author     : Sebas
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SpinPlane</title>
    </head>
    <body>
        <% UsuarioVO UsuVO = (UsuarioVO) request.getAttribute("usuario");
            if (UsuVO != null) {

        %>
        <h1><%=UsuVO.getUsuId() %></h1>
        <h1><%=UsuVO.getNombre() %></h1>
        <h1><%=UsuVO.getApellido() %></h1>
        <h1><%=UsuVO.getTipoDocumento() %></h1>
        <h1><%=UsuVO.getNumDocumento() %></h1>
        <h1><%=UsuVO.getCelular() %></h1>
        <h1><%=UsuVO.getEstado() %></h1>
        <h1><%=UsuVO.getCorreo() %></h1>
        <h1><%=UsuVO.getClave() %></h1>
        <h1><%=UsuVO.getIdTipoUsuario() %></h1>
        <h1><%=UsuVO.getTipoUsuario() %></h1>
        <%
        }
        %>
        
    </body>
</html>
