package logic;
// Generated 21-sep-2019 0:01:17 by Hibernate Tools 4.3.1



/**
 * AbaaTbOcproyectoId generated by hbm2java
 */
public class AbaaTbOcproyectoId  implements java.io.Serializable {


     private int ocproyOcId;
     private int ocproyProyId;

    public AbaaTbOcproyectoId() {
    }

    public AbaaTbOcproyectoId(int ocproyOcId, int ocproyProyId) {
       this.ocproyOcId = ocproyOcId;
       this.ocproyProyId = ocproyProyId;
    }
   
    public int getOcproyOcId() {
        return this.ocproyOcId;
    }
    
    public void setOcproyOcId(int ocproyOcId) {
        this.ocproyOcId = ocproyOcId;
    }
    public int getOcproyProyId() {
        return this.ocproyProyId;
    }
    
    public void setOcproyProyId(int ocproyProyId) {
        this.ocproyProyId = ocproyProyId;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof AbaaTbOcproyectoId) ) return false;
		 AbaaTbOcproyectoId castOther = ( AbaaTbOcproyectoId ) other; 
         
		 return (this.getOcproyOcId()==castOther.getOcproyOcId())
 && (this.getOcproyProyId()==castOther.getOcproyProyId());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getOcproyOcId();
         result = 37 * result + this.getOcproyProyId();
         return result;
   }   


}


