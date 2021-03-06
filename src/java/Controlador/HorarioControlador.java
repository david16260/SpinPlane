/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.HorarioDAO;
import ModeloVO.HorarioVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Julian
 */
@WebServlet(name = "HorarioControlador", urlPatterns = {"/Horario"})
public class HorarioControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String idHorario = request.getParameter("txtId");
        String fechaInicio = request.getParameter("txtFechaInicio");
        String fechaFin = request.getParameter("txtFechaFin");
        String dia = request.getParameter("txtDia");
        String horaInicio = request.getParameter("txtHoraInicio");
        String horaFin = request.getParameter("txtHoraFin");
        String estado = request.getParameter("txtEstado");
        String idGrupo = request.getParameter("txtGrupo");
        String idClase = request.getParameter("txtClase");
        String idAula = request.getParameter("txtAula");
        String nombreGrupo = request.getParameter("txtNombreGrupo");
        String nombreAula = request.getParameter("txtNombreAula");
        String nombreClase = request.getParameter("txtNombreClase");

        int opcion = Integer.parseInt(request.getParameter("opcion"));
        int opcionR = 4;
        //Instanciar el VO
        HorarioVO HorVO = new HorarioVO(idHorario, fechaInicio, fechaFin, dia, horaInicio, horaFin, estado, idGrupo, idAula, idClase, nombreGrupo, nombreAula, nombreClase);
        //Instanciar el DAO
        HorarioDAO HorDAO = new HorarioDAO(HorVO);
        switch (opcion) {
            case 4://Agregar Registro

                if (HorDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "Se registro correctamente");
                } else {
                    request.setAttribute("mensajeError", "El Horario no se registro corectamente");
                }

                request.getRequestDispatcher("consultarHorario.jsp").forward(request, response);
                break;

            case 2://Actualizar Registro
                if (HorDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "El Horario se actualizo corectamente");
                } else {
                    request.setAttribute("mensajeError", "El horario no se actualizo corectamente");
                }
                request.getRequestDispatcher("consultarHorario.jsp").forward(request, response);
                break;
            case 3://Actualizar Estado
                if (HorDAO.cambiarEstado()) {
                    request.setAttribute("mensajeExito", "El estado se actualizo corectamente");
                } else {
                    request.setAttribute("mensajeError", "El Horario no se actualizo corectamente");
                }
                request.getRequestDispatcher("consultarHorario.jsp").forward(request, response);
                break;

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
