package com.huawei.hms.availableupdate;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: DownloadRecord.java */
/* renamed from: com.huawei.hms.availableupdate.a */
/* loaded from: classes.dex */
public class C1490a {

    /* renamed from: a */
    public String f4434a;

    /* renamed from: b */
    public int f4435b;

    /* renamed from: c */
    public String f4436c;

    /* renamed from: d */
    public int f4437d;

    /* renamed from: a */
    public void m3264a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.huawei.hms.update.DOWNLOAD_RECORD" + str, 0);
        this.f4434a = sharedPreferences.getString("mUri", "");
        this.f4435b = sharedPreferences.getInt("mSize", 0);
        this.f4436c = sharedPreferences.getString("mHash", "");
        this.f4437d = sharedPreferences.getInt("mReceived", 0);
    }

    /* renamed from: b */
    public final void m3267b(Context context, String str) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("com.huawei.hms.update.DOWNLOAD_RECORD" + str, 0).edit();
        editorEdit.putString("mUri", this.f4434a);
        editorEdit.putInt("mSize", this.f4435b);
        editorEdit.putString("mHash", this.f4436c);
        editorEdit.putInt("mReceived", this.f4437d);
        editorEdit.commit();
    }

    /* renamed from: a */
    public void m3265a(String str, int i, String str2) {
        this.f4434a = str;
        this.f4435b = i;
        this.f4436c = str2;
        this.f4437d = 0;
    }

    /* renamed from: b */
    public int m3266b() {
        return this.f4435b;
    }

    /* renamed from: b */
    public boolean m3268b(String str, int i, String str2) {
        String str3;
        String str4;
        return str != null && str2 != null && (str3 = this.f4434a) != null && str3.equals(str) && this.f4435b == i && (str4 = this.f4436c) != null && str4.equals(str2) && this.f4437d <= this.f4435b;
    }

    /* renamed from: a */
    public void m3263a(Context context, int i, String str) {
        this.f4437d = i;
        m3267b(context, str);
    }

    /* renamed from: a */
    public int m3262a() {
        return this.f4437d;
    }
}
