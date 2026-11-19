package com.taobao.accs.client;

import android.content.Context;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.utl.ALog;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.client.c */
/* loaded from: classes.dex */
public class C1912c {

    /* renamed from: a */
    public Context f6071a;

    /* renamed from: b */
    public ConcurrentMap<String, Integer> f6072b = new ConcurrentHashMap();

    /* renamed from: c */
    public String f6073c;

    public C1912c(Context context, String str, String str2, String str3) {
        this.f6073c = "ClientManager_";
        if (context == null) {
            throw new RuntimeException("Context is null!!");
        }
        this.f6073c = CompilerOutline.m1762g(new StringBuilder(), this.f6073c, str);
        this.f6071a = context.getApplicationContext();
    }

    /* renamed from: a */
    public void m5478a(String str) {
        Integer num = this.f6072b.get(str);
        if (num == null || num.intValue() != 2) {
            this.f6072b.put(str, 2);
        }
    }

    /* renamed from: b */
    public void m5479b(String str) {
        Integer num = this.f6072b.get(str);
        if (num == null || num.intValue() != 4) {
            this.f6072b.put(str, 4);
        }
    }

    /* renamed from: c */
    public void m5480c(String str) {
        Integer num = this.f6072b.get(str);
        if (num == null || num.intValue() != 1) {
            this.f6072b.put(str, 1);
        }
    }

    /* renamed from: d */
    public boolean m5481d(String str) {
        Integer num = this.f6072b.get(str);
        ALog.m5729i(this.f6073c, "isAppBinded", "appStatus", num, "mBindStatus", this.f6072b);
        return num != null && num.intValue() == 2;
    }

    /* renamed from: e */
    public boolean m5482e(String str) {
        Integer num = this.f6072b.get(str);
        return num != null && num.intValue() == 4;
    }

    /* renamed from: f */
    public boolean m5483f(String str) {
        Integer num = this.f6072b.get(str);
        return num != null && num.intValue() == 1;
    }

    /* renamed from: a */
    public void m5477a() {
        try {
            this.f6072b.clear();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
