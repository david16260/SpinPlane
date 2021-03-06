/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.AsistenciaVO;
import Util.Conexion;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author David
 */
public class AsistenciaDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;

    private String sql;

    private String idAsistencia = "", asistencia = "", fecha = "", idUsuario = "", idGrupo = "", nombreUsuario = "", nombreGrupo = "";

    public AsistenciaDAO(AsistenciaVO AsiVO) {

        super();
        try {
            conexion = this.obtenerConexion();
            idAsistencia = AsiVO.getIdAsistencia();
            asistencia = AsiVO.getAsistencia();
            fecha = AsiVO.getFecha();
            idUsuario = AsiVO.getIdUsuario();
            idGrupo = AsiVO.getIdGrupo();
            nombreUsuario = AsiVO.getNombreUsuario();
            nombreGrupo = AsiVO.getNombreGrupo();

        } catch (Exception e) {
            Logger.getLogger(AsistenciaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "call agregarAsistencia(?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idAsistencia);
            puente.setString(2, asistencia);
            puente.setString(3, idUsuario);
            puente.setString(4, idGrupo);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(AsistenciaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();

            } catch (SQLException e) {
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "call actualizarAsistencia(?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, asistencia);
            puente.setString(2, fecha);
            puente.setString(3, idUsuario);
            puente.setString(4, idGrupo);
            puente.setString(5, idAsistencia);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(GrupoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();

            } catch (SQLException e) {
            }
        }
        return operacion;
    }

    @Override
    public boolean cambiarEstado() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ArrayList<AsistenciaVO> listar() {

        ArrayList<AsistenciaVO> listaAsistencia = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();

            sql = "call consultarAsistenciasA";


            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                AsistenciaVO AsisVO = new AsistenciaVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5),
                        mensajero.getString(6), mensajero.getString(7),mensajero.getString(8));

                listaAsistencia.add(AsisVO);
            }

        } catch (Exception e) {
            Logger.getLogger(AsistenciaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();

            } catch (SQLException e) {
                Logger.getLogger(AsistenciaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaAsistencia;

    }
    
    public ArrayList<AsistenciaVO> listarE(String idUsuario) {

        ArrayList<AsistenciaVO> listaAsistenciaE = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();

            sql = "call consultarAsistenciasE(?)";


            puente = conexion.prepareStatement(sql);
            puente.setString(1, idUsuario);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                AsistenciaVO AsisVO = new AsistenciaVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5),
                        mensajero.getString(6), mensajero.getString(7),mensajero.getString(8));

                listaAsistenciaE.add(AsisVO);
            }

        } catch (Exception e) {
            Logger.getLogger(AsistenciaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();

            } catch (SQLException e) {
                Logger.getLogger(AsistenciaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaAsistenciaE;

    }
    
    public ArrayList<AsistenciaVO> listarP(String idGrupo) {

        ArrayList<AsistenciaVO> listaAsistenciaP = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();

            sql = "call consultarAsistenciasP(?)";


            puente = conexion.prepareStatement(sql);
             puente.setString(1, idGrupo);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                AsistenciaVO AsisVO = new AsistenciaVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5),
                        mensajero.getString(6), mensajero.getString(7),mensajero.getString(8));

                listaAsistenciaP.add(AsisVO);
            }

        } catch (Exception e) {
            Logger.getLogger(AsistenciaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();

            } catch (SQLException e) {
                Logger.getLogger(AsistenciaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaAsistenciaP;

    }
    
    public AsistenciaVO listaAsistenciaAD(String idGrupo) {

        AsistenciaVO AsiVO = null;

        try {

            conexion = this.obtenerConexion();
            sql = "call asistenciaFechaGrupo(?);";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idGrupo);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                AsiVO = new AsistenciaVO(mensajero.getString(1),mensajero.getString(2),mensajero.getString(3));
            }

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();

            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return AsiVO;

    }
}
