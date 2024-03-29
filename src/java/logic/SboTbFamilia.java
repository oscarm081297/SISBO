package logic;
// Generated 21-sep-2019 0:08:08 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * SboTbFamilia generated by hbm2java
 */
public class SboTbFamilia  implements java.io.Serializable {


     private String famiIdPk;
     private String famiDesc;
     private Set<SboTbSubFamilia> sboTbSubFamilias = new HashSet<SboTbSubFamilia>(0);

    public SboTbFamilia() {
    }

	
    public SboTbFamilia(String famiIdPk) {
        this.famiIdPk = famiIdPk;
    }
    public SboTbFamilia(String famiIdPk, String famiDesc, Set<SboTbSubFamilia> sboTbSubFamilias) {
       this.famiIdPk = famiIdPk;
       this.famiDesc = famiDesc;
       this.sboTbSubFamilias = sboTbSubFamilias;
    }
   
    public String getFamiIdPk() {
        return this.famiIdPk;
    }
    
    public void setFamiIdPk(String famiIdPk) {
        this.famiIdPk = famiIdPk;
    }
    public String getFamiDesc() {
        return this.famiDesc;
    }
    
    public void setFamiDesc(String famiDesc) {
        this.famiDesc = famiDesc;
    }
    public Set<SboTbSubFamilia> getSboTbSubFamilias() {
        return this.sboTbSubFamilias;
    }
    
    public void setSboTbSubFamilias(Set<SboTbSubFamilia> sboTbSubFamilias) {
        this.sboTbSubFamilias = sboTbSubFamilias;
    }




}


