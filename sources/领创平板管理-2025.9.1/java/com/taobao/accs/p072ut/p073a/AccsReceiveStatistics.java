package com.taobao.accs.p072ut.p073a;

import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.UTMini;
import java.util.HashMap;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.ut.a.d */
/* loaded from: classes.dex */
public class AccsReceiveStatistics {

    /* renamed from: a */
    public String f6345a;

    /* renamed from: b */
    public String f6346b;

    /* renamed from: c */
    public String f6347c;

    /* renamed from: d */
    public String f6348d;

    /* renamed from: e */
    public String f6349e;

    /* renamed from: f */
    public String f6350f;

    /* renamed from: g */
    public String f6351g;

    /* renamed from: i */
    public String f6353i;

    /* renamed from: j */
    public final String f6354j = "receiveMessage";

    /* renamed from: h */
    public boolean f6352h = false;

    /* renamed from: k */
    public boolean f6355k = false;

    /* renamed from: a */
    public void m5720a() {
        String str;
        String strValueOf;
        if (this.f6355k) {
            return;
        }
        this.f6355k = true;
        HashMap map = new HashMap();
        try {
            str = this.f6345a;
            try {
                strValueOf = String.valueOf(221);
                try {
                    map.put("device_id", this.f6345a);
                    map.put("data_id", this.f6346b);
                    map.put("receive_date", this.f6347c);
                    map.put("to_bz_date", this.f6348d);
                    map.put("service_id", this.f6349e);
                    map.put("data_length", this.f6350f);
                    map.put("msg_type", this.f6351g);
                    map.put("repeat", this.f6352h ? "y" : "n");
                    map.put("user_id", this.f6353i);
                    UTMini.getInstance().commitEvent(66001, "receiveMessage", str, (Object) null, strValueOf, map);
                } catch (Throwable th) {
                    th = th;
                    ALog.m5726d("ReceiveMessage", UTMini.getCommitInfo(66001, str, (String) null, strValueOf, map) + " " + th.toString(), new Object[0]);
                }
            } catch (Throwable th2) {
                th = th2;
                strValueOf = null;
            }
        } catch (Throwable th3) {
            th = th3;
            str = null;
            strValueOf = null;
        }
    }
}
