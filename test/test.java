
import data.CatArticulosDAO;
import logic.SboTbFamilia;
import data.FamiliaDAO;
import logic.SboTbSubFamilia;
import data.SubFamiliaDAO;
import java.util.ArrayList;
import java.util.List;
import logic.SboTbCatArticulo;

public class test {

    public static void main(String[] args) {
//        List<SboTbFamilia> lista = null;
//        FamiliaDAO familiaDAO = new FamiliaDAO();
//        lista = familiaDAO.findAll();
//        System.out.println("Lista de Familias");
//        for (SboTbFamilia u : lista) {
//            System.out.println(u.getFamiIdPk() + ", " + u.getFamiDesc());
//        }

//        List<SboTbSubFamilia> lista = null;
//        SubFamiliaDAO subfamiliaDAO= new SubFamiliaDAO();
//        lista = subfamiliaDAO.findAll();
//        System.out.println("Lista de SubFamilias");
//        for (SboTbSubFamilia u : lista) {
//            System.out.println(u.getSubFamiIdPk()+ ", " + u.getSubFamiDesc());
//        }

        List<SboTbCatArticulo> lista = null;
        CatArticulosDAO catArticulosDAO= new CatArticulosDAO();
        lista = catArticulosDAO.findAll();
        System.out.println("Lista del Catalogo de articulos");
        for (SboTbCatArticulo u : lista) {
            System.out.println(u.getCatIdPk()+ ", " + u.getCatDesc());
        }

    }

}
