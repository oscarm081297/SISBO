package logic;
// Generated 21-sep-2019 0:08:08 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * AbaaTbRol generated by hbm2java
 */
public class AbaaTbRol  implements java.io.Serializable {


     private int rolIdPk;
     private String rolDesc;
     private Set<AbaaTbPermisos> abaaTbPermisoses = new HashSet<AbaaTbPermisos>(0);
     private Set<AbaaTbUsuario> abaaTbUsuarios = new HashSet<AbaaTbUsuario>(0);

    public AbaaTbRol() {
    }

	
    public AbaaTbRol(int rolIdPk, String rolDesc) {
        this.rolIdPk = rolIdPk;
        this.rolDesc = rolDesc;
    }
    public AbaaTbRol(int rolIdPk, String rolDesc, Set<AbaaTbPermisos> abaaTbPermisoses, Set<AbaaTbUsuario> abaaTbUsuarios) {
       this.rolIdPk = rolIdPk;
       this.rolDesc = rolDesc;
       this.abaaTbPermisoses = abaaTbPermisoses;
       this.abaaTbUsuarios = abaaTbUsuarios;
    }
   
    public int getRolIdPk() {
        return this.rolIdPk;
    }
    
    public void setRolIdPk(int rolIdPk) {
        this.rolIdPk = rolIdPk;
    }
    public String getRolDesc() {
        return this.rolDesc;
    }
    
    public void setRolDesc(String rolDesc) {
        this.rolDesc = rolDesc;
    }
    public Set<AbaaTbPermisos> getAbaaTbPermisoses() {
        return this.abaaTbPermisoses;
    }
    
    public void setAbaaTbPermisoses(Set<AbaaTbPermisos> abaaTbPermisoses) {
        this.abaaTbPermisoses = abaaTbPermisoses;
    }
    public Set<AbaaTbUsuario> getAbaaTbUsuarios() {
        return this.abaaTbUsuarios;
    }
    
    public void setAbaaTbUsuarios(Set<AbaaTbUsuario> abaaTbUsuarios) {
        this.abaaTbUsuarios = abaaTbUsuarios;
    }




}


