package com.huawei.hem;

import com.huawei.hem.C1007he;
import com.huawei.hem.C1133me;
import com.huawei.hem.C1184of;
import com.huawei.hem.C1233qe;
import com.huawei.hem.C1333ue;
import com.huawei.hem.C1384wf;
import com.huawei.hem.InterfaceC0956fe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: DownloadEventPoolImpl.java */
/* renamed from: com.huawei.hem.vf */
/* loaded from: classes.dex */
public class C1359vf {

    /* renamed from: a */
    public final Executor f3952a = C1184of.b.m2443f(10, "EventPool");

    /* renamed from: b */
    public final HashMap<String, LinkedList<AbstractC1434yf>> f3953b = new HashMap<>();

    /* compiled from: DownloadEventPoolImpl.java */
    /* renamed from: com.huawei.hem.vf$a */
    public class a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC1409xf f3954a;

        public a(AbstractC1409xf abstractC1409xf) {
            this.f3954a = abstractC1409xf;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1359vf c1359vf = C1359vf.this;
            AbstractC1409xf abstractC1409xf = this.f3954a;
            if (c1359vf == null) {
                throw null;
            }
            if (abstractC1409xf == null) {
                throw new IllegalArgumentException("event must not be null!");
            }
            String str = abstractC1409xf.f4077b;
            LinkedList<AbstractC1434yf> linkedList = c1359vf.f3953b.get(str);
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
                    AbstractC1057je abstractC1057je = (AbstractC1057je) ((AbstractC1434yf) obj);
                    if (abstractC1409xf instanceof C1384wf) {
                        C1384wf.a aVar = ((C1384wf) abstractC1409xf).f4020c;
                        abstractC1057je.f2947a = aVar;
                        if (aVar == C1384wf.a.connected) {
                            C0853bf c0853bf = (C0853bf) abstractC1057je;
                            InterfaceC1433ye interfaceC1433yeM2792d = C1333ue.a.f3867a.m2792d();
                            synchronized (c0853bf.f2302b) {
                                List<InterfaceC0956fe.a> list = (List) c0853bf.f2302b.clone();
                                c0853bf.f2302b.clear();
                                ArrayList arrayList = new ArrayList(((C0931ef) interfaceC1433yeM2792d).f2546a.size());
                                for (InterfaceC0956fe.a aVar2 : list) {
                                    int iMo1807k = aVar2.mo1807k();
                                    if (((C0931ef) interfaceC1433yeM2792d).f2546a.get(iMo1807k) != null) {
                                        C1007he.b bVar = (C1007he.b) aVar2.mo1812t().mo1797m();
                                        bVar.f2864a.getId();
                                        C1133me.b.f3261a.m2368b(bVar.f2864a);
                                        if (!arrayList.contains(Integer.valueOf(iMo1807k))) {
                                            arrayList.add(Integer.valueOf(iMo1807k));
                                        }
                                    } else {
                                        aVar2.mo1806h();
                                    }
                                }
                                C0931ef c0931ef = (C0931ef) interfaceC1433yeM2792d;
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    c0931ef.f2546a.get(((Integer) it.next()).intValue()).sendEmptyMessage(3);
                                }
                            }
                        } else {
                            C0853bf c0853bf2 = (C0853bf) abstractC1057je;
                            if (c0853bf2.f2947a == C1384wf.a.lost) {
                                InterfaceC1433ye interfaceC1433yeM2792d2 = C1333ue.a.f3867a.m2792d();
                                if (C1133me.b.f3261a.m2373g() > 0) {
                                    synchronized (c0853bf2.f2302b) {
                                        C1133me c1133me = C1133me.b.f3261a;
                                        ArrayList<InterfaceC0956fe.a> arrayList2 = c0853bf2.f2302b;
                                        synchronized (c1133me.f3260a) {
                                            Iterator<InterfaceC0956fe.a> it2 = c1133me.f3260a.iterator();
                                            while (it2.hasNext()) {
                                                InterfaceC0956fe.a next = it2.next();
                                                if (!arrayList2.contains(next)) {
                                                    arrayList2.add(next);
                                                }
                                            }
                                            c1133me.f3260a.clear();
                                        }
                                        Iterator<InterfaceC0956fe.a> it3 = c0853bf2.f2302b.iterator();
                                        while (it3.hasNext()) {
                                            it3.next().mo1804e();
                                        }
                                        C0931ef c0931ef2 = (C0931ef) interfaceC1433yeM2792d2;
                                        for (int i = 0; i < c0931ef2.f2546a.size(); i++) {
                                            c0931ef2.f2546a.get(c0931ef2.f2546a.keyAt(i)).sendEmptyMessage(2);
                                        }
                                    }
                                    try {
                                        if (!C1333ue.a.f3867a.m2793e()) {
                                            C1233qe.b.f3535a.f3534a.mo2450p(C1184of.b.f3400a);
                                        }
                                    } catch (IllegalStateException unused) {
                                        C0959fh.m1821e(c0853bf2, "restart service failed, you may need to restart downloading manually when the app comes back to foreground", new Object[0]);
                                    }
                                } else {
                                    continue;
                                }
                            } else if (C1133me.b.f3261a.m2373g() > 0) {
                                C0959fh.m1821e(c0853bf2, "file download service has be unbound but the size of active tasks are not empty %d ", Integer.valueOf(C1133me.b.f3261a.m2373g()));
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
    public void m2871a(AbstractC1409xf abstractC1409xf) {
        this.f3952a.execute(new a(abstractC1409xf));
    }
}
