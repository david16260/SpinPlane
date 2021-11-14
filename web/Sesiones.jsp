<%-- 
    Document   : Sesiones
    Created on : 31/05/2021, 09:08:27 AM
    Author     : David
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-cotrol", "no-cache,no-store,must-revalidate");
    response.setDateHeader("Expires", 0);
%>

<%
    HttpSession buscarSesion = (HttpSession)request.getSession();
    String usuario="";
    
    if (buscarSesion.getAttribute("datos") ==null){
    request.getRequestDispatcher("index.jsp").forward(request, response);
        
    
        }else{
        UsuarioVO usuVO = (UsuarioVO)buscarSesion.getAttribute("datos");
        usuario = usuVO.getCorreo();
    
    }
%>
<html>
    <head>
        <link rel="stylesheet" href="Css/Estilos.css">
        <link rel="stylesheet" href="Css/sesiones.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SpinPlane</title>
        <link rel="shortcut icon" href="images/LOGO2.gif" />
    </head>
    <body>
          <nav>
        <ul>
           
            
        <%
        UsuarioVO usuVO = new UsuarioVO();
        ArrayList<UsuarioVO> listaRoles=(ArrayList<UsuarioVO>)buscarSesion.getAttribute("roles");
           for (int i = 0; i < listaRoles.size(); i++) {
                        usuVO = listaRoles.get(i);
           
        
        %>
        
        
        <% }%>
                   
           
            <!--<h1 class="bienvenido">Bienvenido:<%=usuario%></h1>-->
          </ul>
      </nav>
       
    </body>
</html>
