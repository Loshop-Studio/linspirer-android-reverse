package com.huawei.hms.availableupdate;

import android.content.Context;
import android.os.Environment;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.provider.UpdateProvider;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.FileUtil;
import com.huawei.hms.utils.IOUtils;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: UpdateDownload.java */
/* renamed from: com.huawei.hms.availableupdate.d */
/* loaded from: classes.dex */
public class C1496d implements InterfaceC1498e {

    /* renamed from: a */
    public final Context f4454a;

    /* renamed from: b */
    public final InterfaceC1506k f4455b = new C1505j();

    /* renamed from: c */
    public final C1490a f4456c = new C1490a();

    /* renamed from: d */
    public InterfaceC1500f f4457d;

    /* renamed from: e */
    public File f4458e;

    /* compiled from: UpdateDownload.java */
    /* renamed from: com.huawei.hms.availableupdate.d$a */
    public class a extends C1492b {

        /* renamed from: b */
        public long f4459b;

        /* renamed from: c */
        public int f4460c;

        /* renamed from: d */
        public final /* synthetic */ int f4461d;

        /* renamed from: e */
        public final /* synthetic */ String f4462e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(File file, int i, int i2, String str) {
            super(file, i);
            this.f4461d = i2;
            this.f4462e = str;
            this.f4459b = 0L;
            this.f4460c = C1496d.this.f4456c.m3262a();
        }

        /* renamed from: a */
        public final void m3287a(int i) {
            C1496d.this.f4456c.m3263a(C1496d.this.m3286b(), i, this.f4462e);
            C1496d.this.m3283a(2100, i, this.f4461d);
        }

