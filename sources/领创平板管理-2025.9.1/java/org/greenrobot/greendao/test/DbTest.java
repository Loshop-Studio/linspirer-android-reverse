package org.greenrobot.greendao.test;

import android.app.Application;
import android.app.Instrumentation;
import android.database.sqlite.SQLiteDatabase;
import android.test.AndroidTestCase;
import com.huawei.hem.C0948f6;
import java.util.Random;
import org.greenrobot.greendao.DaoLog;
import org.greenrobot.greendao.DbUtils;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.StandardDatabase;

/* loaded from: classes.dex */
public abstract class DbTest extends AndroidTestCase {
    public static final String DB_NAME = "greendao-unittest-db.temp";
    public Application application;

    /* renamed from: db */
    public Database f6510db;
    public final boolean inMemory;
    public final Random random;

    public DbTest() {
        this(true);
    }

    public <T extends Application> T createApplication(Class<T> cls) {
        AndroidTestCase.assertNull("Application already created", this.application);
        try {
            T t = (T) Instrumentation.newApplication(cls, getContext());
            t.onCreate();
            this.application = t;
            return t;
        } catch (Exception e) {
            throw new RuntimeException("Could not create application " + cls, e);
        }
    }

    public Database createDatabase() {
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase;
        if (this.inMemory) {
            sQLiteDatabaseOpenOrCreateDatabase = SQLiteDatabase.create(null);
        } else {
            getContext().deleteDatabase(DB_NAME);
            sQLiteDatabaseOpenOrCreateDatabase = getContext().openOrCreateDatabase(DB_NAME, 0, null);
        }
        return new StandardDatabase(sQLiteDatabaseOpenOrCreateDatabase);
    }

    public <T extends Application> T getApplication() {
        AndroidTestCase.assertNotNull("Application not yet created", this.application);
        return (T) this.application;
    }

    public void logTableDump(String str) {
        Database database = this.f6510db;
        if (database instanceof StandardDatabase) {
            DbUtils.logTableDump(((StandardDatabase) database).getSQLiteDatabase(), str);
            return;
        }
        StringBuilder sbM1765j = C0948f6.m1765j("Table dump unsupported for ");
        sbM1765j.append(this.f6510db);
        DaoLog.m5867w(sbM1765j.toString());
    }

    public void setUp() {
        super.setUp();
        this.f6510db = createDatabase();
    }

    public void tearDown() {
        if (this.application != null) {
            terminateApplication();
        }
        this.f6510db.close();
        if (!this.inMemory) {
            getContext().deleteDatabase(DB_NAME);
        }
        super.tearDown();
    }

    public void terminateApplication() {
        AndroidTestCase.assertNotNull("Application not yet created", this.application);
        this.application.onTerminate();
        this.application = null;
    }

    public DbTest(boolean z) {
        this.inMemory = z;
        this.random = new Random();
    }
}
