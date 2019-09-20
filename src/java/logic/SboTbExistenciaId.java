package logic;
// Generated 15/09/2019 11:45:03 PM by Hibernate Tools 4.3.1



/**
 * SboTbExistenciaId generated by hbm2java
 */
public class SboTbExistenciaId  implements java.io.Serializable {


     private int exisIdBode;
     private int exisIdArti;

    public SboTbExistenciaId() {
    }

    public SboTbExistenciaId(int exisIdBode, int exisIdArti) {
       this.exisIdBode = exisIdBode;
       this.exisIdArti = exisIdArti;
    }
   
    public int getExisIdBode() {
        return this.exisIdBode;
    }
    
    public void setExisIdBode(int exisIdBode) {
        this.exisIdBode = exisIdBode;
    }
    public int getExisIdArti() {
        return this.exisIdArti;
    }
    
    public void setExisIdArti(int exisIdArti) {
        this.exisIdArti = exisIdArti;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof SboTbExistenciaId) ) return false;
		 SboTbExistenciaId castOther = ( SboTbExistenciaId ) other; 
         
		 return (this.getExisIdBode()==castOther.getExisIdBode())
 && (this.getExisIdArti()==castOther.getExisIdArti());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getExisIdBode();
         result = 37 * result + this.getExisIdArti();
         return result;
   }   


}

