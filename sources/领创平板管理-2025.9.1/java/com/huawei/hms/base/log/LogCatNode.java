package com.huawei.hms.base.log;

import android.content.Context;
import android.util.Log;

/* compiled from: LogCatNode.java */
/* renamed from: com.huawei.hms.base.log.d */
/* loaded from: classes.dex */
public class LogCatNode implements LogNode {

    /* renamed from: a */
    public LogNode f4522a;

    @Override // com.huawei.hms.base.log.InterfaceC1525b
    /* renamed from: a */
    public void mo3367a(Context context, String str) {
        LogNode interfaceC1525b = this.f4522a;
        if (interfaceC1525b != null) {
            interfaceC1525b.mo3367a(context, str);
        }
    }

    @Override // com.huawei.hms.base.log.InterfaceC1525b
    /* renamed from: a */
    public void mo3368a(String str, int i, String str2, String str3) {
        Log.println(i, "HMSSDK_" + str2, str3);
        LogNode interfaceC1525b = this.f4522a;
        if (interfaceC1525b != null) {
            interfaceC1525b.mo3368a(str, i, str2, str3);
        }
    }
}
