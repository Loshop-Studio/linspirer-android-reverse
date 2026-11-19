package org.greenrobot.greendao.test;

import android.test.AndroidTestCase;
import com.huawei.hem.C0948f6;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.DaoLog;

/* loaded from: classes.dex */
public abstract class AbstractDaoTestLongPk<D extends AbstractDao<T, Long>, T> extends AbstractDaoTestSinglePk<D, T, Long> {
    public AbstractDaoTestLongPk(Class<D> cls) {
        super(cls);
    }

    public void testAssignPk() {
        if (!this.daoAccess.isEntityUpdateable()) {
            StringBuilder sbM1765j = C0948f6.m1765j("Skipping testAssignPk for not updateable ");
            sbM1765j.append(this.daoClass);
            DaoLog.m5859d(sbM1765j.toString());
            return;
        }
        T tCreateEntity = createEntity(null);
        if (tCreateEntity == null) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("Skipping testAssignPk for ");
            sbM1765j2.append(this.daoClass);
            sbM1765j2.append(" (createEntity returned null for null key)");
            DaoLog.m5859d(sbM1765j2.toString());
            return;
        }
        T tCreateEntity2 = createEntity(null);
        this.dao.insert(tCreateEntity);
        this.dao.insert(tCreateEntity2);
        Long l = (Long) this.daoAccess.getKey(tCreateEntity);
        AndroidTestCase.assertNotNull(l);
        Long l2 = (Long) this.daoAccess.getKey(tCreateEntity2);
        AndroidTestCase.assertNotNull(l2);
        AndroidTestCase.assertFalse(l.equals(l2));
        AndroidTestCase.assertNotNull(this.dao.load(l));
        AndroidTestCase.assertNotNull(this.dao.load(l2));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.test.AbstractDaoTestSinglePk
    public Long createRandomPk() {
        return Long.valueOf(this.random.nextLong());
    }
}
