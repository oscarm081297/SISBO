package logic;
// Generated 21-sep-2019 0:08:08 by Hibernate Tools 4.3.1



/**
 * AbaaTbUsuario generated by hbm2java
 */
public class AbaaTbUsuario  implements java.io.Serializable {


     private int usuaIdPk;
     private AbaaTbEstado abaaTbEstado;
     private AbaaTbFuncionario abaaTbFuncionario;
     private AbaaTbRol abaaTbRol;
     private String usuaCont;

    public AbaaTbUsuario() {
    }

    public AbaaTbUsuario(int usuaIdPk, AbaaTbEstado abaaTbEstado, AbaaTbFuncionario abaaTbFuncionario, AbaaTbRol abaaTbRol, String usuaCont) {
       this.usuaIdPk = usuaIdPk;
       this.abaaTbEstado = abaaTbEstado;
       this.abaaTbFuncionario = abaaTbFuncionario;
       this.abaaTbRol = abaaTbRol;
       this.usuaCont = usuaCont;
    }
   
    public int getUsuaIdPk() {
        return this.usuaIdPk;
    }
    
    public void setUsuaIdPk(int usuaIdPk) {
        this.usuaIdPk = usuaIdPk;
    }
    public AbaaTbEstado getAbaaTbEstado() {
        return this.abaaTbEstado;
    }
    
    public void setAbaaTbEstado(AbaaTbEstado abaaTbEstado) {
        this.abaaTbEstado = abaaTbEstado;
    }
    public AbaaTbFuncionario getAbaaTbFuncionario() {
        return this.abaaTbFuncionario;
    }
    
    public void setAbaaTbFuncionario(AbaaTbFuncionario abaaTbFuncionario) {
        this.abaaTbFuncionario = abaaTbFuncionario;
    }
    public AbaaTbRol getAbaaTbRol() {
        return this.abaaTbRol;
    }
    
    public void setAbaaTbRol(AbaaTbRol abaaTbRol) {
        this.abaaTbRol = abaaTbRol;
    }
    public String getUsuaCont() {
        return this.usuaCont;
    }
    
    public void setUsuaCont(String usuaCont) {
        this.usuaCont = usuaCont;
    }




}


