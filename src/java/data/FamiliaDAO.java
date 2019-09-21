package data;

import Utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;
import java.util.ArrayList;
import java.util.Iterator;
import logic.SboTbFamilia;

public class FamiliaDAO extends HibernateUtil implements IBaseDao<SboTbFamilia, String> {

    @Override
    public void save(SboTbFamilia o) {
        try {
            iniciaOperacion();
            getSesion().save(o);
            getTransc().commit();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            getSesion().close();
        }
    }

    @Override
    public SboTbFamilia merge(SboTbFamilia o) throws HibernateException {
        try {
            iniciaOperacion();
            o = (SboTbFamilia) getSesion().merge(o);
            getTransc().commit();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            getSesion().close();
        }
        return o;
    }

    @Override
    public void delete(SboTbFamilia o) {
        try {
            iniciaOperacion();
            getSesion().delete(o);
            getTransc().commit();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            getSesion().close();
        }

    }

    @Override
    public SboTbFamilia findById(String o) {
        SboTbFamilia rol = null;
        try {
            iniciaOperacion();
            rol = (SboTbFamilia) getSesion().get(SboTbFamilia.class, o);
        } finally {
            getSesion().close();
        }
        return rol;
    }

    @Override
    public List<SboTbFamilia> findAll() {
        List<SboTbFamilia> activosRaw = null;
        List<SboTbFamilia> activosFinal = new ArrayList<>();
        String sql = "select familia.Fami_Id_Pk id, familia.Fami_Desc descripcion\n"
                + "from dbo.Sbo_TB_Familia familia;";
        try {
            iniciaOperacion();
            activosRaw = (List<SboTbFamilia>) getSesion().createSQLQuery(sql).list();
            Iterator itr = activosRaw.iterator();
            while (itr.hasNext()) {
                Object[] obj = (Object[]) itr.next();
                SboTbFamilia act = new SboTbFamilia();
                act.setFamiIdPk((String.valueOf(obj[0])));
                act.setFamiDesc((String.valueOf(obj[1])));
                activosFinal.add(act);
            }

        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            getSesion().close();
        }
        return activosFinal;
    }

}
