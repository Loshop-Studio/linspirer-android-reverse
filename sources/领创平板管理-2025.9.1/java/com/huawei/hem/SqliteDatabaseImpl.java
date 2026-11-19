package com.huawei.hem;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.SparseArray;
import com.huawei.hem.ConnectionProfile;
import com.huawei.hem.FileDownloadDatabase;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.android.agoo.common.AgooConstants;

/* compiled from: SqliteDatabaseImpl.java */
/* renamed from: com.huawei.hem.lf */
/* loaded from: classes.dex */
public class SqliteDatabaseImpl implements FileDownloadDatabase {

    /* renamed from: a */
    public final SQLiteDatabase f3175a = new SqliteDatabaseOpenHelper(ConnectionProfile.b.f3400a).getWritableDatabase();

    /* compiled from: SqliteDatabaseImpl.java */
    /* renamed from: com.huawei.hem.lf$b */
    public class b implements Iterator<FileDownloadModel> {

        /* renamed from: a */
        public final Cursor f3181a;

        /* renamed from: b */
        public final List<Integer> f3182b = new ArrayList();

        /* renamed from: c */
        public int f3183c;

        public b() {
            this.f3181a = SqliteDatabaseImpl.this.f3175a.rawQuery("SELECT * FROM filedownloader", null);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3181a.moveToNext();
        }

        @Override // java.util.Iterator
        public FileDownloadModel next() {
            FileDownloadModel fileDownloadModelM2314r = SqliteDatabaseImpl.m2314r(this.f3181a);
            this.f3183c = fileDownloadModelM2314r.f4834a;
            return fileDownloadModelM2314r;
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f3182b.add(Integer.valueOf(this.f3183c));
        }
    }

