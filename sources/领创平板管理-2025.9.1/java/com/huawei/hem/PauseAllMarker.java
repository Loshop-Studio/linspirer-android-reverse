package com.huawei.hem;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.RemoteException;
import com.huawei.hem.ConnectionProfile;
import java.io.File;

/* compiled from: PauseAllMarker.java */
/* renamed from: com.huawei.hem.df */
/* loaded from: classes.dex */
public class PauseAllMarker implements Handler.Callback {

    /* renamed from: d */
    public static File f2406d;

    /* renamed from: e */
    public static final Long f2407e = 1000L;

    /* renamed from: a */
    public HandlerThread f2408a;

    /* renamed from: b */
    public Handler f2409b;

    /* renamed from: c */
    public final IFileDownloadIPCService f2410c;

    public PauseAllMarker(IFileDownloadIPCService interfaceC0984gg) {
        this.f2410c = interfaceC0984gg;
    }

    /* renamed from: a */
    public static void m1609a() {
        File fileM1610b = m1610b();
        if (fileM1610b.exists()) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("delete marker file ");
            sbM1765j.append(fileM1610b.delete());
            FileDownloadLog.m1817a(PauseAllMarker.class, sbM1765j.toString(), new Object[0]);
        }
    }

    /* renamed from: b */
    public static File m1610b() {
        if (f2406d == null) {
            Context context = ConnectionProfile.b.f3400a;
            StringBuilder sb = new StringBuilder();
            sb.append(context.getCacheDir());
            f2406d = new File(CompilerOutline.m1762g(sb, File.separator, ".filedownloader_pause_all_marker.b"));
        }
        return f2406d;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            if (m1610b().exists()) {
                try {
                    this.f2410c.mo1868l3();
                } catch (RemoteException e) {
                    FileDownloadLog.m1820d(6, this, e, "pause all failed", new Object[0]);
                }
            }
            this.f2409b.sendEmptyMessageDelayed(0, f2407e.longValue());
            return true;
        } finally {
            m1609a();
        }
    }
}
