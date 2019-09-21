package data;

import java.util.List;

public interface IBaseDao<T, K> {
    public abstract void save(T o);
    public abstract T merge(T o);
    public abstract void delete(T o);
    public abstract T findById(K o);
    public abstract List<T> findAll();
}
