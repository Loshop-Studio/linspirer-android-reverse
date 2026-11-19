package com.huawei.hem;

import java.io.IOException;

/* compiled from: StreamResetException.java */
/* renamed from: com.huawei.hem.qm */
/* loaded from: classes.dex */
public final class C1241qm extends IOException {
    public final EnumC1390wl errorCode;

    public C1241qm(EnumC1390wl enumC1390wl) {
        super("stream was reset: " + enumC1390wl);
        this.errorCode = enumC1390wl;
    }
}
