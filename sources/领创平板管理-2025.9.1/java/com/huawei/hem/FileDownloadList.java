package com.huawei.hem;

import com.huawei.hem.FileDownloadServiceProxy;
import com.huawei.hem.BaseDownloadTask;
import com.liulishuo.filedownloader.message.BlockCompleteMessage;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: FileDownloadList.java */
/* renamed from: com.huawei.hem.me */
/* loaded from: classes.dex */
public class FileDownloadList {

    /* renamed from: a */
    public final ArrayList<BaseDownloadTask.a> f3260a = new ArrayList<>();

    /* compiled from: FileDownloadList.java */
    /* renamed from: com.huawei.hem.me$b */
    public static final class b {

        /* renamed from: a */
        public static final FileDownloadList f3261a = new FileDownloadList(null);
    }

    public FileDownloadList(a aVar) {
    }

    /* renamed from: a */
    public void m2367a(BaseDownloadTask.a aVar) {
        if (!aVar.mo1812t().mo1800r()) {
            aVar.mo1805g();
        }
        if (((DownloadTaskHunter) aVar.mo1810o()).f2913a.mo2464b()) {
            m2368b(aVar);
        }
    }

    /* renamed from: b */
    public void m2368b(BaseDownloadTask.a aVar) {
        if (aVar.mo1808l()) {
            return;
        }
        synchronized (this.f3260a) {
            if (this.f3260a.contains(aVar)) {
                FileDownloadLog.m1821e(this, "already has %s", aVar);
            } else {
                aVar.mo1814v();
                this.f3260a.add(aVar);
            }
        }
    }

    /* renamed from: c */
    public int m2369c(int i) {
        int i2;
        synchronized (this.f3260a) {
            Iterator<BaseDownloadTask.a> it = this.f3260a.iterator();
            i2 = 0;
            while (it.hasNext()) {
                if (it.next().mo1803b(i)) {
                    i2++;
                }
            }
        }
        return i2;
    }

    /* renamed from: d */
    public List<BaseDownloadTask.a> m2370d(int i) {
        byte bMo1791a;
        ArrayList arrayList = new ArrayList();
        synchronized (this.f3260a) {
            Iterator<BaseDownloadTask.a> it = this.f3260a.iterator();
            while (it.hasNext()) {
                BaseDownloadTask.a next = it.next();
                if (next.mo1803b(i) && !next.mo1811s() && (bMo1791a = next.mo1812t().mo1791a()) != 0 && bMo1791a != 10) {
                    arrayList.add(next);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public boolean m2371e(BaseDownloadTask.a aVar) {
        return this.f3260a.isEmpty() || !this.f3260a.contains(aVar);
    }

    /* renamed from: f */
    public boolean m2372f(BaseDownloadTask.a aVar, MessageSnapshot messageSnapshot) {
        boolean zRemove;
        byte bMo2112a = messageSnapshot.mo2112a();
        synchronized (this.f3260a) {
            zRemove = this.f3260a.remove(aVar);
            if (zRemove && this.f3260a.size() == 0 && FileDownloadServiceProxy.b.f3535a.f3534a.mo2449o()) {
                if (FileDownloader.m2788b() == null) {
                    throw null;
                }
                FileDownloadServiceProxy.b.f3535a.f3534a.mo2623g(true);
            }
        }
        if (zRemove) {
            IFileDownloadMessenger interfaceC1358ve = ((DownloadTaskHunter) aVar.mo1810o()).f2913a;
            if (bMo2112a == -4) {
                interfaceC1358ve.mo2474l(messageSnapshot);
            } else if (bMo2112a != -3) {
                if (bMo2112a == -2) {
                    interfaceC1358ve.mo2469g(messageSnapshot);
                } else if (bMo2112a == -1) {
                    interfaceC1358ve.mo2470h(messageSnapshot);
                }
            } else {
                if (messageSnapshot.mo2112a() != -3) {
                    throw new IllegalStateException(FileDownloadUtils.m1955e("take block completed snapshot, must has already be completed. %d %d", Integer.valueOf(messageSnapshot.f4819a), Byte.valueOf(messageSnapshot.mo2112a())));
                }
                interfaceC1358ve.mo2466d(new BlockCompleteMessage.BlockCompleteMessageImpl(messageSnapshot));
            }
        } else {
            FileDownloadLog.m1818b(this, "remove error, not exist: %s %d", aVar, Byte.valueOf(bMo2112a));
        }
        return zRemove;
    }

    /* renamed from: g */
    public int m2373g() {
        return this.f3260a.size();
    }
}
