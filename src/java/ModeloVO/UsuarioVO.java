/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author David
 */
public class UsuarioVO {
    private String nombre,apellido,tipoDocumento,numDocumento,celular,estado,correo,clave;
    private String usuId,idTipoUsuario,tipoUsuario;
    

   
    public UsuarioVO(String usuId,String nombre, String apellido, String tipoDocumento, String numDocumento, String celular, String estado, String correo, String clave,String idTipoUsuario, String tipoUsuario) {
        this.usuId = usuId;
        this.nombre = nombre;
        this.apellido = apellido;
        this.tipoDocumento = tipoDocumento;
        this.numDocumento = numDocumento;
        this.celular = celular;
        this.estado = estado;
        this.correo = correo;
        this.clave = clave;
        this.idTipoUsuario = idTipoUsuario;
        this.tipoUsuario = tipoUsuario;
    }
    public UsuarioVO(String usuId,String nombre, String apellido, String tipoDocumento, String numDocumento, String celular,String estado, String correo,String tipoUsuario) {
        this.usuId = usuId;
        this.nombre = nombre;
        this.apellido = apellido;
        this.tipoDocumento = tipoDocumento;
        this.numDocumento = numDocumento;
        this.celular = celular;
        this.estado = estado;
        this.correo = correo;
        this.tipoUsuario = tipoUsuario;
    }

    public UsuarioVO( String usuId,String idTipoUsuario) {
        this.usuId = usuId;
        this.idTipoUsuario = idTipoUsuario;
    }

    public UsuarioVO(String correo, String clave, String usuId, String idTipoUsuario) {
        this.correo = correo;
        this.clave = clave;
        this.usuId = usuId;
        this.idTipoUsuario = idTipoUsuario;
    }

    public UsuarioVO() {
    }

    
    
     public String getUsuId() {
        return usuId;
    }

    public void setUsuId(String usuId) {
        this.usuId = usuId;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTipoDocumento() {
        return tipoDocumento;
    }

    public void setTipoDocumento(String tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }

    public String getNumDocumento() {
        return numDocumento;
    }

    public void setNumDocumento(String numDocumento) {
        this.numDocumento = numDocumento;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }
    
    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }
    
    public String getIdTipoUsuario() {
        return idTipoUsuario;
    }

    public void setIdTipoUsuario(String idTipoUsuario) {
        this.idTipoUsuario = idTipoUsuario;
    }

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
    
}