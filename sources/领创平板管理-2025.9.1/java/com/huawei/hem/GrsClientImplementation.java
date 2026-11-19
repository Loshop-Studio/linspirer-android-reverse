package com.huawei.hem;

import android.content.Context;
import com.huawei.hms.framework.common.ExecutorsUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: com.huawei.hem.w8 */
/* loaded from: classes.dex */
public class GrsClientImplementation {

    /* renamed from: k */
    public static ExecutorService f3997k = ExecutorsUtils.newCachedThreadPool("GRS_GrsClient-Init");

    /* renamed from: a */
    public GrsBaseInfo f3998a;

    /* renamed from: b */
    public boolean f3999b = false;

    /* renamed from: c */
    public final Object f4000c = new Object();

    /* renamed from: d */
    public Context f4001d;

    /* renamed from: e */
    public GrsRequestController f4002e;

    /* renamed from: f */
    public GrsCacheManager f4003f;

    /* renamed from: g */
    public GrsPreferencesStore f4004g;

    /* renamed from: h */
    public GrsPreferencesStore f4005h;

    /* renamed from: i */
    public GrsUrlResolver f4006i;

    /* renamed from: j */
    public Future<Boolean> f4007j;

    /* renamed from: com.huawei.hem.w8$a */
    public class a implements Callable<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ Context f4008a;

        /* renamed from: b */
        public final /* synthetic */ GrsBaseInfo f4009b;

        /* renamed from: c */
        public final /* synthetic */ Context f4010c;

        public a(Context context, GrsBaseInfo grsBaseInfo, Context context2) {
            this.f4008a = context;
            this.f4009b = grsBaseInfo;
            this.f4010c = context2;
        }

        /* JADX WARN: Removed duplicated region for block: B:46:0x01b1  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x01b3  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x01b6 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0170 A[SYNTHETIC] */
        @Override // java.util.concurrent.Callable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean call() throws org.json.JSONException, java.lang.NumberFormatException, java.io.UnsupportedEncodingException {
            /*
                Method dump skipped, instructions count: 597
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1377w8.a.call():java.lang.Object");
        }
    }

    public GrsClientImplementation(Context context, GrsBaseInfo grsBaseInfo) {
        this.f4001d = context.getApplicationContext();
        m2901a(grsBaseInfo);
        if (this.f3999b) {
            return;
        }
        synchronized (this.f4000c) {
            if (!this.f3999b) {
                GrsBaseInfo grsBaseInfo2 = this.f3998a;
                this.f4007j = f3997k.submit(new a(this.f4001d, grsBaseInfo2, context));
            }
        }
    }

    public GrsClientImplementation(GrsBaseInfo grsBaseInfo) {
        m2901a(grsBaseInfo);
    }

    /* renamed from: a */
    public final void m2901a(GrsBaseInfo grsBaseInfo) {
        try {
            this.f3998a = grsBaseInfo.m5896clone();
        } catch (CloneNotSupportedException e) {
            Logger.m3439w("d", "GrsClient catch CloneNotSupportedException", e);
            this.f3998a = grsBaseInfo.copy();
        }
    }

    /* renamed from: b */
    public final boolean m2902b() {
        try {
            if (this.f4007j != null) {
                return this.f4007j.get(10L, TimeUnit.SECONDS).booleanValue();
            }
            return false;
        } catch (InterruptedException e) {
            Logger.m3439w("d", "init compute task interrupted.", e);
            return false;
        } catch (CancellationException unused) {
            Logger.m3434i("d", "init compute task canceled.");
            return false;
        } catch (ExecutionException e2) {
            Logger.m3439w("d", "init compute task failed.", e2);
            return false;
        } catch (TimeoutException unused2) {
            Logger.m3438w("d", "init compute task timed out");
            return false;
        } catch (Exception e3) {
            Logger.m3439w("d", "init compute task occur unknown Exception", e3);
            return false;
        }
    }
}
