package logic;
// Generated 21-sep-2019 0:08:08 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * SboTbSubFamilia generated by hbm2java
 */
public class SboTbSubFamilia  implements java.io.Serializable {


     private String subFamiIdPk;
     private SboTbFamilia sboTbFamilia;
     private String subFamiDesc;
     private Set<SboTbCatArticulo> sboTbCatArticulos = new HashSet<SboTbCatArticulo>(0);

    public SboTbSubFamilia() {
    }

	
    public SboTbSubFamilia(String subFamiIdPk) {
        this.subFamiIdPk = subFamiIdPk;
    }
    public SboTbSubFamilia(String subFamiIdPk, SboTbFamilia sboTbFamilia, String subFamiDesc, Set<SboTbCatArticulo> sboTbCatArticulos) {
       this.subFamiIdPk = subFamiIdPk;
       this.sboTbFamilia = sboTbFamilia;
       this.subFamiDesc = subFamiDesc;
       this.sboTbCatArticulos = sboTbCatArticulos;
    }
   
    public String getSubFamiIdPk() {
        return this.subFamiIdPk;
    }
    
    public void setSubFamiIdPk(String subFamiIdPk) {
        this.subFamiIdPk = subFamiIdPk;
    }
    public SboTbFamilia getSboTbFamilia() {
        return this.sboTbFamilia;
    }
    
    public void setSboTbFamilia(SboTbFamilia sboTbFamilia) {
        this.sboTbFamilia = sboTbFamilia;
    }
    public String getSubFamiDesc() {
        return this.subFamiDesc;
    }
    
    public void setSubFamiDesc(String subFamiDesc) {
        this.subFamiDesc = subFamiDesc;
    }
    public Set<SboTbCatArticulo> getSboTbCatArticulos() {
        return this.sboTbCatArticulos;
    }
    
    public void setSboTbCatArticulos(Set<SboTbCatArticulo> sboTbCatArticulos) {
        this.sboTbCatArticulos = sboTbCatArticulos;
    }




}


