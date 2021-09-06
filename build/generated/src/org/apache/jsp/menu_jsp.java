package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.util.ArrayList;
import ModeloVO.UsuarioVO;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Sesiones.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-cotrol", "no-cache,no-store,must-revalidate");
    response.setDateHeader("Expires", 0);

      out.write('\n');
      out.write('\n');

    HttpSession buscarSesion = (HttpSession)request.getSession();
    String usuario="";
    
    if (buscarSesion.getAttribute("datos") ==null){
    request.getRequestDispatcher("index.jsp").forward(request, response);
        
    
        }else{
        UsuarioVO usuVO = (UsuarioVO)buscarSesion.getAttribute("datos");
        usuario = usuVO.getCorreo();
    
    }


      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Css/Estilos.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Css/sesiones.css\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <nav>\n");
      out.write("        <ul>\n");
      out.write("           \n");
      out.write("            \n");
      out.write("        ");

        UsuarioVO usuVO = new UsuarioVO();
        ArrayList<UsuarioVO> listaRoles=(ArrayList<UsuarioVO>)buscarSesion.getAttribute("roles");
           for (int i = 0; i < listaRoles.size(); i++) {
                        usuVO = listaRoles.get(i);
           
        
        
      out.write("\n");
      out.write("        \n");
      out.write("        <option value=\"");
      out.print(usuVO.getIdTipoUsuario());
      out.write('"');
      out.write('>');
      out.print(usuVO.getIdTipoUsuario());
      out.write("</option>\n");
      out.write("        \n");
      out.write("        ");
 }
      out.write("\n");
      out.write("                   \n");
      out.write("           \n");
      out.write("            <h1 class=\"bienvenido\">Bienvenido:");
      out.print(usuario);
      out.write("</h1>\n");
      out.write("          </ul>\n");
      out.write("      </nav>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- Created By CodingNepal -->\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Menu</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\" />\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n");
      out.write("              integrity=\"sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("                integrity=\"sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css\" />\n");
      out.write("        <link href=\"Css/sweetalert.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <scrip src=\"https://code.jquery.com/jquery-migrate-1.4.1.min.js\"></scrip>\n");
      out.write("        <script src=\"Js/sweetalert.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"Js/sweetalert.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"Css/templatemo-style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Css/lightbox.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Css/menu.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <input type=\"checkbox\" id=\"check\">\n");
      out.write("        <label for=\"check\">\n");
      out.write("            <i class=\"fas fa-bars\" id=\"btn\"></i>\n");
      out.write("            <i class=\"fa fa-chevron-circle-left\" id=\"cancel\"></i>\n");
      out.write("        </label>\n");
      out.write("        <div class=\"sidebar\">\n");
      out.write("            <header>\n");
      out.write("                <p id=\"titulo\" class=\"animation\">Academia Bottie school</p>\n");
      out.write("            </header>\n");
      out.write("            <ul class=\"menu\">\n");
      out.write("            <li><a href=\"#\"><i class=\"icono izquierda fas fa-clipboard-list\"></i>Asistencia<i class=\"icono derecha fas fa-chevron-down\"></i></a>\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"consultarAsistencia.jsp\"><i class=\"icono izquierda fas fa-search\"></i>Buscar Asistencias</a></li>\n");
      out.write("                <li><a href=\"registrarAsistencia.jsp\"><i class=\"icono izquierda fas fa-plus-circle\"></i>Registrar Asistencia</a></li>\n");
      out.write("            </ul>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\"><i class=\"icono izquierda fas fa-archway\"></i>Aula<i class=\"icono derecha fas fa-chevron-down\"></i></i></a>\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"\"><a href=\"consultarAula.jsp\"><i class=\"icono izquierda fas fa-search\"></i>Buscar Aula</a></li>\n");
      out.write("                <li class=\"\"><a href=\"registrarAula.jsp\"><i class=\"icono izquierda fas fa-plus-circle\"></i>Registrar Aula</a></li>\n");
      out.write("            </ul>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\"><i class=\"icono izquierda fas fa-door-open\"></i>Clase<i class=\"icono derecha fas fa-chevron-down\"></i></a>\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"\"><a href=\"conultarClase.jsp\"><i class=\"icono izquierda fas fa-search\"></i>Buscar Clase</a></li>\n");
      out.write("                <li class=\"\"><a href=\"registrarClase.jsp\"><i class=\"icono izquierda fas fa-plus-circle\"></i>Registrar Clase</a></li>\n");
      out.write("            </ul>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\"><i class=\"icono izquierda fas fa-users\"></i>Grupo<i class=\"icono derecha fas fa-chevron-down\"></i></a>\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"\"><a href=\"conultarClase.jsp\"><i class=\"icono izquierda fas fa-search\"></i>Buscar Grupos</a></li>\n");
      out.write("                <li class=\"\"><a href=\"registrarGrupo.jsp\"><i class=\"icono izquierda fas fa-plus-circle\"></i>Registrar Grupo</a></li>\n");
      out.write("            </ul>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\"><i class=\"icono izquierda fas fa-users\"></i>Horario<i class=\"icono derecha fas fa-chevron-down\"></i></a>\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"\"><a href=\"consultarHorario.jsp\"><i class=\"icono izquierda fas fa-search\"></i>Buscar Horario</a></li>\n");
      out.write("                <li class=\"\"><a href=\"registrarHorario.jsp\"><i class=\"icono izquierda fas fa-plus-circle\"></i>Registrar Horario</a></li>\n");
      out.write("            </ul>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\"><i class=\"icono izquierda fas fa-users\"></i>Novedad<i class=\"icono derecha fas fa-chevron-down\"></i></a>\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"\"><a href=\"consultarNovedad.jsp\"><i class=\"icono izquierda fas fa-search\"></i>Buscar Novedad</a></li> \n");
      out.write("                <li class=\"\"><a href=\"registrarNovedad.jsp\"><i class=\"icono izquierda fas fa-plus-circle\"></i>Registrar Novead</a></li>\n");
      out.write("            </ul>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\"><i class=\"icono izquierda fa fa-user-plus\"></i>Usuario<i class=\"icono derecha fas fa-chevron-down\"></i></a>\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"\"><a href=\"consultarUsuario.jsp\"><i class=\"icono izquierda fas fa-search\"></i>Buscar Usuarios</a></li>\n");
      out.write("                <li class=\"\"><a href=\"registrarUsuario.jsp\"><i class=\"icono izquierda fas fa-plus-circle\"></i>Registrar Usuario</a></li>\n");
      out.write("            </ul>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"animation\">\n");
      out.write("                <form method=\"post\" action=\"Sesiones\">\n");
      out.write("                    <input class=\"cerrar\" type=\"submit\" value=\"Cerrar Sesion\">\n");
      out.write("                </form>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("        </div>\n");
      out.write("        <section class=\"section my-services\" data-section=\"section2\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"section-heading\">\n");
      out.write("                    <h2>Academia de baile Bottie School</h2>\n");
      out.write("                    <div class=\"line-dec\"></div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"service-item\" id=\"1\">\n");
      out.write("                            <div class=\"first-service-icon service-icon\"></div>\n");
      out.write("                            <h4>Misión</h4>\n");
      out.write("                            <p>\n");
      out.write("                                Somos una escuela de baile dedicada a la formación integral de personas, haciendo uso de la danza como una herramienta de bienestar para fortalecer las áreas física, social y emocional de nuestra comunidad, a través de la creación de espacios que permitan la diversión y el sano entretenimiento.\n");
      out.write("                            </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"service-item\" id=\"segundo\">\n");
      out.write("                            <div class=\"second-service-icon service-icon\"></div>\n");
      out.write("                            <h4>Visión</h4>\n");
      out.write("                            <p>\n");
      out.write("                                Ser reconocidos como la mejor escuela de baile en Bogotá, no solo por la participación de nuestros bailarines en eventos locales y nacionales, sino también por la calidad, excelencia y compromiso en el servicio de enseñanza dirigido a todos nuestros usuarios.\n");
      out.write("                            </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"service-item\" id=\"tercero\">\n");
      out.write("                            <div class=\"third-service-icon service-icon\"></div>\n");
      out.write("                            <h4>Beneficios</h4>\n");
      out.write("                            <p>\n");
      out.write("                                Con el baile se obtienen beneficios mejorando nuestra calidad de vida y salud, relacionado como la actividad física más completa, cuando bailamos se ejercita todo nuestro cuerpo desarrollando energía y vitalidad, logrando así un buen nivel físico.\n");
      out.write("                            </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"service-item\" id=\"4\">\n");
      out.write("                            <div class=\"fourth-service-icon service-icon\"></div>\n");
      out.write("                            <h4>Clases</h4>\n");
      out.write("                            <p>\n");
      out.write("                                Curso dirigido para todas las edades y en especial para los niños entre 4 y 10 años de edad que hacen uso del baile como medio fundamental para potencializar habilidades y cualidades para la vida, promoviendo el desarrollo motriz, social y cognitivo, con el fin de mejorar su calidad de vida.\n");
      out.write("                            </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        ");
 if (request.getAttribute("mensajeBienvenida") != null) {
      out.write("\n");
      out.write("        <script  type=\"text/javascript\">\n");
      out.write("            swal({\n");
      out.write("                title: \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeBienvenida}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\",\n");
      out.write("                type: 'success',\n");
      out.write("                confirmButtonClass: \"btn-primary\",\n");
      out.write("                confirmButtonText: \"OK\",\n");
      out.write("                closeOnConfirm: false\n");
      out.write("            },\n");
      out.write("                    function () {\n");
      out.write("                        window.location = \"menu.jsp\";\n");
      out.write("                    });\n");
      out.write("        </script>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\"></script>\n");
      out.write("    <script src=\"Js/menu.js\"></script>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"Js/app.js\" type=\"text/javascript\"></script>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
