package com.huawei.hem;

import android.support.graphics.drawable.PathInterpolatorCompat;
import android.support.v4.view.PointerIconCompat;
import android.support.v7.widget.RecyclerView;
import com.alibaba.fastjson.JSONStreamContext;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.hem.r7 */
/* loaded from: classes.dex */
public final class HemLicenseStatusMessages {

    /* renamed from: a */
    public static final Map<Integer, String> f3602a;

    static {
        HashMap map = new HashMap();
        f3602a = map;
        map.put(1000, "internal error");
        f3602a.put(1001, "network error");
        f3602a.put(1002, "param error");
        f3602a.put(1003, "licenseKey invalid");
        f3602a.put(1004, "licenseKey expired");
        f3602a.put(Integer.valueOf(JSONStreamContext.ArrayValue), "licenseKey unauthorized");
        f3602a.put(Integer.valueOf(PointerIconCompat.TYPE_CELL), "license check failed");
        f3602a.put(Integer.valueOf(RecyclerView.MAX_SCROLL_DURATION), "license activate success");
        f3602a.put(2001, "license activate failed");
        f3602a.put(Integer.valueOf(PathInterpolatorCompat.MAX_NUM_POINTS), "license de-activate success");
        f3602a.put(3001, "license de-activate failed");
    }

    /* renamed from: a */
    public static String m2655a(int i) {
        String str = f3602a.get(Integer.valueOf(i));
        return str == null ? "" : str;
    }
}