    /* renamed from: r */
    public static FileDownloadModel m2314r(Cursor cursor) {
        FileDownloadModel fileDownloadModel = new FileDownloadModel();
        fileDownloadModel.f4834a = cursor.getInt(cursor.getColumnIndex("_id"));
        fileDownloadModel.f4835b = cursor.getString(cursor.getColumnIndex(AgooConstants.OPEN_URL));
        String string = cursor.getString(cursor.getColumnIndex("path"));
        boolean z = cursor.getShort(cursor.getColumnIndex("pathAsDirectory")) == 1;
        fileDownloadModel.f4836c = string;
        fileDownloadModel.f4837d = z;
        fileDownloadModel.f4839f.set((byte) cursor.getShort(cursor.getColumnIndex("status")));
        fileDownloadModel.f4840g.set(cursor.getLong(cursor.getColumnIndex("sofar")));
        fileDownloadModel.m3931f(cursor.getLong(cursor.getColumnIndex("total")));
        fileDownloadModel.f4842i = cursor.getString(cursor.getColumnIndex("errMsg"));
        fileDownloadModel.f4843j = cursor.getString(cursor.getColumnIndex("etag"));
        fileDownloadModel.f4838e = cursor.getString(cursor.getColumnIndex("filename"));
        fileDownloadModel.f4844k = cursor.getInt(cursor.getColumnIndex("connectionCount"));
        return fileDownloadModel;
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: a */
    public void mo2091a(int i) {
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: b */
    public void mo2092b(ConnectionModel c1160ng) {
        this.f3175a.insert("filedownloaderConnection", null, c1160ng.m2413b());
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: c */
    public void mo2093c(int i) throws SQLException {
        this.f3175a.execSQL("DELETE FROM filedownloaderConnection WHERE id = " + i);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    public void clear() {
        this.f3175a.delete("filedownloader", null, null);
        this.f3175a.delete("filedownloaderConnection", null, null);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: d */
    public FileDownloadDatabase.a mo2094d() {
        return new a();
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: e */
    public void mo2095e(int i, Throwable th) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", (Byte) (byte) 5);
        m2315s(i, contentValues);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: f */
    public void mo2096f(int i) {
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: g */
    public void mo2097g(int i, long j) {
        remove(i);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: h */
    public void mo2098h(FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel == null) {
            FileDownloadLog.m1821e(this, "update but model == null!", new Object[0]);
        } else if (mo2105o(fileDownloadModel.f4834a) == null) {
            this.f3175a.insert("filedownloader", null, fileDownloadModel.m3932g());
        } else {
            this.f3175a.update("filedownloader", fileDownloadModel.m3932g(), "_id = ? ", new String[]{String.valueOf(fileDownloadModel.f4834a)});
        }
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: i */
    public void mo2099i(int i, Throwable th, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", (Byte) (byte) -1);
        contentValues.put("sofar", Long.valueOf(j));
        m2315s(i, contentValues);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: j */
    public void mo2100j(int i, String str, long j, long j2, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("sofar", Long.valueOf(j));
        contentValues.put("total", Long.valueOf(j2));
        contentValues.put("etag", str);
        contentValues.put("connectionCount", Integer.valueOf(i2));
        m2315s(i, contentValues);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: k */
    public void mo2101k(int i, int i2, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("currentOffset", Long.valueOf(j));
        this.f3175a.update("filedownloaderConnection", contentValues, "id = ? AND connectionIndex = ?", new String[]{Integer.toString(i), Integer.toString(i2)});
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: l */
    public void mo2102l(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) 3);
        contentValues.put("sofar", Long.valueOf(j));
        m2315s(i, contentValues);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: m */
    public void mo2103m(int i, long j, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) 2);
        contentValues.put("total", Long.valueOf(j));
        contentValues.put("etag", str);
        contentValues.put("filename", str2);
        m2315s(i, contentValues);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: n */
    public List<ConnectionModel> mo2104n(int i) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = this.f3175a.rawQuery(FileDownloadUtils.m1955e("SELECT * FROM %s WHERE %s = ?", "filedownloaderConnection", AgooConstants.MESSAGE_ID), new String[]{Integer.toString(i)});
            while (cursorRawQuery.moveToNext()) {
                ConnectionModel c1160ng = new ConnectionModel();
                c1160ng.f3326a = i;
                c1160ng.f3327b = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("connectionIndex"));
                c1160ng.f3328c = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("startOffset"));
                c1160ng.f3329d = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("currentOffset"));
                c1160ng.f3330e = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("endOffset"));
                arrayList.add(c1160ng);
            }
            cursorRawQuery.close();
            return arrayList;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: o */
    public FileDownloadModel mo2105o(int i) throws Throwable {
        Throwable th;
        Cursor cursorRawQuery;
        try {
            cursorRawQuery = this.f3175a.rawQuery(FileDownloadUtils.m1955e("SELECT * FROM %s WHERE %s = ?", "filedownloader", "_id"), new String[]{Integer.toString(i)});
            try {
                if (!cursorRawQuery.moveToNext()) {
                    cursorRawQuery.close();
                    return null;
                }
                FileDownloadModel fileDownloadModelM2314r = m2314r(cursorRawQuery);
                cursorRawQuery.close();
                return fileDownloadModelM2314r;
            } catch (Throwable th2) {
                th = th2;
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
        }
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: p */
    public void mo2106p(int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("connectionCount", Integer.valueOf(i2));
        this.f3175a.update("filedownloader", contentValues, "_id = ? ", new String[]{Integer.toString(i)});
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: q */
    public void mo2107q(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) -2);
        contentValues.put("sofar", Long.valueOf(j));
        m2315s(i, contentValues);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    public boolean remove(int i) {
        return this.f3175a.delete("filedownloader", "_id = ?", new String[]{String.valueOf(i)}) != 0;
    }

    /* renamed from: s */
    public final void m2315s(int i, ContentValues contentValues) {
        this.f3175a.update("filedownloader", contentValues, "_id = ? ", new String[]{String.valueOf(i)});
    }

    /* compiled from: SqliteDatabaseImpl.java */
    /* renamed from: com.huawei.hem.lf$a */
    public class a implements FileDownloadDatabase.a {

        /* renamed from: a */
        public final SparseArray<FileDownloadModel> f3176a;

        /* renamed from: b */
        public b f3177b;

        /* renamed from: c */
        public final SparseArray<FileDownloadModel> f3178c;

        /* renamed from: d */
        public final SparseArray<List<ConnectionModel>> f3179d;

        public a() {
            this.f3176a = new SparseArray<>();
            this.f3178c = null;
            this.f3179d = null;
        }

        @Override // com.huawei.hem.InterfaceC1033if.a
        /* renamed from: a */
        public void mo2108a(FileDownloadModel fileDownloadModel) {
        }

        @Override // com.huawei.hem.InterfaceC1033if.a
        /* renamed from: c */
        public void mo2109c(FileDownloadModel fileDownloadModel) {
            SparseArray<FileDownloadModel> sparseArray = this.f3178c;
            if (sparseArray != null) {
                sparseArray.put(fileDownloadModel.f4834a, fileDownloadModel);
            }
        }

        @Override // com.huawei.hem.InterfaceC1033if.a
        /* renamed from: d */
        public void mo2110d() throws SQLException {
            b bVar = this.f3177b;
            if (bVar != null) {
                bVar.f3181a.close();
                if (!bVar.f3182b.isEmpty()) {
                    String strJoin = TextUtils.join(", ", bVar.f3182b);
                    SqliteDatabaseImpl.this.f3175a.execSQL(FileDownloadUtils.m1955e("DELETE FROM %s WHERE %s IN (%s);", "filedownloader", "_id", strJoin));
                    SqliteDatabaseImpl.this.f3175a.execSQL(FileDownloadUtils.m1955e("DELETE FROM %s WHERE %s IN (%s);", "filedownloaderConnection", AgooConstants.MESSAGE_ID, strJoin));
                }
            }
            int size = this.f3176a.size();
            if (size < 0) {
                return;
            }
            SqliteDatabaseImpl.this.f3175a.beginTransaction();
            for (int i = 0; i < size; i++) {
                try {
                    int iKeyAt = this.f3176a.keyAt(i);
                    FileDownloadModel fileDownloadModel = this.f3176a.get(iKeyAt);
                    SqliteDatabaseImpl.this.f3175a.delete("filedownloader", "_id = ?", new String[]{String.valueOf(iKeyAt)});
                    SqliteDatabaseImpl.this.f3175a.insert("filedownloader", null, fileDownloadModel.m3932g());
                    if (fileDownloadModel.f4844k > 1) {
                        ArrayList arrayList = (ArrayList) SqliteDatabaseImpl.this.mo2104n(iKeyAt);
                        if (arrayList.size() > 0) {
                            SqliteDatabaseImpl.this.f3175a.delete("filedownloaderConnection", "id = ?", new String[]{String.valueOf(iKeyAt)});
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                ConnectionModel c1160ng = (ConnectionModel) it.next();
                                c1160ng.f3326a = fileDownloadModel.f4834a;
                                SqliteDatabaseImpl.this.f3175a.insert("filedownloaderConnection", null, c1160ng.m2413b());
                            }
                        }
                    }
                } finally {
                    SqliteDatabaseImpl.this.f3175a.endTransaction();
                }
            }
            if (this.f3178c != null && this.f3179d != null) {
                int size2 = this.f3178c.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    int i3 = this.f3178c.valueAt(i2).f4834a;
                    List<ConnectionModel> listMo2104n = SqliteDatabaseImpl.this.mo2104n(i3);
                    if (((ArrayList) listMo2104n).size() > 0) {
                        this.f3179d.put(i3, listMo2104n);
                    }
                }
            }
            SqliteDatabaseImpl.this.f3175a.setTransactionSuccessful();
        }

        @Override // com.huawei.hem.InterfaceC1033if.a
        /* renamed from: f */
        public void mo2111f(int i, FileDownloadModel fileDownloadModel) {
            this.f3176a.put(i, fileDownloadModel);
        }

        @Override // java.lang.Iterable
        public Iterator<FileDownloadModel> iterator() {
            b bVar = SqliteDatabaseImpl.this.new b();
            this.f3177b = bVar;
            return bVar;
        }

        public a(SparseArray<FileDownloadModel> sparseArray, SparseArray<List<ConnectionModel>> sparseArray2) {
            this.f3176a = new SparseArray<>();
            this.f3178c = sparseArray;
            this.f3179d = sparseArray2;
        }
    }
}
