package data;

import Utils.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;
import java.util.ArrayList;
import java.util.Iterator;
import logic.SboTbSubFamilia;

public class SubFamiliaDAO extends HibernateUtil implements IBaseDao<SboTbSubFamilia, String> {
    
    @Override
    public void save(SboTbSubFamilia o) {
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
    public SboTbSubFamilia merge(SboTbSubFamilia o) throws HibernateException {
        try {
            iniciaOperacion();
            o = (SboTbSubFamilia) getSesion().merge(o);
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
    public void delete(SboTbSubFamilia o) {
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
    public SboTbSubFamilia findById(String o) {
        SboTbSubFamilia rol = null;
        try {
            iniciaOperacion();
            rol = (SboTbSubFamilia) getSesion().get(SboTbSubFamilia.class, o);
        } finally {
            getSesion().close();
        }
        return rol;
    }

    @Override
    public List<SboTbSubFamilia> findAll() {
        List<SboTbSubFamilia> roles = null;
        String hql = "from SboTbSubFamilia";
        try {
            iniciaOperacion();
            roles = getSesion().createQuery(hql).list();
        } finally {
            getSesion().close();
        }
        return roles;
    }
}
