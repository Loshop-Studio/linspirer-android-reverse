package com.p061ta.utdid2.device;

import android.content.Context;
import android.support.v7.widget.TooltipCompatHandler;
import android.text.TextUtils;
import com.p061ta.p062a.UtDeviceApplicationContext;
import com.p061ta.p062a.p064b.UtdidFileLocations;
import com.p061ta.p062a.p064b.UploadUtdidReportTask;
import com.p061ta.p062a.p065c.UtdidFileLock;
import com.p061ta.p062a.p065c.UtCallsiteLogger;

/* renamed from: com.ta.utdid2.device.a */
/* loaded from: classes.dex */
public class AppUtdidStore {

    /* renamed from: a */
    public static final AppUtdidStore f6020a = new AppUtdidStore();

    /* renamed from: c */
    public static long f6021c = TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS;

    /* renamed from: d */
    public String f6022d = "";

    /* renamed from: a */
    public static AppUtdidStore m5422a() {
        return f6020a;
    }

    /* renamed from: f */
    private void m5424f() {
        UtCallsiteLogger.m5408e();
        if (TextUtils.isEmpty(this.f6022d)) {
            return;
        }
        try {
            final Context context = UtDeviceApplicationContext.m5365a().getContext();
            boolean zM5431c = UtProcessName.m5431c(context);
            UtCallsiteLogger.m5404a("", "isMainProcess", Boolean.valueOf(zM5431c));
            if (zM5431c) {
                new Thread(new Runnable() { // from class: com.ta.utdid2.device.a.1
                    @Override // java.lang.Runnable
                    public void run() throws InterruptedException {
                        try {
                            Thread.sleep(AppUtdidStore.f6021c);
                        } catch (Exception unused) {
                        }
                        if (UtdidFileLocations.m5377a(context)) {
                            new UploadUtdidReportTask(context).run();
                        } else {
                            UtCallsiteLogger.m5404a("", "unable upload!");
                        }
                    }
                }).start();
            }
        } catch (Throwable th) {
            UtCallsiteLogger.m5404a("", th);
        }
    }

    /* renamed from: l */
    private String m5425l() {
        if (UtDeviceApplicationContext.m5365a().getContext() == null) {
            return "";
        }
        String strM5380d = UtdidFileLocations.m5380d();
        if (!UtdidValueGenerator.m5440c(strM5380d)) {
            return null;
        }
        UtCallsiteLogger.m5404a("AppUtdid", "read utdid from V5AppFile");
        UtdidValueGenerator.setType(7);
        return strM5380d;
    }

    public synchronized String getUtdid(Context context) {
        if (!TextUtils.isEmpty(this.f6022d)) {
            return this.f6022d;
        }
        try {
            UtdidFileLock.m5394c();
            String strM5425l = m5425l();
            if (TextUtils.isEmpty(strM5425l)) {
                strM5425l = UtdidValueGenerator.m5436a(context).getValue();
            }
            if (TextUtils.isEmpty(strM5425l)) {
                return "ffffffffffffffffffffffff";
            }
            this.f6022d = strM5425l;
            m5424f();
            return this.f6022d;
        } catch (Throwable th) {
            try {
                UtCallsiteLogger.m5403a("AppUtdid", th, new Object[0]);
                return "ffffffffffffffffffffffff";
            } finally {
                UtdidFileLock.m5395d();
            }
        }
    }

    /* renamed from: m */
    public synchronized String m5426m() {
        return this.f6022d;
    }
}
