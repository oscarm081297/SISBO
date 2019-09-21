package data;

import Utils.HibernateUtil;
import java.math.BigInteger;
import java.util.List;
import org.hibernate.HibernateException;
import java.util.ArrayList;
import java.util.Iterator;
import logic.SboTbCatArticulo;

public class CatArticulosDAO extends HibernateUtil implements IBaseDao<SboTbCatArticulo, Integer> {

    @Override
    public void save(SboTbCatArticulo o) {
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
    public SboTbCatArticulo merge(SboTbCatArticulo o) throws HibernateException {
        try {
            iniciaOperacion();
            o = (SboTbCatArticulo) getSesion().merge(o);
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
    public void delete(SboTbCatArticulo o) {
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
    public SboTbCatArticulo findById(Integer o) {
        SboTbCatArticulo rol = null;
        try {
            iniciaOperacion();
            rol = (SboTbCatArticulo) getSesion().get(SboTbCatArticulo.class, o);
        } finally {
            getSesion().close();
        }
        return rol;
    }

    @Override
    public List<SboTbCatArticulo> findAll() {
        List<SboTbCatArticulo> roles = null;
        String hql = "from SboTbCatArticulo";
        try {
            iniciaOperacion();
            roles = getSesion().createQuery(hql).list();
        } finally {
            getSesion().close();
        }
        return roles;
    }

}
