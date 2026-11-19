package com.huawei.hem;

import android.content.Context;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.NetworkUtil;
import com.huawei.hms.framework.common.hianalytics.HianalyticsHelper;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.s8 */
/* loaded from: classes.dex */
public final class RunnableC1277s8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f3670a;

    /* renamed from: b */
    public final /* synthetic */ Context f3671b;

    /* renamed from: c */
    public final /* synthetic */ ArrayList f3672c;

    /* renamed from: d */
    public final /* synthetic */ JSONArray f3673d;

    public RunnableC1277s8(long j, Context context, ArrayList arrayList, JSONArray jSONArray) {
        this.f3670a = j;
        this.f3671b = context;
        this.f3672c = arrayList;
        this.f3673d = jSONArray;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        C1101l8 c1101l8 = new C1101l8();
        c1101l8.put("total_time", this.f3670a);
        c1101l8.put("network_type", NetworkUtil.getNetworkType(this.f3671b));
        Iterator it = this.f3672c.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            C1252r8 c1252r8 = (C1252r8) it.next();
            if (c1252r8.m2659d()) {
                c1101l8.put(C1423y4.m2983d(c1252r8));
                it.remove();
                z = true;
                break;
            }
        }
        if (!z && this.f3672c.size() > 0) {
            ArrayList arrayList = this.f3672c;
            C1252r8 c1252r82 = (C1252r8) arrayList.get(arrayList.size() - 1);
            c1101l8.put(C1423y4.m2983d(c1252r82));
            this.f3672c.remove(c1252r82);
        }
        if (this.f3672c.size() > 0) {
            Iterator it2 = this.f3672c.iterator();
            while (it2.hasNext()) {
                this.f3673d.put(new JSONObject(C1423y4.m2983d((C1252r8) it2.next())));
            }
        }
        if (this.f3673d.length() > 0) {
            c1101l8.put("failed_info", this.f3673d.toString());
        }
        Logger.m3430d("HaReportHelper", "grssdk report data to aiops is: %s", new JSONObject(c1101l8.get()));
        HianalyticsHelper.getInstance().onEvent(c1101l8.get(), "networkkit_grs");
    }
}
