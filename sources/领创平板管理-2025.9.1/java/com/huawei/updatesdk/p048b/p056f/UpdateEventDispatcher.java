package com.huawei.updatesdk.p048b.p056f;

import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import com.huawei.updatesdk.p034a.p043b.p045b.SafeUpdateIntent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.huawei.updatesdk.b.f.c */
/* loaded from: classes.dex */
public final class UpdateEventDispatcher {

    /* renamed from: a */
    public static UpdateEventDispatcher f4706a = new UpdateEventDispatcher();

    /* renamed from: b */
    public static UpdateEventPublisher f4707b = new a();

    /* renamed from: com.huawei.updatesdk.b.f.c$a */
    public static class a implements UpdateEventPublisher {

        /* renamed from: a */
        public final List<UpdateEventListener> f4708a = new ArrayList();

        @Override // com.huawei.updatesdk.p048b.p056f.InterfaceC1633a
        /* renamed from: a */
        public void mo3739a(int i, SafeUpdateIntent c1600b) {
            synchronized (this.f4708a) {
                Iterator<UpdateEventListener> it = this.f4708a.iterator();
                while (it.hasNext()) {
                    it.next().mo3742a(i, c1600b);
                }
            }
        }

        @Override // com.huawei.updatesdk.p048b.p056f.InterfaceC1633a
        /* renamed from: a */
        public void mo3740a(UpdateEventListener interfaceC1634b) {
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
                        UpdateLogWriter.m3516b(str, str2);
                    } catch (IllegalArgumentException unused2) {
                        str = "InstallObserverManager";
                        str2 = "registerObserver IllegalArgumentException";
                        UpdateLogWriter.m3516b(str, str2);
                    } catch (UnsupportedOperationException unused3) {
                        str = "InstallObserverManager";
                        str2 = "registerObserver UnsupportedOperationException";
                        UpdateLogWriter.m3516b(str, str2);
                    }
                }
            }
        }

        @Override // com.huawei.updatesdk.p048b.p056f.InterfaceC1633a
        /* renamed from: b */
        public void mo3741b(UpdateEventListener interfaceC1634b) {
            synchronized (this.f4708a) {
                try {
                    this.f4708a.remove(interfaceC1634b);
                } catch (UnsupportedOperationException unused) {
                    UpdateLogWriter.m3516b("InstallObserverManager", "unRegisterObserver UnsupportedOperationException");
                }
            }
        }
    }

    /* renamed from: a */
    public static UpdateEventPublisher m3743a() {
        return f4707b;
    }

    /* renamed from: b */
    public static UpdateEventDispatcher m3744b() {
        return f4706a;
    }

    /* renamed from: a */
    public void m3745a(SafeUpdateIntent c1600b) {
        f4707b.mo3739a(1, c1600b);
    }

    /* renamed from: b */
    public void m3746b(SafeUpdateIntent c1600b) {
        f4707b.mo3739a(0, c1600b);
    }

    /* renamed from: c */
    public void m3747c(SafeUpdateIntent c1600b) {
        f4707b.mo3739a(2, c1600b);
    }
}
