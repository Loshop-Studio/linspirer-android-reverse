package com.huawei.hms.update.p033ui;

import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class UpdateBean implements Serializable {

    /* renamed from: a */
    public boolean f4582a;

    /* renamed from: b */
    public String f4583b;

    /* renamed from: c */
    public int f4584c;

    /* renamed from: d */
    public String f4585d;

    /* renamed from: e */
    public String f4586e;

    /* renamed from: f */
    public ArrayList f4587f;

    /* renamed from: g */
    public boolean f4588g = true;

    /* renamed from: a */
    public static <T> T m3479a(T t) {
        return t;
    }

    /* renamed from: a */
    public String m3480a() {
        return (String) m3479a(this.f4585d);
    }

    /* renamed from: b */
    public String m3481b() {
        return (String) m3479a(this.f4583b);
    }

    /* renamed from: c */
    public int m3482c() {
        return ((Integer) m3479a(Integer.valueOf(this.f4584c))).intValue();
    }

    /* renamed from: d */
    public boolean m3483d() {
        return ((Boolean) m3479a(Boolean.valueOf(this.f4582a))).booleanValue();
    }

    public String getClientAppName() {
        return (String) m3479a(this.f4586e);
    }

    public ArrayList getTypeList() {
        return (ArrayList) m3479a(this.f4587f);
    }

    public boolean isNeedConfirm() {
        return ((Boolean) m3479a(Boolean.valueOf(this.f4588g))).booleanValue();
    }

    public void setClientAppId(String str) {
        this.f4585d = str;
    }

    public void setClientAppName(String str) {
        this.f4586e = str;
    }

    public void setClientPackageName(String str) {
        this.f4583b = str;
    }

    public void setClientVersionCode(int i) {
        this.f4584c = i;
    }

    public void setHmsOrApkUpgrade(boolean z) {
        this.f4582a = z;
    }

    public void setNeedConfirm(boolean z) {
        this.f4588g = z;
    }

    public void setTypeList(ArrayList arrayList) {
        this.f4587f = arrayList;
    }
}
