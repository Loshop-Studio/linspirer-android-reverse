package com.loc;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: SdCardDbCreator.java */
/* renamed from: com.loc.eh */
/* loaded from: classes.dex */
public class C1826eh implements InterfaceC1864y {
    @Override // com.loc.InterfaceC1864y
    /* renamed from: a */
    public final String mo4914a() {
        return "alsn20170807.db";
    }

    @Override // com.loc.InterfaceC1864y
    /* renamed from: a */
    public final void mo4915a(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS c (_id integer primary key autoincrement, a2 varchar(100), a4 varchar(2000), a3 LONG );");
        } catch (Throwable th) {
            C1834ep.m5014a(th, "SdCardDbCreator", "onCreate");
        }
    }
}
