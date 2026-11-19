package com.huawei.updatesdk.p048b.p056f;

import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import com.huawei.updatesdk.p034a.p043b.p045b.C1600b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.huawei.updatesdk.b.f.c */
/* loaded from: classes.dex */
public final class C1635c {

    /* renamed from: a */
    public static C1635c f4706a = new C1635c();

    /* renamed from: b */
    public static InterfaceC1633a f4707b = new a();

    /* renamed from: com.huawei.updatesdk.b.f.c$a */
    public static class a implements InterfaceC1633a {

        /* renamed from: a */
        public final List<InterfaceC1634b> f4708a = new ArrayList();

        @Override // com.huawei.updatesdk.p048b.p056f.InterfaceC1633a
        /* renamed from: a */
        public void mo3739a(int i, C1600b c1600b) {
            synchronized (this.f4708a) {
                Iterator<InterfaceC1634b> it = this.f4708a.iterator();
                while (it.hasNext()) {
                    it.next().mo3742a(i, c1600b);
                }
            }
        }

        @Override // com.huawei.updatesdk.p048b.p056f.InterfaceC1633a
        /* renamed from: a */
        public void mo3740a(InterfaceC1634b interfaceC1634b) {
            String str;
            String str2;
            synchronized (this.f4708a) {
                if (interfaceC1634b == null) {
                    return;
                }
                if (!this.f4708a.contains(interfaceC1634b)) {
                    try {
                        this.f4708a.add(interfaceC1634b);
                    } catch (ClassCastException unused) {
                        str = "InstallObserverManager";
                        str2 = "registerObserver ClassCastException";
                        C1584a.m3516b(str, str2);
                    } catch (IllegalArgumentException unused2) {
                        str = "InstallObserverManager";
                        str2 = "registerObserver IllegalArgumentException";
                        C1584a.m3516b(str, str2);
                    } catch (UnsupportedOperationException unused3) {
                        str = "InstallObserverManager";
                        str2 = "registerObserver UnsupportedOperationException";
                        C1584a.m3516b(str, str2);
                    }
                }
            }
        }

        @Override // com.huawei.updatesdk.p048b.p056f.InterfaceC1633a
        /* renamed from: b */
        public void mo3741b(InterfaceC1634b interfaceC1634b) {
            synchronized (this.f4708a) {
                try {
                    this.f4708a.remove(interfaceC1634b);
                } catch (UnsupportedOperationException unused) {
                    C1584a.m3516b("InstallObserverManager", "unRegisterObserver UnsupportedOperationException");
                }
            }
        }
    }

    /* renamed from: a */
    public static InterfaceC1633a m3743a() {
        return f4707b;
    }

    /* renamed from: b */
    public static C1635c m3744b() {
        return f4706a;
    }

    /* renamed from: a */
    public void m3745a(C1600b c1600b) {
        f4707b.mo3739a(1, c1600b);
    }

    /* renamed from: b */
    public void m3746b(C1600b c1600b) {
        f4707b.mo3739a(0, c1600b);
    }

    /* renamed from: c */
    public void m3747c(C1600b c1600b) {
        f4707b.mo3739a(2, c1600b);
    }
}
