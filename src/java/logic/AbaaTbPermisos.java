package logic;
// Generated 15/09/2019 11:45:03 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * AbaaTbPermisos generated by hbm2java
 */
public class AbaaTbPermisos  implements java.io.Serializable {


     private int permIdPk;
     private String permDesc;
     private Set<AbaaTbRol> abaaTbRols = new HashSet<AbaaTbRol>(0);

    public AbaaTbPermisos() {
    }

	
    public AbaaTbPermisos(int permIdPk, String permDesc) {
        this.permIdPk = permIdPk;
        this.permDesc = permDesc;
    }
    public AbaaTbPermisos(int permIdPk, String permDesc, Set<AbaaTbRol> abaaTbRols) {
       this.permIdPk = permIdPk;
       this.permDesc = permDesc;
       this.abaaTbRols = abaaTbRols;
    }
   
    public int getPermIdPk() {
        return this.permIdPk;
    }
    
    public void setPermIdPk(int permIdPk) {
        this.permIdPk = permIdPk;
    }
    public String getPermDesc() {
        return this.permDesc;
    }
    
    public void setPermDesc(String permDesc) {
        this.permDesc = permDesc;
    }
    public Set<AbaaTbRol> getAbaaTbRols() {
        return this.abaaTbRols;
    }
    
    public void setAbaaTbRols(Set<AbaaTbRol> abaaTbRols) {
        this.abaaTbRols = abaaTbRols;
    }




}

