package com.huawei.hem;

import android.content.Context;
import com.android.launcher3.network.params.Params;
import java.io.Serializable;
import java.util.List;

/* compiled from: UsageParams.java */
/* renamed from: com.huawei.hem.m5 */
/* loaded from: classes.dex */
public class C1124m5 extends Params implements Serializable {
    public List<C1098l5> logs;

    public C1124m5(Context context) {
        super(context);
    }

    public List<C1098l5> getLogs() {
        return this.logs;
    }

    public void setLogs(List<C1098l5> list) {
        this.logs = list;
    }
}
