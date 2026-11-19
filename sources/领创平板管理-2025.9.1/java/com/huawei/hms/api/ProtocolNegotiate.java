package com.huawei.hms.api;

import java.util.List;

/* loaded from: classes.dex */
public class ProtocolNegotiate {

    /* renamed from: b */
    public static ProtocolNegotiate f4426b = new ProtocolNegotiate();

    /* renamed from: a */
    public int f4427a = 1;

    public static ProtocolNegotiate getInstance() {
        return f4426b;
    }

    public int getVersion() {
        return this.f4427a;
    }

    public int negotiate(List<Integer> list) {
        if (list == null || list.isEmpty()) {
            this.f4427a = 1;
            return 1;
        }
        if (list.contains(2)) {
            this.f4427a = 2;
        } else {
            this.f4427a = list.get(list.size() - 1).intValue();
        }
        return this.f4427a;
    }
}
