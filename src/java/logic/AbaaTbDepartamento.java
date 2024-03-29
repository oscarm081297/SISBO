package logic;
// Generated 21-sep-2019 0:08:08 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * AbaaTbDepartamento generated by hbm2java
 */
public class AbaaTbDepartamento  implements java.io.Serializable {


     private String deptoIdPk;
     private AbaaTbDireccion abaaTbDireccion;
     private AbaaTbFuncionario abaaTbFuncionario;
     private String deptoNomb;
     private Set<SboTbSoliArti> sboTbSoliArtis = new HashSet<SboTbSoliArti>(0);
     private Set<SboTbArticulo> sboTbArticulos = new HashSet<SboTbArticulo>(0);
     private Set<AbaaTbFuncionario> abaaTbFuncionarios = new HashSet<AbaaTbFuncionario>(0);

    public AbaaTbDepartamento() {
    }

	
    public AbaaTbDepartamento(String deptoIdPk, String deptoNomb) {
        this.deptoIdPk = deptoIdPk;
        this.deptoNomb = deptoNomb;
    }
    public AbaaTbDepartamento(String deptoIdPk, AbaaTbDireccion abaaTbDireccion, AbaaTbFuncionario abaaTbFuncionario, String deptoNomb, Set<SboTbSoliArti> sboTbSoliArtis, Set<SboTbArticulo> sboTbArticulos, Set<AbaaTbFuncionario> abaaTbFuncionarios) {
       this.deptoIdPk = deptoIdPk;
       this.abaaTbDireccion = abaaTbDireccion;
       this.abaaTbFuncionario = abaaTbFuncionario;
       this.deptoNomb = deptoNomb;
       this.sboTbSoliArtis = sboTbSoliArtis;
       this.sboTbArticulos = sboTbArticulos;
       this.abaaTbFuncionarios = abaaTbFuncionarios;
    }
   
    public String getDeptoIdPk() {
        return this.deptoIdPk;
    }
    
    public void setDeptoIdPk(String deptoIdPk) {
        this.deptoIdPk = deptoIdPk;
    }
    public AbaaTbDireccion getAbaaTbDireccion() {
        return this.abaaTbDireccion;
    }
    
    public void setAbaaTbDireccion(AbaaTbDireccion abaaTbDireccion) {
        this.abaaTbDireccion = abaaTbDireccion;
    }
    public AbaaTbFuncionario getAbaaTbFuncionario() {
        return this.abaaTbFuncionario;
    }
    
    public void setAbaaTbFuncionario(AbaaTbFuncionario abaaTbFuncionario) {
        this.abaaTbFuncionario = abaaTbFuncionario;
    }
    public String getDeptoNomb() {
        return this.deptoNomb;
    }
    
    public void setDeptoNomb(String deptoNomb) {
        this.deptoNomb = deptoNomb;
    }
    public Set<SboTbSoliArti> getSboTbSoliArtis() {
        return this.sboTbSoliArtis;
    }
    
    public void setSboTbSoliArtis(Set<SboTbSoliArti> sboTbSoliArtis) {
        this.sboTbSoliArtis = sboTbSoliArtis;
    }
    public Set<SboTbArticulo> getSboTbArticulos() {
        return this.sboTbArticulos;
    }
    
    public void setSboTbArticulos(Set<SboTbArticulo> sboTbArticulos) {
        this.sboTbArticulos = sboTbArticulos;
    }
    public Set<AbaaTbFuncionario> getAbaaTbFuncionarios() {
        return this.abaaTbFuncionarios;
    }
    
    public void setAbaaTbFuncionarios(Set<AbaaTbFuncionario> abaaTbFuncionarios) {
        this.abaaTbFuncionarios = abaaTbFuncionarios;
    }




}


