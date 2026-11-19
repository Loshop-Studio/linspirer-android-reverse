package org.greenrobot.greendao.test;

import java.lang.reflect.InvocationTargetException;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.DaoLog;
import org.greenrobot.greendao.InternalUnitTestDaoAccess;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.identityscope.IdentityScope;

/* loaded from: classes.dex */
public abstract class AbstractDaoTest<D extends AbstractDao<T, K>, T, K> extends DbTest {
    public D dao;
    public InternalUnitTestDaoAccess<T, K> daoAccess;
    public final Class<D> daoClass;
    public IdentityScope<K, T> identityScopeForDao;
    public Property pkColumn;

    public AbstractDaoTest(Class<D> cls) {
        this(cls, true);
    }

    public void clearIdentityScopeIfAny() {
        IdentityScope<K, T> identityScope = this.identityScopeForDao;
        if (identityScope == null) {
            DaoLog.m5859d("No identity scope to clear");
        } else {
            identityScope.clear();
            DaoLog.m5859d("Identity scope cleared");
        }
    }

    public void logTableDump() {
        logTableDump(this.dao.getTablename());
    }

    public void setIdentityScopeBeforeSetUp(IdentityScope<K, T> identityScope) {
        this.identityScopeForDao = identityScope;
    }

    @Override // org.greenrobot.greendao.test.DbTest
    public void setUp() {
        super.setUp();
        try {
            setUpTableForDao();
            InternalUnitTestDaoAccess<T, K> internalUnitTestDaoAccess = new InternalUnitTestDaoAccess<>(this.f6510db, this.daoClass, this.identityScopeForDao);
            this.daoAccess = internalUnitTestDaoAccess;
            this.dao = internalUnitTestDaoAccess.getDao();
        } catch (Exception e) {
            throw new RuntimeException("Could not prepare DAO Test", e);
        }
    }

    public void setUpTableForDao() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            this.daoClass.getMethod("createTable", Database.class, Boolean.TYPE).invoke(null, this.f6510db, Boolean.FALSE);
        } catch (NoSuchMethodException unused) {
            DaoLog.m5863i("No createTable method");
        }
    }

    public AbstractDaoTest(Class<D> cls, boolean z) {
        super(z);
        this.daoClass = cls;
    }
}
