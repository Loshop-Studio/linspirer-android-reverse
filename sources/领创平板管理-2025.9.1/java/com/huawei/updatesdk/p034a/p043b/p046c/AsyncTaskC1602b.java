package com.huawei.updatesdk.p034a.p043b.p046c;

import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.p034a.p035a.C1581a;
import com.huawei.updatesdk.p034a.p035a.p036b.C1583b;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import com.huawei.updatesdk.p034a.p035a.p040d.AbstractC1591g;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1605c;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1606d;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.InterfaceC1603a;
import com.huawei.updatesdk.p048b.p057g.C1636a;
import com.huawei.updatesdk.p048b.p057g.C1637b;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.util.concurrent.Executor;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONObject;

/* renamed from: com.huawei.updatesdk.a.b.c.b */
/* loaded from: classes.dex */
public class AsyncTaskC1602b extends AsyncTask<C1605c, Void, C1606d> {

    /* renamed from: a */
    public C1605c f4648a;

    /* renamed from: c */
    public InterfaceC1603a f4650c;

    /* renamed from: b */
    public C1606d f4649b = null;

    /* renamed from: d */
    public C1583b f4651d = null;

    /* renamed from: e */
    public int f4652e = 0;

    public AsyncTaskC1602b(C1605c c1605c, InterfaceC1603a interfaceC1603a) {
        this.f4648a = null;
        this.f4650c = null;
        this.f4648a = c1605c;
        this.f4650c = interfaceC1603a;
    }

    /* renamed from: a */
    private C1606d m3605a(String str, C1606d c1606d) {
        try {
            c1606d.fromJson(new JSONObject(str));
            c1606d.m3637b(0);
        } catch (Exception e) {
            C1584a.m3515a("StoreTask", "parse json error", e);
        }
        return c1606d;
    }

    /* renamed from: a */
    private void m3606a(C1606d c1606d, int i, C1606d.a aVar, Throwable th) {
        if (c1606d != null) {
            c1606d.m3637b(i);
            c1606d.m3634a(aVar);
            c1606d.m3635a(th.toString());
        }
    }

    /* renamed from: a */
    private void m3607a(C1606d c1606d, Throwable th, String str) {
        C1606d.a aVar;
        int i = 1;
        if (th instanceof ConnectException) {
            aVar = C1606d.a.CONNECT_EXCEPTION;
        } else if ((th instanceof SocketTimeoutException) || (th instanceof ConnectTimeoutException)) {
            aVar = C1606d.a.CONNECT_EXCEPTION;
            i = 2;
        } else if (th instanceof IllegalArgumentException) {
            aVar = C1606d.a.PARAM_ERROR;
            i = 5;
        } else if (th instanceof IllegalAccessException) {
            aVar = C1606d.a.UNKNOWN_EXCEPTION;
        } else {
            if (!(th instanceof ArrayIndexOutOfBoundsException)) {
                if ((th instanceof InterruptedException) || (th instanceof InterruptedIOException)) {
                    m3606a(c1606d, 0, C1606d.a.NORMAL, th);
                    C1581a.m3500a("StoreTask", "UpdateSDK task is canceled");
                } else if (th instanceof IOException) {
                    aVar = C1606d.a.IO_EXCEPTION;
                } else if (c1606d != null) {
                    c1606d.m3635a(th.toString());
                }
                m3608a(str, th);
            }
            aVar = C1606d.a.NO_PROGUARD;
            i = 6;
        }
        m3606a(c1606d, i, aVar, th);
        m3608a(str, th);
    }

    /* renamed from: a */
    private void m3608a(String str, Throwable th) {
        StringBuilder sbM1767l = C0948f6.m1767l("invoke store error", ", exceptionType:");
        sbM1767l.append(th.getClass().getName());
        sbM1767l.append(", url:");
        sbM1767l.append(str);
        sbM1767l.append(", method:");
        sbM1767l.append(this.f4648a.m3627b());
        sbM1767l.append(", retryTimes:" + this.f4652e);
        String string = sbM1767l.toString();
        C1584a.m3515a("StoreTask", string, th);
        C1581a.m3500a("StoreTask", "UpdateSDK call store error: " + string);
    }

