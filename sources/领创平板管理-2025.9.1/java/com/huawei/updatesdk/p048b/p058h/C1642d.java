package com.huawei.updatesdk.p048b.p058h;

import android.content.Context;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.List;
import org.android.agoo.message.MessageService;

/* renamed from: com.huawei.updatesdk.b.h.d */
/* loaded from: classes.dex */
public class C1642d {
    /* renamed from: a */
    public static int m3776a(long j, long j2) {
        if (j2 <= 0) {
            return 0;
        }
        return Math.min((int) Math.round((j / j2) * 100.0d), 100);
    }

    /* renamed from: a */
    public static String m3777a(int i) {
        NumberFormat percentInstance = NumberFormat.getPercentInstance();
        percentInstance.setMinimumFractionDigits(0);
        return percentInstance.format(i / 100.0d);
    }

    /* renamed from: a */
    public static String m3778a(Context context, long j) {
        if (j == 0) {
            return context.getString(C1641c.m3774c(context, "upsdk_storage_utils"), MessageService.MSG_DB_READY_REPORT);
        }
        DecimalFormat decimalFormat = null;
        if (j > 104857) {
            decimalFormat = new DecimalFormat("###.#");
        } else if (j > 10485) {
            decimalFormat = new DecimalFormat("###.##");
        }
        return decimalFormat != null ? context.getString(C1641c.m3774c(context, "upsdk_storage_utils"), decimalFormat.format(j / 1048576.0d)) : context.getString(C1641c.m3774c(context, "upsdk_storage_utils"), "0.01");
    }

    /* renamed from: a */
    public static boolean m3779a(List list) {
        return list == null || list.size() <= 0;
    }
}
