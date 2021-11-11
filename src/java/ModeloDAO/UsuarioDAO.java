/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.UsuarioVO;
import Util.Conexion;
import Util.Crud;
import java.math.BigInteger;
import java.security.MessageDigest;
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
public class UsuarioDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    private String usuId = "", correo = "", clave = "";
    private String nombre = "", apellido = "", tipoDocumento = "", numDocumento = "", celular = "", estado = "", idTipoUsuario = "", idGrupo = "", grupo = "";

    public UsuarioDAO(UsuarioVO usuVO) {
        super();
        try {
            conexion = this.obtenerConexion();
            usuId = usuVO.getUsuId();
            nombre = usuVO.getNombre();
            apellido = usuVO.getApellido();
            tipoDocumento = usuVO.getTipoDocumento();
            numDocumento = usuVO.getNumDocumento();
            celular = usuVO.getCelular();
            estado = usuVO.getEstado();
            correo = usuVO.getCorreo();
            clave = usuVO.getClave();
            idTipoUsuario = usuVO.getIdTipoUsuario();
            idGrupo = usuVO.getIdGrupo();
            grupo = usuVO.getGrupo();
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "call agregarUsuario(?,?,?,?,?,?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, usuId);
            puente.setString(2, nombre);
            puente.setString(3, apellido);
            puente.setString(4, tipoDocumento);
            puente.setString(5, numDocumento);
            puente.setString(6, celular);
            puente.setString(7, estado);
            puente.setString(8, correo);
            puente.setString(9, clave);
            puente.setString(10, idTipoUsuario);
            puente.setString(11, idGrupo);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
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
            sql = "call actualizarUsuarioA(?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, tipoDocumento);
            puente.setString(2, idTipoUsuario);
            puente.setString(3, idGrupo);
            puente.setString(4, usuId);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
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
            sql = "call cambiarEstadoUsuario(?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, estado);
            puente.setString(2, usuId);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();

            } catch (SQLException e) {
            }
        }
        return operacion;
    }

    public String getMD5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] encrip = md.digest(input.getBytes());
            BigInteger numero = new BigInteger(1, encrip);
            String enString = numero.toString(16);
            while (enString.length() < 32) {
                enString = "0" + enString;
            }
            return enString;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public boolean iniciarSesion(String correo, String clave) {

        try {

            conexion = this.obtenerConexion();
            sql = "call iniciarSesion(?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, correo);
            puente.setString(2, getMD5(clave));
            mensajero = puente.executeQuery();
            if (mensajero.next()) {
                operacion = true;
            }
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();

            } catch (SQLException e) {
            }
        }
        return operacion;
    }

    public UsuarioVO consultarUsuarioS(String usuId) {

        UsuarioVO UsuVO = null;

        try {

            conexion = this.obtenerConexion();
            sql = "call consultarUsuarioS(?);";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, usuId);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                UsuVO = new UsuarioVO(usuId, mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4),
                        mensajero.getString(5), mensajero.getString(6),
                        mensajero.getString(7), mensajero.getString(8),
                        mensajero.getString(9), mensajero.getString(10),
                        mensajero.getString(11), mensajero.getString(12),
                        mensajero.getString(13));
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
        return UsuVO;

    }

    public ArrayList<UsuarioVO> listar() {

        ArrayList<UsuarioVO> listaUsuario = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "call consultarUsuariosA";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                UsuarioVO UsuVO = new UsuarioVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6),
                        mensajero.getString(7), mensajero.getString(8), mensajero.getString(9), mensajero.getString(10),
                        mensajero.getString(11),mensajero.getString(12));
                listaUsuario.add(UsuVO);
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
        return listaUsuario;
    }

    public ArrayList<UsuarioVO> roles() {
        ArrayList<UsuarioVO> listaRoles = new ArrayList<>();
        try {
            sql = "SELECT usuario.nombre,usuario.apellido,usuario.idTipoUsuario from usuario INNER join grupo_usuario on usuario.idUsuario=grupo_usuario.idUsuario INNER JOIN grupo on grupo_usuario.idGrupo=grupo.idGrupo where idTipoUsuario=idTipoUsuario";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idTipoUsuario);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                UsuarioVO usuVO = new UsuarioVO(mensajero.getString(1), mensajero.getString(2));
                listaRoles.add(usuVO);

            }
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaRoles;

    }

}