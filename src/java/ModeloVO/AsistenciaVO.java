/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;


public class AsistenciaVO {
   private  String idAsistencia, asistencia, fecha, idUsuario,idGrupo,nombreUsuario,apellidoUsuario,nombreGrupo;

    public AsistenciaVO() {
    }

    public AsistenciaVO(String idAsistencia, String fecha, String idGrupo) {
        this.idAsistencia = idAsistencia;
        this.fecha = fecha;
        this.idGrupo = idGrupo;
    }

    public AsistenciaVO(String idAsistencia, String asistencia, String fecha, String idUsuario,  String nombreUsuario, String apellidoUsuario, String idGrupo, String nombreGrupo) {
        this.idAsistencia = idAsistencia;
        this.asistencia = asistencia;
        this.fecha = fecha;
        this.idUsuario = idUsuario;
        this.nombreUsuario = nombreUsuario;
        this.apellidoUsuario = apellidoUsuario;
        this.idGrupo = idGrupo;        
        this.nombreGrupo = nombreGrupo;
    }
            
    public String getApellidoUsuario() {
        return apellidoUsuario;
    }

    public void setApellidoUsuario(String apellidoUsuario) {
        this.apellidoUsuario = apellidoUsuario;
    }
    
    public String getIdAsistencia() {
        return idAsistencia;
    }

    public void setIdAsistencia(String idAsistencia) {
        this.idAsistencia = idAsistencia;
    }

    public String getAsistencia() {
        return asistencia;
    }

    public void setAsistencia(String asistencia) {
        this.asistencia = asistencia;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(String idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getIdGrupo() {
        return idGrupo;
    }

    public void setIdGrupo(String idGrupo) {
        this.idGrupo = idGrupo;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getNombreGrupo() {
        return nombreGrupo;
    }

    public void setNombreGrupo(String nombreGrupo) {
        this.nombreGrupo = nombreGrupo;
    }

}

 

   