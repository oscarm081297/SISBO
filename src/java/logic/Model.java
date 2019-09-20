/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logic;

import data.catalogosDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author oscar
 */
public class Model {

    private final catalogosDAO catdao;
    private static Model uniqueInstance;

    public static Model instance() {
        if (uniqueInstance == null) {
            uniqueInstance = new Model();
        }
        return uniqueInstance;
    }

    private Model() {
        catdao = new catalogosDAO();

    }

    public List<SboTbFamilia> listaFamilias() throws ClassNotFoundException, SQLException {
        List result = catdao.listaFamilias();
        return result;

    }

    public List<SboTbSubfamilia> listaSubFamilias() throws ClassNotFoundException, SQLException {
        List result = catdao.listaSubFamilias();
        return result;

    }

    public List<Catarticulo> listaCatArticulos() throws ClassNotFoundException, SQLException {
        List result = catdao.listaCatArticulos();
        return result;

    }

    public SboTbFamilia getSboTbFamilia(String filtro) throws Exception {
        SboTbFamilia ob = catdao.getSboTbFamilia(filtro);
        return ob;
    }

    public Catarticulo getCatArticulo(String filtro) throws Exception {
        int filtro2 = Integer.parseInt(filtro);
        Catarticulo ob = catdao.getCatArticulo(filtro2);
        return ob;

    }

    public SboTbSubfamilia getSboTbSubfamilia(String filtro) throws Exception {

        SboTbSubfamilia ob = catdao.getSboTbSubFamilia(filtro);
        return ob;

    }

}
