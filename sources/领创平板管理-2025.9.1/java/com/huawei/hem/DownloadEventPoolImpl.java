package com.huawei.hem;

import com.huawei.hem.DownloadTask;
import com.huawei.hem.FileDownloadList;
import com.huawei.hem.ConnectionProfile;
import com.huawei.hem.FileDownloadServiceProxy;
import com.huawei.hem.FileDownloader;
import com.huawei.hem.DownloadServiceConnectChangedEvent;
import com.huawei.hem.BaseDownloadTask;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: DownloadEventPoolImpl.java */
/* renamed from: com.huawei.hem.vf */
/* loaded from: classes.dex */
public class DownloadEventPoolImpl {

    /* renamed from: a */
    public final Executor f3952a = ConnectionProfile.b.m2443f(10, "EventPool");

    /* renamed from: b */
    public final HashMap<String, LinkedList<IDownloadListener>> f3953b = new HashMap<>();

    /* compiled from: DownloadEventPoolImpl.java */
    /* renamed from: com.huawei.hem.vf$a */
    public class a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ IDownloadEvent f3954a;

        public a(IDownloadEvent abstractC1409xf) {
            this.f3954a = abstractC1409xf;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadEventPoolImpl c1359vf = DownloadEventPoolImpl.this;
            IDownloadEvent abstractC1409xf = this.f3954a;
            if (c1359vf == null) {
                throw null;
            }
            if (abstractC1409xf == null) {
                throw new IllegalArgumentException("event must not be null!");
            }
            String str = abstractC1409xf.f4077b;
            LinkedList<IDownloadListener> linkedList = c1359vf.f3953b.get(str);
            if (linkedList == null) {
                synchronized (str.intern()) {
                    linkedList = c1359vf.f3953b.get(str);
                    if (linkedList == null) {
                        return;
                    }
                }
            }
            Object[] array = linkedList.toArray();
            for (Object obj : array) {
                if (obj != null) {
                    FileDownloadConnectListener abstractC1057je = (FileDownloadConnectListener) ((IDownloadListener) obj);
                    if (abstractC1409xf instanceof DownloadServiceConnectChangedEvent) {
                        DownloadServiceConnectChangedEvent.a aVar = ((DownloadServiceConnectChangedEvent) abstractC1409xf).f4020c;
                        abstractC1057je.f2947a = aVar;
                        if (aVar == DownloadServiceConnectChangedEvent.a.connected) {
                            LostServiceConnectedHandler c0853bf = (LostServiceConnectedHandler) abstractC1057je;
                            IQueuesHandler interfaceC1433yeM2792d = FileDownloader.a.f3867a.m2792d();
                            synchronized (c0853bf.f2302b) {
                                List<BaseDownloadTask.a> list = (List) c0853bf.f2302b.clone();
                                c0853bf.f2302b.clear();
                                ArrayList arrayList = new ArrayList(((QueuesHandler) interfaceC1433yeM2792d).f2546a.size());
                                for (BaseDownloadTask.a aVar2 : list) {
                                    int iMo1807k = aVar2.mo1807k();
                                    if (((QueuesHandler) interfaceC1433yeM2792d).f2546a.get(iMo1807k) != null) {
                                        DownloadTask.b bVar = (DownloadTask.b) aVar2.mo1812t().mo1797m();
                                        bVar.f2864a.getId();
                                        FileDownloadList.b.f3261a.m2368b(bVar.f2864a);
                                        if (!arrayList.contains(Integer.valueOf(iMo1807k))) {
                                            arrayList.add(Integer.valueOf(iMo1807k));
                                        }
                                    } else {
                                        aVar2.mo1806h();
                                    }
                                }
                                QueuesHandler c0931ef = (QueuesHandler) interfaceC1433yeM2792d;
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    c0931ef.f2546a.get(((Integer) it.next()).intValue()).sendEmptyMessage(3);
                                }
                            }
                        } else {
                            LostServiceConnectedHandler c0853bf2 = (LostServiceConnectedHandler) abstractC1057je;
                            if (c0853bf2.f2947a == DownloadServiceConnectChangedEvent.a.lost) {
                                IQueuesHandler interfaceC1433yeM2792d2 = FileDownloader.a.f3867a.m2792d();
                                if (FileDownloadList.b.f3261a.m2373g() > 0) {
                                    synchronized (c0853bf2.f2302b) {
                                        FileDownloadList c1133me = FileDownloadList.b.f3261a;
                                        ArrayList<BaseDownloadTask.a> arrayList2 = c0853bf2.f2302b;
                                        synchronized (c1133me.f3260a) {
                                            Iterator<BaseDownloadTask.a> it2 = c1133me.f3260a.iterator();
                                            while (it2.hasNext()) {
                                                BaseDownloadTask.a next = it2.next();
                                                if (!arrayList2.contains(next)) {
                                                    arrayList2.add(next);
                                                }
                                            }
                                            c1133me.f3260a.clear();
                                        }
                                        Iterator<BaseDownloadTask.a> it3 = c0853bf2.f2302b.iterator();
                                        while (it3.hasNext()) {
                                            it3.next().mo1804e();
                                        }
                                        QueuesHandler c0931ef2 = (QueuesHandler) interfaceC1433yeM2792d2;
                                        for (int i = 0; i < c0931ef2.f2546a.size(); i++) {
                                            c0931ef2.f2546a.get(c0931ef2.f2546a.keyAt(i)).sendEmptyMessage(2);
                                        }
                                    }
                                    try {
                                        if (!FileDownloader.a.f3867a.m2793e()) {
                                            FileDownloadServiceProxy.b.f3535a.f3534a.mo2450p(ConnectionProfile.b.f3400a);
                                        }
                                    } catch (IllegalStateException unused) {
                                        FileDownloadLog.m1821e(c0853bf2, "restart service failed, you may need to restart downloading manually when the app comes back to foreground", new Object[0]);
                                    }
                                } else {
                                    continue;
                                }
                            } else if (FileDownloadList.b.f3261a.m2373g() > 0) {
                                FileDownloadLog.m1821e(c0853bf2, "file download service has be unbound but the size of active tasks are not empty %d ", Integer.valueOf(FileDownloadList.b.f3261a.m2373g()));
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
            Runnable runnable = abstractC1409xf.f4076a;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* renamed from: a */
    public void m2871a(IDownloadEvent abstractC1409xf) {
        this.f3952a.execute(new a(abstractC1409xf));
    }
}
