package com.huawei.hem;

import android.content.Context;
import com.android.launcher3.network.params.Params;
import java.io.Serializable;
import java.util.List;

/* compiled from: UsageParams.java */
/* renamed from: com.huawei.hem.m5 */
/* loaded from: classes.dex */
public class UsageParams extends Params implements Serializable {
    public List<UsageAppData> logs;

    public UsageParams(Context context) {
        super(context);
    }

    public List<UsageAppData> getLogs() {
        return this.logs;
    }

    public void setLogs(List<UsageAppData> list) {
        this.logs = list;
    }
}
