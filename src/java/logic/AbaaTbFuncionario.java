package logic;
// Generated 15/09/2019 11:45:03 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * AbaaTbFuncionario generated by hbm2java
 */
public class AbaaTbFuncionario  implements java.io.Serializable {


     private int funcIdPk;
     private AbaaTbDepartamento abaaTbDepartamento;
     private String funcCedu;
     private String funcNomb;
     private String funcApe1;
     private String funcApe2;
     private String funcPues;
     private Set<SboTbBodega> sboTbBodegas = new HashSet<SboTbBodega>(0);
     private Set<SboTbSoliArti> sboTbSoliArtis = new HashSet<SboTbSoliArti>(0);
     private Set<AbaaTbDepartamento> abaaTbDepartamentos = new HashSet<AbaaTbDepartamento>(0);
     private Set<AbaaTbUsuario> abaaTbUsuarios = new HashSet<AbaaTbUsuario>(0);

    public AbaaTbFuncionario() {
    }

	
    public AbaaTbFuncionario(int funcIdPk, AbaaTbDepartamento abaaTbDepartamento, String funcCedu, String funcNomb, String funcApe1, String funcApe2, String funcPues) {
        this.funcIdPk = funcIdPk;
        this.abaaTbDepartamento = abaaTbDepartamento;
        this.funcCedu = funcCedu;
        this.funcNomb = funcNomb;
        this.funcApe1 = funcApe1;
        this.funcApe2 = funcApe2;
        this.funcPues = funcPues;
    }
    public AbaaTbFuncionario(int funcIdPk, AbaaTbDepartamento abaaTbDepartamento, String funcCedu, String funcNomb, String funcApe1, String funcApe2, String funcPues, Set<SboTbBodega> sboTbBodegas, Set<SboTbSoliArti> sboTbSoliArtis, Set<AbaaTbDepartamento> abaaTbDepartamentos, Set<AbaaTbUsuario> abaaTbUsuarios) {
       this.funcIdPk = funcIdPk;
       this.abaaTbDepartamento = abaaTbDepartamento;
       this.funcCedu = funcCedu;
       this.funcNomb = funcNomb;
       this.funcApe1 = funcApe1;
       this.funcApe2 = funcApe2;
       this.funcPues = funcPues;
       this.sboTbBodegas = sboTbBodegas;
       this.sboTbSoliArtis = sboTbSoliArtis;
       this.abaaTbDepartamentos = abaaTbDepartamentos;
       this.abaaTbUsuarios = abaaTbUsuarios;
    }
   
    public int getFuncIdPk() {
        return this.funcIdPk;
    }
    
    public void setFuncIdPk(int funcIdPk) {
        this.funcIdPk = funcIdPk;
    }
    public AbaaTbDepartamento getAbaaTbDepartamento() {
        return this.abaaTbDepartamento;
    }
    
    public void setAbaaTbDepartamento(AbaaTbDepartamento abaaTbDepartamento) {
        this.abaaTbDepartamento = abaaTbDepartamento;
    }
    public String getFuncCedu() {
        return this.funcCedu;
    }
    
    public void setFuncCedu(String funcCedu) {
        this.funcCedu = funcCedu;
    }
    public String getFuncNomb() {
        return this.funcNomb;
    }
    
    public void setFuncNomb(String funcNomb) {
        this.funcNomb = funcNomb;
    }
    public String getFuncApe1() {
        return this.funcApe1;
    }
    
    public void setFuncApe1(String funcApe1) {
        this.funcApe1 = funcApe1;
    }
    public String getFuncApe2() {
        return this.funcApe2;
    }
    
    public void setFuncApe2(String funcApe2) {
        this.funcApe2 = funcApe2;
    }
    public String getFuncPues() {
        return this.funcPues;
    }
    
    public void setFuncPues(String funcPues) {
        this.funcPues = funcPues;
    }
    public Set<SboTbBodega> getSboTbBodegas() {
        return this.sboTbBodegas;
    }
    
    public void setSboTbBodegas(Set<SboTbBodega> sboTbBodegas) {
        this.sboTbBodegas = sboTbBodegas;
    }
    public Set<SboTbSoliArti> getSboTbSoliArtis() {
        return this.sboTbSoliArtis;
    }
    
    public void setSboTbSoliArtis(Set<SboTbSoliArti> sboTbSoliArtis) {
        this.sboTbSoliArtis = sboTbSoliArtis;
    }
    public Set<AbaaTbDepartamento> getAbaaTbDepartamentos() {
        return this.abaaTbDepartamentos;
    }
    
    public void setAbaaTbDepartamentos(Set<AbaaTbDepartamento> abaaTbDepartamentos) {
        this.abaaTbDepartamentos = abaaTbDepartamentos;
    }
    public Set<AbaaTbUsuario> getAbaaTbUsuarios() {
        return this.abaaTbUsuarios;
    }
    
    public void setAbaaTbUsuarios(Set<AbaaTbUsuario> abaaTbUsuarios) {
        this.abaaTbUsuarios = abaaTbUsuarios;
    }




}

