package logic;
// Generated 15/09/2019 11:45:03 PM by Hibernate Tools 4.3.1



/**
 * SboTbExistencia generated by hbm2java
 */
public class SboTbExistencia  implements java.io.Serializable {


     private SboTbExistenciaId id;
     private SboTbArticulo sboTbArticulo;
     private SboTbBodega sboTbBodega;
     private Float exisCant;

    public SboTbExistencia() {
    }

	
    public SboTbExistencia(SboTbExistenciaId id, SboTbArticulo sboTbArticulo, SboTbBodega sboTbBodega) {
        this.id = id;
        this.sboTbArticulo = sboTbArticulo;
        this.sboTbBodega = sboTbBodega;
    }
    public SboTbExistencia(SboTbExistenciaId id, SboTbArticulo sboTbArticulo, SboTbBodega sboTbBodega, Float exisCant) {
       this.id = id;
       this.sboTbArticulo = sboTbArticulo;
       this.sboTbBodega = sboTbBodega;
       this.exisCant = exisCant;
    }
   
    public SboTbExistenciaId getId() {
        return this.id;
    }
    
    public void setId(SboTbExistenciaId id) {
        this.id = id;
    }
    public SboTbArticulo getSboTbArticulo() {
        return this.sboTbArticulo;
    }
    
    public void setSboTbArticulo(SboTbArticulo sboTbArticulo) {
        this.sboTbArticulo = sboTbArticulo;
    }
    public SboTbBodega getSboTbBodega() {
        return this.sboTbBodega;
    }
    
    public void setSboTbBodega(SboTbBodega sboTbBodega) {
        this.sboTbBodega = sboTbBodega;
    }
    public Float getExisCant() {
        return this.exisCant;
    }
    
    public void setExisCant(Float exisCant) {
        this.exisCant = exisCant;
    }




}


