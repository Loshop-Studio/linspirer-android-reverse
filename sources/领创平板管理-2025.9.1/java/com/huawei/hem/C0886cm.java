package com.huawei.hem;

import com.huawei.hem.InterfaceC1191om;
import java.io.IOException;
import java.util.List;

/* compiled from: Http2Connection.java */
/* renamed from: com.huawei.hem.cm */
/* loaded from: classes.dex */
public class C0886cm extends AbstractRunnableC1289sk {

    /* renamed from: b */
    public final /* synthetic */ int f2360b;

    /* renamed from: c */
    public final /* synthetic */ List f2361c;

    /* renamed from: d */
    public final /* synthetic */ C0834am f2362d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0886cm(C0834am c0834am, String str, Object[] objArr, int i, List list) {
        super(str, objArr);
        this.f2362d = c0834am;
        this.f2360b = i;
        this.f2361c = list;
    }

    @Override // com.huawei.hem.AbstractRunnableC1289sk
    /* renamed from: a */
    public void mo1376a() {
        C0834am c0834am = this.f2362d;
        InterfaceC1191om interfaceC1191om = c0834am.f2226j;
        int i = this.f2360b;
        if (((InterfaceC1191om.a) interfaceC1191om) == null) {
            throw null;
        }
        try {
            c0834am.f2238v.m2402i(i, EnumC1390wl.CANCEL);
            synchronized (this.f2362d) {
                this.f2362d.f2240x.remove(Integer.valueOf(this.f2360b));
            }
        } catch (IOException unused) {
        }
    }
}
