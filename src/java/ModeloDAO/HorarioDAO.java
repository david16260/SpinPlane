/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.HorarioVO;
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
 * @author Julian
 */
public class HorarioDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    private String idHorario = "", fechaInicio = "", fechaFin = "", dia = "",horaInicio = "", horaFin = "", estado = "",idGrupo="",idAula="",idClase="",nombreGrupo="",nombreAula="",nombreClase="";

    public HorarioDAO(HorarioVO HorVO) {
        super();
        try {
            conexion = this.obtenerConexion();
            idHorario = HorVO.getIdHorario();
            fechaInicio = HorVO.getFechaInicio();
            fechaFin = HorVO.getFechaFin();
            dia = HorVO.getDia();
            horaInicio = HorVO.getHoraInicio();
            horaFin = HorVO.getHoraFin();
            estado = HorVO.getEstado();
            idGrupo = HorVO.getIdGrupo();
            idAula = HorVO.getIdAula();
            idClase = HorVO.getIdClase();
            nombreGrupo = HorVO.getNombreGrupo();
            nombreAula = HorVO.getNombreAula();
            nombreClase = HorVO.getNombreClase();
            

        } catch (Exception e) {
            Logger.getLogger(HorarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try{
        sql = "INSERT INTO horario (idHorario,fechaInicio,fechaFin,dia,horaInicio,horaFin,estado,idGrupo,idAula,idClase) VALUES (?,?,?,?,?,?,?,?,?,?);";
        puente = conexion.prepareStatement(sql);
            puente.setString(1, idHorario);
            puente.setString(2, fechaInicio);
            puente.setString(3, fechaFin);
            puente.setString(4, dia);
            puente.setString(5, horaInicio);
            puente.setString(6, horaFin);
            puente.setString(7, estado);
            puente.setString(8, idGrupo);
            puente.setString(9, idAula);
            puente.setString(10, idClase);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(HorarioDAO.class.getName()).log(Level.SEVERE, null, e);
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
            sql = "UPDATE `horario` SET `fechaInicio`=?,`fechaFin`=?,`dia`=?,`horaInicio`=?,`horaFin`=?,`estado`=?,`idGrupo`=?,`idAula`=?,`idClase`=? WHERE `idHorario`=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, fechaInicio);
            puente.setString(2, fechaFin);
            puente.setString(3, dia);
            puente.setString(4, horaInicio);
            puente.setString(5, horaFin);
            puente.setString(6, estado);
            puente.setString(7, idGrupo);
            puente.setString(8, idAula);
            puente.setString(9, idClase);
            puente.setString(10, idHorario);
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
     public  ArrayList<HorarioVO> listar(){
        
        ArrayList<HorarioVO>listaHorario = new ArrayList<>();
        
        
        try {
            conexion= this.obtenerConexion();
            sql="call consultarHorarios";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();  
            while (mensajero.next()) {
                
                HorarioVO HorVO= new HorarioVO(mensajero.getString(1),mensajero.getString(2),
                    mensajero.getString(3), mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),
                mensajero.getString(7),mensajero.getString(8),mensajero.getString(9),mensajero.getString(10),
                mensajero.getString(11),mensajero.getString(12),mensajero.getString(13));
                
                   listaHorario.add(HorVO);
            }
        
        } catch (Exception e) {
              Logger.getLogger(HorarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
              Logger.getLogger(HorarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaHorario;
        
    }
}
 