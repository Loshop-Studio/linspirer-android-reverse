package com.loc;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: DB.java */
/* renamed from: com.loc.ac */
/* loaded from: classes.dex */
public final class DB extends SQLiteOpenHelper {

    /* renamed from: b */
    public static boolean f4881b = true;

    /* renamed from: c */
    public static boolean f4882c = false;

    /* renamed from: a */
    public DBCreator f4883a;

    public DB(Context context, String str, DBCreator interfaceC1864y) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.f4883a = interfaceC1864y;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.f4883a.mo4915a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
