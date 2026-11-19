package com.huawei.updatesdk.p034a.p035a.p040d.p041h;

import android.content.Context;
import com.huawei.updatesdk.p034a.p035a.p040d.C1589e;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.AbstractC1604b;
import java.util.ArrayList;
import java.util.Set;

/* renamed from: com.huawei.updatesdk.a.a.d.h.b */
/* loaded from: classes.dex */
public class C1593b extends AbstractC1604b {
    public String abis_;
    public String deviceFeatures_;
    public int dpi_;
    public String preferLan_;

    /* renamed from: com.huawei.updatesdk.a.a.d.h.b$b */
    public static class b {

        /* renamed from: a */
        public final Context f4631a;

        /* renamed from: b */
        public boolean f4632b;

        /* renamed from: c */
        public Set<String> f4633c;

        /* renamed from: d */
        public String[] f4634d;

        /* renamed from: e */
        public boolean f4635e;

        public b(Context context) {
            this.f4631a = context;
        }

        /* renamed from: b */
        private String m3555b() {
            ArrayList arrayList = new ArrayList(C1594c.m3569d(this.f4631a));
            Set<String> set = this.f4633c;
            if (set != null) {
                for (String str : set) {
                    if (!arrayList.contains(str)) {
                        arrayList.add(str);
                    }
                }
            }
            return this.f4635e ? C1589e.m3529a(C1594c.m3562a(arrayList, this.f4634d), ",") : C1589e.m3529a(arrayList, ",");
        }

        /* renamed from: a */
        public b m3556a(boolean z) {
            this.f4632b = z;
            return this;
        }

        /* renamed from: a */
        public C1593b m3557a() {
            C1593b c1593b = new C1593b();
            c1593b.abis_ = C1589e.m3531a(C1594c.m3573f(), ",");
            c1593b.dpi_ = Integer.parseInt(C1594c.m3572f(this.f4631a));
            c1593b.preferLan_ = m3555b();
            if (this.f4632b) {
                c1593b.deviceFeatures_ = C1594c.m3559a(this.f4631a);
            }
            return c1593b;
        }
    }

    public C1593b() {
    }
}
