package com.loc;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: DB.java */
/* renamed from: com.loc.ac */
/* loaded from: classes.dex */
public final class C1713ac extends SQLiteOpenHelper {

    /* renamed from: b */
    public static boolean f4881b = true;

    /* renamed from: c */
    public static boolean f4882c = false;

    /* renamed from: a */
    public InterfaceC1864y f4883a;

    public C1713ac(Context context, String str, InterfaceC1864y interfaceC1864y) {
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
