package org.greenrobot.greendao;

import android.database.Cursor;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.identityscope.IdentityScope;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class InternalUnitTestDaoAccess<T, K> {
    public final AbstractDao<T, K> dao;

    public InternalUnitTestDaoAccess(Database database, Class<AbstractDao<T, K>> cls, IdentityScope<?, ?> identityScope) {
        DaoConfig daoConfig = new DaoConfig(database, cls);
        daoConfig.setIdentityScope(identityScope);
        this.dao = cls.getConstructor(DaoConfig.class).newInstance(daoConfig);
    }

    public AbstractDao<T, K> getDao() {
        return this.dao;
    }

    public K getKey(T t) {
        return this.dao.getKey(t);
    }

    public Property[] getProperties() {
        return this.dao.getProperties();
    }

    public boolean isEntityUpdateable() {
        return this.dao.isEntityUpdateable();
    }

    public T readEntity(Cursor cursor, int i) {
        return this.dao.readEntity(cursor, i);
    }

    public K readKey(Cursor cursor, int i) {
        return this.dao.readKey(cursor, i);
    }
}
