package com.huawei.hem;

import com.huawei.hem.ConnectionProfile;
import com.huawei.hem.FileDownloadServiceProxy;
import com.huawei.hem.FileDownloader;
import com.huawei.hem.BaseDownloadTask;
import java.util.ArrayList;

/* compiled from: LostServiceConnectedHandler.java */
/* renamed from: com.huawei.hem.bf */
/* loaded from: classes.dex */
public class LostServiceConnectedHandler extends FileDownloadConnectListener implements ILostServiceConnectedHandler {

    /* renamed from: b */
    public final ArrayList<BaseDownloadTask.a> f2302b = new ArrayList<>();

    /* renamed from: a */
    public boolean m1418a(BaseDownloadTask.a aVar) {
        if (!FileDownloader.a.f3867a.m2793e()) {
            synchronized (this.f2302b) {
                if (!FileDownloader.a.f3867a.m2793e()) {
                    FileDownloadServiceProxy c1233qe = FileDownloadServiceProxy.b.f3535a;
                    c1233qe.f3534a.mo2450p(ConnectionProfile.b.f3400a);
                    if (!this.f2302b.contains(aVar)) {
                        aVar.mo1804e();
                        this.f2302b.add(aVar);
                    }
                    return true;
                }
            }
        }
        m1419b(aVar);
        return false;
    }

    /* renamed from: b */
    public void m1419b(BaseDownloadTask.a aVar) {
        if (this.f2302b.isEmpty()) {
            return;
        }
        synchronized (this.f2302b) {
            this.f2302b.remove(aVar);
        }
    }
}
