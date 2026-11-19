package com.taobao.accs.p070a;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.taobao.accs.common.Constants;
import com.taobao.accs.p072ut.monitor.TrafficsMonitor;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.UtilityImpl;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.a.a */
/* loaded from: classes.dex */
public class C1899a extends SQLiteOpenHelper {

    /* renamed from: c */
    public static volatile C1899a f6047c;

    /* renamed from: e */
    public static final Lock f6048e = new ReentrantLock();

    /* renamed from: a */
    public int f6049a;

    /* renamed from: b */
    public LinkedList<a> f6050b;

    /* renamed from: d */
    public Context f6051d;

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.a.a$a */
    public class a {

        /* renamed from: a */
        public String f6052a;

        /* renamed from: b */
        public Object[] f6053b;

        public a(String str, Object[] objArr) {
            this.f6052a = str;
            this.f6053b = objArr;
        }
    }

    public C1899a(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
        this.f6049a = 0;
        this.f6050b = new LinkedList<>();
        this.f6051d = context;
    }

    /* renamed from: a */
    public static C1899a m5463a(Context context) {
        if (f6047c == null) {
            synchronized (C1899a.class) {
                if (f6047c == null) {
                    f6047c = new C1899a(context, Constants.DB_NAME, null, 3);
                }
            }
        }
        return f6047c;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getWritableDatabase() {
        if (AdapterUtilityImpl.checkIsWritable(super.getWritableDatabase().getPath(), 102400)) {
            return super.getWritableDatabase();
        }
        return null;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            if (f6048e.tryLock()) {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS traffic(_id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT, host TEXT,serviceid TEXT, bid TEXT, isbackground TEXT, size TEXT)");
            }
        } finally {
            f6048e.unlock();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        if (i < i2) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS service");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS network");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ping");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS msg");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ack");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS election");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS bindApp");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS bindUser");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS traffic");
            onCreate(sQLiteDatabase);
        }
    }

    /* renamed from: a */
    public void m5468a(String str, String str2, String str3, boolean z, long j, String str4) {
        if (m5465a(str, str3, z, str4)) {
            m5464a("UPDATE traffic SET size=? WHERE date=? AND host=? AND bid=? AND isbackground=?", new Object[]{Long.valueOf(j), str4, str, str3, String.valueOf(z)}, true);
        } else {
            m5464a("INSERT INTO traffic VALUES(null,?,?,?,?,?,?)", new Object[]{str4, str, str2, str3, String.valueOf(z), Long.valueOf(j)}, true);
        }
    }

    /* renamed from: a */
    private synchronized boolean m5465a(String str, String str2, boolean z, String str3) {
        SQLiteDatabase writableDatabase;
        Cursor cursorQuery = null;
        try {
            try {
                writableDatabase = getWritableDatabase();
            } catch (Exception e) {
                ALog.m5732w("DBHelper", e.toString(), new Object[0]);
                if (cursorQuery != null) {
                }
            }
            if (writableDatabase == null) {
                return false;
            }
            cursorQuery = writableDatabase.query("traffic", new String[]{"_id", "date", Constants.KEY_HOST, "serviceid", "bid", "isbackground", "size"}, "date=? AND host=? AND bid=? AND isbackground=?", new String[]{str3, str, str2, String.valueOf(z)}, null, null, null, String.valueOf(100));
            if (cursorQuery != null) {
                if (cursorQuery.getCount() > 0) {
                    cursorQuery.close();
                    return true;
                }
            }
            return false;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    /* renamed from: a */
    public void m5467a() {
        m5464a("DELETE FROM traffic", null, true);
    }

    /* renamed from: a */
    public List<TrafficsMonitor.C1971a> m5466a(boolean z) {
        SQLiteDatabase writableDatabase;
        Cursor cursorQuery;
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            Cursor cursor = null;
            try {
                try {
                    writableDatabase = getWritableDatabase();
                } catch (Exception e) {
                    e = e;
                }
                if (writableDatabase == null) {
                    return null;
                }
                if (z) {
                    cursorQuery = writableDatabase.query("traffic", new String[]{"_id", "date", Constants.KEY_HOST, "serviceid", "bid", "isbackground", "size"}, "date=?", new String[]{UtilityImpl.m5737a(System.currentTimeMillis())}, null, null, null, String.valueOf(100));
                } else {
                    cursorQuery = writableDatabase.query("traffic", new String[]{"_id", "date", Constants.KEY_HOST, "serviceid", "bid", "isbackground", "size"}, null, null, null, null, null, String.valueOf(100));
                }
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                try {
                    if (cursorQuery.moveToFirst()) {
                        do {
                            String string = cursorQuery.getString(1);
                            String string2 = cursorQuery.getString(2);
                            String string3 = cursorQuery.getString(3);
                            String string4 = cursorQuery.getString(4);
                            boolean zBooleanValue = Boolean.valueOf(cursorQuery.getString(5)).booleanValue();
                            long j = cursorQuery.getLong(6);
                            if (string4 != null && j > 0) {
                                arrayList.add(new TrafficsMonitor.C1971a(string, string4, string3, zBooleanValue, string2, j));
                            }
                        } while (cursorQuery.moveToNext());
                    }
                    cursorQuery.close();
                } catch (Exception e2) {
                    cursor = cursorQuery;
                    e = e2;
                    ALog.m5732w("DBHelper", e.toString(), new Object[0]);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return arrayList;
                } catch (Throwable th) {
                    cursor = cursorQuery;
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
    
        com.taobao.accs.utl.ALog.m5726d("DBHelper", "db is full!", new java.lang.Object[0]);
        onUpgrade(r5, 0, 1);
        r4.f6049a = 0;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void m5464a(java.lang.String r5, java.lang.Object[] r6, boolean r7) {
        /*
            r4 = this;
            monitor-enter(r4)
            r0 = 0
            java.util.LinkedList<com.taobao.accs.a.a$a> r1 = r4.f6050b     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            com.taobao.accs.a.a$a r2 = new com.taobao.accs.a.a$a     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            r3 = 0
            r2.<init>(r5, r6)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            r1.add(r2)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            java.util.LinkedList<com.taobao.accs.a.a$a> r5 = r4.f6050b     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            int r5 = r5.size()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            r6 = 5
            if (r5 > r6) goto L18
            if (r7 == 0) goto L7a
        L18:
            android.database.sqlite.SQLiteDatabase r5 = r4.getWritableDatabase()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            if (r5 != 0) goto L20
            monitor-exit(r4)
            return
        L20:
            java.util.LinkedList<com.taobao.accs.a.a$a> r6 = r4.f6050b     // Catch: java.lang.Throwable -> L67
            int r6 = r6.size()     // Catch: java.lang.Throwable -> L67
            if (r6 <= 0) goto L63
            java.util.LinkedList<com.taobao.accs.a.a$a> r6 = r4.f6050b     // Catch: java.lang.Throwable -> L67
            java.lang.Object r6 = r6.removeFirst()     // Catch: java.lang.Throwable -> L67
            com.taobao.accs.a.a$a r6 = (com.taobao.accs.p070a.C1899a.a) r6     // Catch: java.lang.Throwable -> L67
            java.lang.Object[] r7 = r6.f6053b     // Catch: java.lang.Throwable -> L67
            if (r7 == 0) goto L3c
            java.lang.String r7 = r6.f6052a     // Catch: java.lang.Throwable -> L67
            java.lang.Object[] r1 = r6.f6053b     // Catch: java.lang.Throwable -> L67
            r5.execSQL(r7, r1)     // Catch: java.lang.Throwable -> L67
            goto L41
        L3c:
            java.lang.String r7 = r6.f6052a     // Catch: java.lang.Throwable -> L67
            r5.execSQL(r7)     // Catch: java.lang.Throwable -> L67
        L41:
            java.lang.String r6 = r6.f6052a     // Catch: java.lang.Throwable -> L67
            java.lang.String r7 = "INSERT"
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> L67
            if (r6 == 0) goto L20
            int r6 = r4.f6049a     // Catch: java.lang.Throwable -> L67
            r7 = 1
            int r6 = r6 + r7
            r4.f6049a = r6     // Catch: java.lang.Throwable -> L67
            r1 = 4000(0xfa0, float:5.605E-42)
            if (r6 <= r1) goto L20
            java.lang.String r6 = "DBHelper"
            java.lang.String r1 = "db is full!"
            java.lang.Object[] r2 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L67
            com.taobao.accs.utl.ALog.m5726d(r6, r1, r2)     // Catch: java.lang.Throwable -> L67
            r4.onUpgrade(r5, r0, r7)     // Catch: java.lang.Throwable -> L67
            r4.f6049a = r0     // Catch: java.lang.Throwable -> L67
        L63:
            r5.close()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            goto L7a
        L67:
            r6 = move-exception
            r5.close()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            throw r6     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
        L6c:
            r5 = move-exception
            goto L7c
        L6e:
            r5 = move-exception
            java.lang.String r6 = "DBHelper"
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L6c
            java.lang.Object[] r7 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L6c
            com.taobao.accs.utl.ALog.m5726d(r6, r5, r7)     // Catch: java.lang.Throwable -> L6c
        L7a:
            monitor-exit(r4)
            return
        L7c:
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.accs.p070a.C1899a.m5464a(java.lang.String, java.lang.Object[], boolean):void");
    }
}