    /* renamed from: a */
    private boolean m3609a(String str) {
        return TextUtils.isEmpty(str) || !AbstractC1591g.m3540d(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m3610b(com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1606d r5) {
        /*
            r4 = this;
            java.lang.String r0 = "notifyResult, create response error, method:"
            boolean r1 = r4.isCancelled()
            if (r1 != 0) goto L5a
            com.huawei.updatesdk.a.b.c.c.a r1 = r4.f4650c
            if (r1 == 0) goto L5a
            if (r5 != 0) goto L53
            java.lang.String r1 = "StoreTask"
            java.lang.String r2 = "notifyResult, response is null"
            com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a.m3516b(r1, r2)
            com.huawei.updatesdk.a.b.c.c.c r2 = r4.f4648a     // Catch: java.lang.IllegalAccessException -> L20 java.lang.InstantiationException -> L27
            java.lang.String r2 = r2.m3627b()     // Catch: java.lang.IllegalAccessException -> L20 java.lang.InstantiationException -> L27
            com.huawei.updatesdk.a.b.c.c.d r5 = com.huawei.updatesdk.p034a.p043b.p046c.C1601a.m3604a(r2)     // Catch: java.lang.IllegalAccessException -> L20 java.lang.InstantiationException -> L27
            goto L40
        L20:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            goto L2d
        L27:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
        L2d:
            r3.append(r0)
            com.huawei.updatesdk.a.b.c.c.c r0 = r4.f4648a
            java.lang.String r0 = r0.m3627b()
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a.m3515a(r1, r0, r2)
        L40:
            if (r5 != 0) goto L4a
            com.huawei.updatesdk.a.b.c.c.d r5 = new com.huawei.updatesdk.a.b.c.c.d
            r5.<init>()
            com.huawei.updatesdk.a.b.c.c.d$a r0 = com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1606d.a.PARAM_ERROR
            goto L4c
        L4a:
            com.huawei.updatesdk.a.b.c.c.d$a r0 = com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1606d.a.UNKNOWN_EXCEPTION
        L4c:
            r5.m3634a(r0)
            r0 = 1
            r5.m3637b(r0)
        L53:
            com.huawei.updatesdk.a.b.c.c.a r0 = r4.f4650c
            com.huawei.updatesdk.a.b.c.c.c r1 = r4.f4648a
            r0.mo3622b(r1, r5)
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p034a.p043b.p046c.AsyncTaskC1602b.m3610b(com.huawei.updatesdk.a.b.c.c.d):void");
    }

    /* renamed from: b */
    private void m3611b(String str) {
        C1581a.m3500a("StoreTask", TextUtils.isEmpty(str) ? "UpdateSDK response error, resData == null" : "UpdateSDK response error, resData is not json string");
    }

    /* renamed from: c */
    private boolean m3612c(C1606d c1606d) {
        if (isCancelled()) {
            return false;
        }
        if (c1606d.m3639d() != 1 && c1606d.m3639d() != 2) {
            return false;
        }
        int i = this.f4652e;
        this.f4652e = i + 1;
        if (i >= 3) {
            StringBuilder sbM1765j = C0948f6.m1765j("retry completed total times = ");
            sbM1765j.append(this.f4652e);
            sbM1765j.append(",response.responseCode = ");
            sbM1765j.append(c1606d.m3639d());
            C1584a.m3514a("StoreTask", sbM1765j.toString());
            return false;
        }
        StringBuilder sbM1765j2 = C0948f6.m1765j("retry times = ");
        sbM1765j2.append(this.f4652e);
        sbM1765j2.append(",response.responseCode = ");
        sbM1765j2.append(c1606d.m3639d());
        C1584a.m3514a("StoreTask", sbM1765j2.toString());
        return true;
    }

    /* renamed from: d */
    private String m3613d() throws PackageManager.NameNotFoundException {
        String strM3748a = C1636a.m3748a();
        return TextUtils.isEmpty(strM3748a) ? "Android/1.0" : strM3748a;
    }

    /* renamed from: e */
    private void m3614e() {
        m3610b(this.f4649b);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1606d m3615a() {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p034a.p043b.p046c.AsyncTaskC1602b.m3615a():com.huawei.updatesdk.a.b.c.c.d");
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1606d doInBackground(C1605c... c1605cArr) {
        StringBuilder sbM1765j = C0948f6.m1765j("doInBackground, method:");
        sbM1765j.append(this.f4648a.m3627b());
        C1584a.m3514a("StoreTask", sbM1765j.toString());
        C1637b.m3751a(this);
        C1606d c1606dM3620c = m3620c();
        InterfaceC1603a interfaceC1603a = this.f4650c;
        if (interfaceC1603a != null) {
            interfaceC1603a.mo3621a(this.f4648a, c1606dM3620c);
        }
        return c1606dM3620c;
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(C1606d c1606d) {
        StringBuilder sbM1765j = C0948f6.m1765j("onPostExecute, method:");
        sbM1765j.append(this.f4648a.m3627b());
        C1584a.m3514a("StoreTask", sbM1765j.toString());
        C1637b.m3750a().remove(this);
        m3614e();
    }

    /* renamed from: a */
    public final void m3618a(Executor executor) {
        executeOnExecutor(executor, this.f4648a);
    }

    /* renamed from: b */
    public void m3619b() {
        C1583b c1583b = this.f4651d;
        if (c1583b != null) {
            c1583b.m3509a();
            this.f4651d = null;
        }
    }

    /* renamed from: c */
    public final C1606d m3620c() {
        C1606d c1606dM3615a = null;
        do {
            if (this.f4652e > 0 && c1606dM3615a != null) {
                StringBuilder sbM1765j = C0948f6.m1765j("call store error! responseCode:");
                sbM1765j.append(c1606dM3615a.m3639d());
                sbM1765j.append(", retryTimes:");
                sbM1765j.append(this.f4652e);
                C1584a.m3514a("StoreTask", sbM1765j.toString());
            }
            c1606dM3615a = m3615a();
        } while (m3612c(c1606dM3615a));
        this.f4649b = c1606dM3615a;
        return c1606dM3615a;
    }
}
