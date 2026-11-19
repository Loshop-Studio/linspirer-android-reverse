package com.p061ta.utdid2.device;

import android.content.Context;
import android.support.v7.widget.TooltipCompatHandler;
import android.text.TextUtils;
import com.p061ta.p062a.C1866a;
import com.p061ta.p062a.p064b.C1873e;
import com.p061ta.p062a.p064b.RunnableC1876h;
import com.p061ta.p062a.p065c.C1879c;
import com.p061ta.p062a.p065c.C1882f;

/* renamed from: com.ta.utdid2.device.a */
/* loaded from: classes.dex */
public class C1889a {

    /* renamed from: a */
    public static final C1889a f6020a = new C1889a();

    /* renamed from: c */
    public static long f6021c = TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS;

    /* renamed from: d */
    public String f6022d = "";

    /* renamed from: a */
    public static C1889a m5422a() {
        return f6020a;
    }

    /* renamed from: f */
    private void m5424f() {
        C1882f.m5408e();
        if (TextUtils.isEmpty(this.f6022d)) {
            return;
        }
        try {
            final Context context = C1866a.m5365a().getContext();
            boolean zM5431c = C1891c.m5431c(context);
            C1882f.m5404a("", "isMainProcess", Boolean.valueOf(zM5431c));
            if (zM5431c) {
                new Thread(new Runnable() { // from class: com.ta.utdid2.device.a.1
                    @Override // java.lang.Runnable
                    public void run() throws InterruptedException {
                        try {
                            Thread.sleep(C1889a.f6021c);
                        } catch (Exception unused) {
                        }
                        if (C1873e.m5377a(context)) {
                            new RunnableC1876h(context).run();
                        } else {
                            C1882f.m5404a("", "unable upload!");
                        }
                    }
                }).start();
            }
        } catch (Throwable th) {
            C1882f.m5404a("", th);
        }
    }

    /* renamed from: l */
    private String m5425l() {
        if (C1866a.m5365a().getContext() == null) {
            return "";
        }
        String strM5380d = C1873e.m5380d();
        if (!C1892d.m5440c(strM5380d)) {
            return null;
        }
        C1882f.m5404a("AppUtdid", "read utdid from V5AppFile");
        C1892d.setType(7);
        return strM5380d;
    }

    public synchronized String getUtdid(Context context) {
        if (!TextUtils.isEmpty(this.f6022d)) {
            return this.f6022d;
        }
        try {
            C1879c.m5394c();
            String strM5425l = m5425l();
            if (TextUtils.isEmpty(strM5425l)) {
                strM5425l = C1892d.m5436a(context).getValue();
            }
            if (TextUtils.isEmpty(strM5425l)) {
                return "ffffffffffffffffffffffff";
            }
            this.f6022d = strM5425l;
            m5424f();
            return this.f6022d;
        } catch (Throwable th) {
            try {
                C1882f.m5403a("AppUtdid", th, new Object[0]);
                return "ffffffffffffffffffffffff";
            } finally {
                C1879c.m5395d();
            }
        }
    }

    /* renamed from: m */
    public synchronized String m5426m() {
        return this.f6022d;
    }
}
