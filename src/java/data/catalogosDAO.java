/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import logic.Catarticulo;
import logic.SboTbFamilia;
import logic.SboTbSubfamilia;

/**
 *
 * @author oscar
 */
public class catalogosDAO {

    RelDatabase db;

    public catalogosDAO() {
        db = new RelDatabase();

    }

    private SboTbFamilia familia(ResultSet rs) {
        try {
            SboTbFamilia ob = new SboTbFamilia();
            ob.setFamiDesc(rs.getString("Fami_Desc"));
            ob.setFamiIdPk(rs.getString("Fami_Id_Pk"));
            return ob;
        } catch (SQLException ex) {
            return null;
        }

    }

    private Catarticulo catArticulo(ResultSet rs) {
        try {
            Catarticulo ob = new Catarticulo();
            ob.setCatIdPk(rs.getInt("Cat_Id_Pk"));
            ob.setCatDesc(rs.getString("Cat_Desc"));
            ob.setSboTbSubfamilia(Subfamilia(rs));
            return ob;
        } catch (SQLException ex) {
            return null;
        }

    }

    private SboTbSubfamilia Subfamilia(ResultSet rs) {
        try {
            SboTbSubfamilia ob = new SboTbSubfamilia();
            ob.setSubfamiIdPk(rs.getString("SubFami_Id_Pk"));
            ob.setSboTbFamilia(familia(rs));
            ob.setSubfamiDesc(rs.getString("SubFami_Desc"));
            return ob;
        } catch (SQLException ex) {
            return null;
        }

    }

    public List<SboTbFamilia> listaFamilias() {
        List<SboTbFamilia> resultado = new ArrayList<SboTbFamilia>();
        try {
            String sql = "select * from Sbo_TB_Familia";
            sql = String.format(sql);
            ResultSet rs = db.executeQuery(sql);
            while (rs.next()) {
                resultado.add(familia(rs));
            }
        } catch (SQLException ex) {
        }
        return resultado;
    }

    public List<SboTbSubfamilia> listaSubFamilias() {
        List<SboTbSubfamilia> resultado = new ArrayList<SboTbSubfamilia>();
        try {
            String sql = "select * from Sbo_TB_SubFamilia";
            sql = String.format(sql);
            ResultSet rs = db.executeQuery(sql);
            while (rs.next()) {
                resultado.add(Subfamilia(rs));
            }
        } catch (SQLException ex) {
        }
        return resultado;
    }

    public List<Catarticulo> listaCatArticulos() {
        List<Catarticulo> resultado = new ArrayList<Catarticulo>();
        try {
            String sql = "select * from CatArticulo a inner join Sbo_TB_SubFamilia s on a.Cat_SubC_Fk = s.SubFami_Id_Pk"
                    + " inner join Sbo_TB_Familia f on s.SubFami_CodF_Fk = f.Fami_Id_Pk";
            sql = String.format(sql);
            ResultSet rs = db.executeQuery(sql);
            while (rs.next()) {
                resultado.add(catArticulo(rs));
            }
        } catch (SQLException ex) {
        }
        return resultado;
    }

    public Catarticulo getCatArticulo(int filtro) throws Exception {
        String sql = "select * from CatArticulo a inner join Sbo_TB_SubFamilia s on a.Cat_SubC_Fk = s.SubFami_Id_Pk"
                + " where a.Cat_Id_Pk ='%s'";
        sql = String.format(sql, filtro);
        ResultSet rs = db.executeQuery(sql);
        if (rs.next()) {
            return catArticulo(rs);
        } else {
            throw new Exception("Bien no Existe");
        }
    }

    public SboTbFamilia getSboTbFamilia(String filtro) throws Exception {
        String sql = "select * from Sbo_TB_Familia f where f.Fami_Id_Pk ='%s'";
        sql = String.format(sql, filtro);
        ResultSet rs = db.executeQuery(sql);
        if (rs.next()) {
            return familia(rs);
        } else {
            throw new Exception("Bien no Existe");
        }
    }

    public SboTbSubfamilia getSboTbSubFamilia(String filtro) throws Exception {
        String sql = "select * from Sbo_TB_SubFamilia s inner join Sbo_TB_Familia f on s.SubFami_CodF_Fk = f.Fami_Id_Pk"
                + " where s.SubFami_Id_Pk ='%s'";
        sql = String.format(sql, filtro);
        ResultSet rs = db.executeQuery(sql);
        if (rs.next()) {
            return Subfamilia(rs);
        } else {
            throw new Exception("Bien no Existe");
        }
    }

}
