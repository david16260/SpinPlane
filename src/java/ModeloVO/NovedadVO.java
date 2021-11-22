/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;


public class NovedadVO {
    private String idNovedad, descripcion, idTipoNovedad, tipoNovedad, idAsistencia, fecha,nombreUsuario,apellidoUsuario,nombreGrupo;

    public NovedadVO() {
    }        
    
    public NovedadVO(String idNovedad, String descripcion, String idTipoNovedad, String tipoNovedad, String idAsistencia, String fecha, String nombreUsuario, String apellidoUsuario, String nombreGrupo) {
        this.idNovedad = idNovedad;
        this.descripcion = descripcion;
        this.idTipoNovedad = idTipoNovedad;
        this.tipoNovedad = tipoNovedad;
        this.idAsistencia = idAsistencia;
        this.fecha = fecha;
        this.nombreUsuario = nombreUsuario;
        this.apellidoUsuario = apellidoUsuario;
        this.nombreGrupo = nombreGrupo;
    }               
    
    public String getIdNovedad() {
        return idNovedad;
    }

    public void setIdNovedad(String idNovedad) {
        this.idNovedad = idNovedad;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getIdTipoNovedad() {
        return idTipoNovedad;
    }

    public void setIdTipoNovedad(String idTipoNovedad) {
        this.idTipoNovedad = idTipoNovedad;
    }

    public String getTipoNovedad() {
        return tipoNovedad;
    }

    public void setTipoNovedad(String tipoNovedad) {
        this.tipoNovedad = tipoNovedad;
    }

    public String getIdAsistencia() {
        return idAsistencia;
    }

    public void setIdAsistencia(String idAsistencia) {
        this.idAsistencia = idAsistencia;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getApellidoUsuario() {
        return apellidoUsuario;
    }

    public void setApellidoUsuario(String apellidoUsuario) {
        this.apellidoUsuario = apellidoUsuario;
    }

    public String getNombreGrupo() {
        return nombreGrupo;
    }

    public void setNombreGrupo(String nombreGrupo) {
        this.nombreGrupo = nombreGrupo;
    }
        
}
