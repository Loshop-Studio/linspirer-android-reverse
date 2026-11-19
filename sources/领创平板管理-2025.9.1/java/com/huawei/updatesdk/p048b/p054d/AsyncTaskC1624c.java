package com.huawei.updatesdk.p048b.p054d;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import com.huawei.updatesdk.p034a.p035a.p040d.AbstractC1588d;
import com.huawei.updatesdk.p034a.p043b.p044a.C1598a;
import com.huawei.updatesdk.p034a.p043b.p045b.C1600b;
import com.huawei.updatesdk.p048b.p056f.C1635c;
import com.huawei.updatesdk.p048b.p057g.C1637b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

/* renamed from: com.huawei.updatesdk.b.d.c */
/* loaded from: classes.dex */
public class AsyncTaskC1624c extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    public String f4694a;

    /* renamed from: b */
    public HttpURLConnection f4695b;

    /* renamed from: d */
    public C1623b f4697d;

    /* renamed from: c */
    public boolean f4696c = false;

    /* renamed from: e */
    public Handler f4698e = new b(null);

    /* renamed from: com.huawei.updatesdk.b.d.c$a */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AsyncTaskC1624c.this.f4695b != null) {
                AsyncTaskC1624c.this.f4696c = true;
                AsyncTaskC1624c.this.f4695b.disconnect();
            }
            AbstractC1588d.m3527a(new File(AsyncTaskC1624c.m3714e()));
        }
    }

    /* renamed from: com.huawei.updatesdk.b.d.c$b */
    public static class b extends Handler {
        public b() {
        }

        public /* synthetic */ b(a aVar) {
            this();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            Object obj = message.obj;
            if (obj instanceof C1623b) {
                C1623b c1623b = (C1623b) obj;
                Intent intent = new Intent();
                C1600b c1600bM3595a = C1600b.m3595a(intent);
                int i = message.what;
                if (i == 2) {
                    intent.putExtra("download_apk_size", c1623b.m3705e());
                    intent.putExtra("download_apk_already", c1623b.m3698a());
                    C1635c.m3744b().m3745a(c1600bM3595a);
                    return;
                }
                if (i != 3) {
                    if (i == 4) {
                        C1626e.m3722a(C1598a.m3591c().m3592a(), AsyncTaskC1624c.m3714e() + "/appmarket.apk", c1623b.m3703c());
                    } else if (i != 5) {
                        return;
                    }
                }
                Bundle bundle = new Bundle();
                bundle.putInt("download_status_param", message.what);
                intent.putExtras(bundle);
                C1635c.m3744b().m3746b(c1600bM3595a);
            }
        }
    }

    public AsyncTaskC1624c(C1623b c1623b) {
        this.f4697d = c1623b;
        if (TextUtils.isEmpty(c1623b.m3703c())) {
            return;
        }
        this.f4694a = c1623b.m3703c();
    }

    /* renamed from: a */
    private void m3707a(int i, long j, String str, int i2) {
        C1623b c1623b = new C1623b();
        c1623b.m3699a(i);
        c1623b.m3700a(j);
        c1623b.m3701a(str);
        Handler handler = this.f4698e;
        if (handler == null) {
            return;
        }
        handler.sendMessage(handler.obtainMessage(i2, c1623b));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:31:0x007e
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* renamed from: a */
    private void m3708a(com.huawei.updatesdk.p048b.p054d.C1623b r6, java.lang.String r7) throws java.lang.Throwable {
        /*
            r5 = this;
            java.lang.String r0 = "Close FileOutputStream failed!"
            java.lang.String r1 = "DownloadMarketTask"
            if (r6 == 0) goto L8d
            java.lang.String r2 = r6.m3702b()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L12
            goto L8d
        L12:
            java.lang.String r2 = "/appmarket.apk"
            java.lang.String r7 = com.huawei.hem.C0948f6.m1760e(r7, r2)
            java.io.File r2 = new java.io.File
            r2.<init>(r7)
            r3 = 0
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43 java.io.FileNotFoundException -> L5f
            r4.<init>(r2)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43 java.io.FileNotFoundException -> L5f
            boolean r6 = r5.m3710a(r6, r4, r7)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b java.io.FileNotFoundException -> L3e
            if (r6 != 0) goto L35
            java.io.File r6 = new java.io.File     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b java.io.FileNotFoundException -> L3e
            java.lang.String r7 = m3714e()     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b java.io.FileNotFoundException -> L3e
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b java.io.FileNotFoundException -> L3e
            com.huawei.updatesdk.p034a.p035a.p040d.AbstractC1588d.m3527a(r6)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b java.io.FileNotFoundException -> L3e
        L35:
            r4.close()     // Catch: java.io.IOException -> L7e
            goto L81
        L39:
            r6 = move-exception
            goto L83
        L3b:
            r6 = move-exception
            r3 = r4
            goto L44
        L3e:
            r6 = move-exception
            r3 = r4
            goto L60
        L41:
            r6 = move-exception
            goto L82
        L43:
            r6 = move-exception
        L44:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L41
            r7.<init>()     // Catch: java.lang.Throwable -> L41
            java.lang.String r2 = "DOWNLOAD market package Exception error:"
            r7.append(r2)     // Catch: java.lang.Throwable -> L41
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L41
            r7.append(r6)     // Catch: java.lang.Throwable -> L41
            java.lang.String r6 = r7.toString()     // Catch: java.lang.Throwable -> L41
            com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a.m3516b(r1, r6)     // Catch: java.lang.Throwable -> L41
            if (r3 == 0) goto L81
            goto L7a
        L5f:
            r6 = move-exception
        L60:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L41
            r7.<init>()     // Catch: java.lang.Throwable -> L41
            java.lang.String r2 = "DOWNLOAD market package FileNotFoundException error:"
            r7.append(r2)     // Catch: java.lang.Throwable -> L41
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L41
            r7.append(r6)     // Catch: java.lang.Throwable -> L41
            java.lang.String r6 = r7.toString()     // Catch: java.lang.Throwable -> L41
            com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a.m3516b(r1, r6)     // Catch: java.lang.Throwable -> L41
            if (r3 == 0) goto L81
        L7a:
            r3.close()     // Catch: java.io.IOException -> L7e
            goto L81
        L7e:
            com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a.m3516b(r1, r0)
        L81:
            return
        L82:
            r4 = r3
        L83:
            if (r4 == 0) goto L8c
            r4.close()     // Catch: java.io.IOException -> L89
            goto L8c
        L89:
            com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a.m3516b(r1, r0)
        L8c:
            throw r6
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p048b.p054d.AsyncTaskC1624c.m3708a(com.huawei.updatesdk.b.d.b, java.lang.String):void");
    }

    /* renamed from: a */
    private void m3709a(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("downloadUrlToStream(String urlString,OutputStream outputStream) ");
                sbM1765j.append(e.toString());
                C1584a.m3516b("DownloadMarketTask", sbM1765j.toString());
            }
        }
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                StringBuilder sbM1765j2 = CompilerOutline.m1765j("downloadUrlToStream(String urlString,OutputStream outputStream) ");
                sbM1765j2.append(e2.toString());
                C1584a.m3516b("DownloadMarketTask", sbM1765j2.toString());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x00ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0118  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m3710a(com.huawei.updatesdk.p048b.p054d.C1623b r21, java.io.OutputStream r22, java.lang.String r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p048b.p054d.AsyncTaskC1624c.m3710a(com.huawei.updatesdk.b.d.b, java.io.OutputStream, java.lang.String):boolean");
    }

    /* renamed from: d */
    private void m3713d() {
        HttpURLConnection httpURLConnection = this.f4695b;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    /* renamed from: e */
    public static String m3714e() {
        String strM3593b = C1598a.m3591c().m3593b();
        if (TextUtils.isEmpty(strM3593b)) {
            return "";
        }
        String strM1760e = CompilerOutline.m1760e(strM3593b, "/updatesdk");
        File file = new File(strM1760e);
        return (file.exists() || file.mkdirs()) ? strM1760e : "";
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(Void... voidArr) throws Throwable {
        C1637b.m3751a(this);
        m3708a(this.f4697d, m3714e());
        return null;
    }

    /* renamed from: a */
    public void m3716a() {
        new Thread(new a()).start();
    }

    /* renamed from: b */
    public void m3717b() {
        this.f4698e = null;
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        super.onCancelled();
        m3716a();
    }
}
