/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.AulaVO;
import ModeloVO.ClaseVO;
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
 * @author Sebas
 */
public class ClaseDAO extends Conexion implements Crud{
       
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    
    private String sql;
    
    private String  idClase = "", nombre = "", estado = "", cantidadSesiones ="",idUsuario;
    
    public ClaseDAO(ClaseVO claVO){
     
         super();
        try {
            conexion = this.obtenerConexion();
            idClase = claVO.getIdClase();
            nombre =claVO.getNombre();
            estado =claVO.getEstado();
            idUsuario = claVO.getIdUsuario();
            cantidadSesiones=claVO.getCantidadSesiones();
        } catch (Exception e) {
            Logger.getLogger(ClaseDAO.class.getName()).log(Level.SEVERE, null, e);
        }
     }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "call agregarClase(?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idClase);
            puente.setString(2, nombre);
            puente.setString(3, estado);
            puente.setString(4, cantidadSesiones);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(ClaseDAO.class.getName()).log(Level.SEVERE, null, e);
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
            sql = "call actualizarClase(?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombre);
            puente.setString(2, cantidadSesiones);
            puente.setString(3, idClase);
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
        try {
            sql = "call cambiarEstadoClase(?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, estado);
            puente.setString(2, idClase);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(ClaseDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();

            } catch (SQLException e) {
            }
        }
        return operacion;
    }
     public  ArrayList<ClaseVO> listar(){
        
        ArrayList<ClaseVO>listaClase = new ArrayList<>();
        
        
        try {
            conexion= this.obtenerConexion();
            sql="call consultarClasesA;";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                ClaseVO ClaVO= new ClaseVO(mensajero.getString(1),mensajero.getString(2),
                    mensajero.getString(3), mensajero.getString(4));
                
                   listaClase.add(ClaVO);
            }
        
        } catch (Exception e) {
              Logger.getLogger(ClaseDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
              Logger.getLogger(ClaseDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaClase;
        
    
    }
     
      public  ArrayList<ClaseVO> listarPE(String idUsuario){
        
        ArrayList<ClaseVO>listaClasePE = new ArrayList<>();
        
        
        try {
            conexion= this.obtenerConexion();
            sql="call consultarClasesPE(?);";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,idUsuario);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                ClaseVO ClaVO= new ClaseVO(mensajero.getString(1),mensajero.getString(2),
                    mensajero.getString(3));
                
                   listaClasePE.add(ClaVO);
            }
        
        } catch (Exception e) {
              Logger.getLogger(ClaseDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
              Logger.getLogger(ClaseDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaClasePE;
    }
}