        @Override // com.huawei.hms.availableupdate.C1492b, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            super.write(bArr, i, i2);
            int i3 = this.f4460c + i2;
            this.f4460c = i3;
            if (i3 > 209715200) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (Math.abs(jCurrentTimeMillis - this.f4459b) > 1000) {
                this.f4459b = jCurrentTimeMillis;
                m3287a(this.f4460c);
            }
            int i4 = this.f4460c;
            if (i4 == this.f4461d) {
                m3287a(i4);
            }
        }
    }

    public C1496d(Context context) {
        this.f4454a = context.getApplicationContext();
    }

    /* renamed from: b */
    public Context m3286b() {
        return this.f4454a;
    }

    /* renamed from: a */
    public final synchronized void m3284a(InterfaceC1500f interfaceC1500f) {
        this.f4457d = interfaceC1500f;
    }

    /* renamed from: a */
    public final synchronized void m3283a(int i, int i2, int i3) {
        InterfaceC1500f interfaceC1500f = this.f4457d;
        if (interfaceC1500f != null) {
            interfaceC1500f.mo3278a(i, i2, i3, this.f4458e);
        }
    }

    @Override // com.huawei.hms.availableupdate.InterfaceC1498e
    /* renamed from: a */
    public void mo3276a() {
        HMSLog.m3463i("UpdateDownload", "Enter cancel.");
        m3284a((InterfaceC1500f) null);
        this.f4455b.mo3319a();
    }

    @Override // com.huawei.hms.availableupdate.InterfaceC1498e
    /* renamed from: a */
    public void mo3277a(InterfaceC1500f interfaceC1500f, C1502g c1502g) throws IOException {
        Checker.checkNonNull(interfaceC1500f, "callback must not be null.");
        HMSLog.m3463i("UpdateDownload", "Enter downloadPackage.");
        m3284a(interfaceC1500f);
        if (c1502g != null && c1502g.m3316a()) {
            if (!"mounted".equals(Environment.getExternalStorageState())) {
                HMSLog.m3461e("UpdateDownload", "In downloadPackage, Invalid external storage for downloading file.");
                m3283a(2204, 0, 0);
                return;
            }
            String str = c1502g.f4479b;
            if (TextUtils.isEmpty(str)) {
                HMSLog.m3461e("UpdateDownload", "In DownloadHelper.downloadPackage, Download the package,  packageName is null: ");
                m3283a(2201, 0, 0);
                return;
            }
            File localFile = UpdateProvider.getLocalFile(this.f4454a, str + ".apk");
            this.f4458e = localFile;
            if (localFile == null) {
                HMSLog.m3461e("UpdateDownload", "In downloadPackage, Failed to get local file for downloading.");
                m3283a(2204, 0, 0);
                return;
            }
            File parentFile = localFile.getParentFile();
            if (parentFile == null || !(parentFile.mkdirs() || parentFile.isDirectory())) {
                HMSLog.m3461e("UpdateDownload", "In downloadPackage, Failed to create directory for downloading file.");
                m3283a(2201, 0, 0);
                return;
            } else if (parentFile.getUsableSpace() < c1502g.f4481d * 3) {
                HMSLog.m3461e("UpdateDownload", "In downloadPackage, No space for downloading file.");
                m3283a(2203, 0, 0);
                return;
            } else {
                try {
                    m3285a(c1502g);
                    return;
                } catch (C1504i unused) {
                    HMSLog.m3464w("UpdateDownload", "In downloadPackage, Canceled to download the update file.");
                    m3283a(2101, 0, 0);
                    return;
                }
            }
        }
        HMSLog.m3461e("UpdateDownload", "In downloadPackage, Invalid update info.");
        m3283a(2201, 0, 0);
    }

    /* renamed from: a */
    public void m3285a(C1502g c1502g) throws IOException {
        String str;
        HMSLog.m3463i("UpdateDownload", "Enter downloadPackage.");
        C1492b c1492bM3282a = null;
        try {
            try {
                str = c1502g.f4479b;
            } catch (IOException e) {
                HMSLog.m3461e("UpdateDownload", "In DownloadHelper.downloadPackage, Failed to download." + e.getMessage());
                m3283a(2201, 0, 0);
            }
            if (TextUtils.isEmpty(str)) {
                HMSLog.m3461e("UpdateDownload", "In DownloadHelper.downloadPackage, Download the package,  packageName is null: ");
                m3283a(2201, 0, 0);
                return;
            }
            this.f4456c.m3264a(m3286b(), str);
            if (this.f4456c.m3268b(c1502g.f4480c, c1502g.f4481d, c1502g.f4482e)) {
                if (this.f4456c.m3262a() == this.f4456c.m3266b()) {
                    if (FileUtil.verifyHash(c1502g.f4482e, this.f4458e)) {
                        m3283a(RecyclerView.MAX_SCROLL_DURATION, 0, 0);
                        return;
                    } else {
                        this.f4456c.m3265a(c1502g.f4480c, c1502g.f4481d, c1502g.f4482e);
                        c1492bM3282a = m3282a(this.f4458e, c1502g.f4481d, str);
                    }
                } else {
                    c1492bM3282a = m3282a(this.f4458e, c1502g.f4481d, str);
                    c1492bM3282a.m3272a(this.f4456c.m3262a());
                }
            } else {
                this.f4456c.m3265a(c1502g.f4480c, c1502g.f4481d, c1502g.f4482e);
                c1492bM3282a = m3282a(this.f4458e, c1502g.f4481d, str);
            }
            int iMo3318a = this.f4455b.mo3318a(c1502g.f4480c, c1492bM3282a, this.f4456c.m3262a(), this.f4456c.m3266b(), this.f4454a);
            if (iMo3318a != 200 && iMo3318a != 206) {
                HMSLog.m3461e("UpdateDownload", "In DownloadHelper.downloadPackage, Download the package, HTTP code: " + iMo3318a);
                m3283a(2201, 0, 0);
                return;
            }
            if (!FileUtil.verifyHash(c1502g.f4482e, this.f4458e)) {
                m3283a(2202, 0, 0);
            } else {
                m3283a(RecyclerView.MAX_SCROLL_DURATION, 0, 0);
            }
        } finally {
            this.f4455b.close();
            IOUtils.closeQuietly((OutputStream) null);
        }
    }

    /* renamed from: a */
    public final C1492b m3282a(File file, int i, String str) {
        return new a(file, i, i, str);
    }
}
