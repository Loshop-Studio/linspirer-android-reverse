package com.huawei.hem;

import com.taobao.accs.utl.ALog;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.y0 */
/* loaded from: classes.dex */
public class AgooNotificationData {

    /* renamed from: o */
    public static ArrayList<Integer> f4103o = new ArrayList<>();

    /* renamed from: a */
    public Map<String, String> f4104a;

    /* renamed from: b */
    public String f4105b;

    /* renamed from: c */
    public String f4106c;

    /* renamed from: d */
    public String f4107d;

    /* renamed from: e */
    public String f4108e;

    /* renamed from: f */
    public String f4109f;

    /* renamed from: g */
    public String f4110g;

    /* renamed from: h */
    public String f4111h;

    /* renamed from: i */
    public int f4112i;

    /* renamed from: j */
    public int f4113j;

    /* renamed from: k */
    public int f4114k = 0;

    /* renamed from: l */
    public String f4115l;

    /* renamed from: m */
    public String f4116m;

    /* renamed from: n */
    public String f4117n;

    static {
        f4103o.add(-2);
        f4103o.add(0);
        f4103o.add(1);
        f4103o.add(-1);
        f4103o.add(2);
    }

    /* renamed from: a */
    public void m2953a(String str) {
        try {
            if (f4103o.contains(Integer.valueOf(Integer.parseInt(str)))) {
                this.f4114k = Integer.parseInt(str);
            }
        } catch (NumberFormatException e) {
            ALog.m5727e("MPS:CPushNotification", "formar error:数字格式错误", e, new Object[0]);
        }
    }
}
