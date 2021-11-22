/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.NovedadVO;
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
public class NovedadDAO extends Conexion implements Crud{
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    
    private String sql;
    
    private String idNovedad ="", descripcion="", idTipoNovedad="", tipoNovedad="", idAsistencia="", fecha="",nombreUsuario="",apellidoUsuario="",nombreGrupo="";
     
    public NovedadDAO(NovedadVO NovVO){
     
         super();
        try {
            conexion = this.obtenerConexion();
            idNovedad = NovVO.getIdNovedad();
            descripcion =NovVO.getDescripcion();
            fecha =NovVO.getFecha();
            idAsistencia=NovVO.getIdAsistencia();
            idTipoNovedad=NovVO.getIdTipoNovedad();
            tipoNovedad=NovVO.getIdTipoNovedad();        
            nombreUsuario=NovVO.getNombreUsuario();
            apellidoUsuario=NovVO.getApellidoUsuario();
            nombreGrupo=NovVO.getNombreGrupo();
        } catch (Exception e) {
            Logger.getLogger(AulaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
     }
   
    @Override
    public boolean agregarRegistro() {
    
        try {
            sql = "call agregarNovedad(?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idNovedad);
            puente.setString(2, descripcion);         
            puente.setString(3, idTipoNovedad);
            puente.setString(4, idAsistencia);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(NovedadDAO.class.getName()).log(Level.SEVERE, null, e);
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
            sql = "call actualizarNovedad(?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, descripcion);                        
            puente.setString(2, idNovedad);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(NovedadDAO.class.getName()).log(Level.SEVERE, null, e);
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
    public  ArrayList<NovedadVO> listar(){
        
        ArrayList<NovedadVO>listaNovedad = new ArrayList<>();
        
        
        try {
            conexion= this.obtenerConexion();
            sql="call consultarNovedadesA;";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                NovedadVO AuVO= new NovedadVO(mensajero.getString(1),mensajero.getString(2),
                    mensajero.getString(3), mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),
                mensajero.getString(7),mensajero.getString(8),mensajero.getString(9));
                
                   listaNovedad.add(AuVO);
            }
        
        } catch (Exception e) {
              Logger.getLogger(NovedadDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
              Logger.getLogger(NovedadDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaNovedad;
        
    }
    
    public  ArrayList<NovedadVO> listarE(String idUsuario){
        
        ArrayList<NovedadVO>listaNovedadE = new ArrayList<>();
        
        
        try {
            conexion= this.obtenerConexion();
            sql="call consultarNovedadesE(?);";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idUsuario);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                NovedadVO AuVO= new NovedadVO(mensajero.getString(1),mensajero.getString(2),
                    mensajero.getString(3), mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),
                mensajero.getString(7),mensajero.getString(8),mensajero.getString(9));
                
                   listaNovedadE.add(AuVO);
            }
        
        } catch (Exception e) {
              Logger.getLogger(NovedadDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
              Logger.getLogger(NovedadDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaNovedadE;
        
    }
    
    public  ArrayList<NovedadVO> listarP(String idGrupo){
        
        ArrayList<NovedadVO>listaNovedadP = new ArrayList<>();
        
        
        try {
            conexion= this.obtenerConexion();
            sql="call consultarNovedadesP(?);";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idGrupo);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                NovedadVO AuVO= new NovedadVO(mensajero.getString(1),mensajero.getString(2),
                    mensajero.getString(3), mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),
                mensajero.getString(7),mensajero.getString(8),mensajero.getString(9));
                
                   listaNovedadP.add(AuVO);
            }
        
        } catch (Exception e) {
              Logger.getLogger(NovedadDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
              Logger.getLogger(NovedadDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaNovedadP;
        
    }
     
      
}
