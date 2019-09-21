package logic;
// Generated 21-sep-2019 0:01:17 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * AbaaTbDireccion generated by hbm2java
 */
public class AbaaTbDireccion  implements java.io.Serializable {


     private String direIdPk;
     private String direNomb;
     private Set<AbaaTbDepartamento> abaaTbDepartamentos = new HashSet<AbaaTbDepartamento>(0);

    public AbaaTbDireccion() {
    }

	
    public AbaaTbDireccion(String direIdPk, String direNomb) {
        this.direIdPk = direIdPk;
        this.direNomb = direNomb;
    }
    public AbaaTbDireccion(String direIdPk, String direNomb, Set<AbaaTbDepartamento> abaaTbDepartamentos) {
       this.direIdPk = direIdPk;
       this.direNomb = direNomb;
       this.abaaTbDepartamentos = abaaTbDepartamentos;
    }
   
    public String getDireIdPk() {
        return this.direIdPk;
    }
    
    public void setDireIdPk(String direIdPk) {
        this.direIdPk = direIdPk;
    }
    public String getDireNomb() {
        return this.direNomb;
    }
    
    public void setDireNomb(String direNomb) {
        this.direNomb = direNomb;
    }
    public Set<AbaaTbDepartamento> getAbaaTbDepartamentos() {
        return this.abaaTbDepartamentos;
    }
    
    public void setAbaaTbDepartamentos(Set<AbaaTbDepartamento> abaaTbDepartamentos) {
        this.abaaTbDepartamentos = abaaTbDepartamentos;
    }




}


