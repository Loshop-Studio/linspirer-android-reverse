package com.taobao.accs.p072ut.p073a;

import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.UTMini;
import java.util.HashMap;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.ut.a.e */
/* loaded from: classes.dex */
public class C1969e {

    /* renamed from: a */
    public String f6356a;

    /* renamed from: b */
    public String f6357b;

    /* renamed from: c */
    public String f6358c;

    /* renamed from: d */
    public String f6359d;

    /* renamed from: e */
    public String f6360e;

    /* renamed from: f */
    public String f6361f;

    /* renamed from: g */
    public final String f6362g = "sendAck";

    /* renamed from: h */
    public boolean f6363h = false;

    /* renamed from: a */
    public void m5721a() {
        String str;
        String strValueOf;
        if (this.f6363h) {
            return;
        }
        this.f6363h = true;
        HashMap map = new HashMap();
        try {
            str = this.f6356a;
            try {
                strValueOf = String.valueOf(221);
                try {
                    map.put("device_id", this.f6356a);
                    map.put("session_id", this.f6357b);
                    map.put("data_id", this.f6358c);
                    map.put("ack_date", this.f6359d);
                    map.put("service_id", this.f6360e);
                    map.put("fail_reasons", this.f6361f);
                    UTMini.getInstance().commitEvent(66001, "sendAck", str, (Object) null, strValueOf, map);
                } catch (Throwable th) {
                    th = th;
                    ALog.m5726d("accs.SendAckStatistic", UTMini.getCommitInfo(66001, str, (String) null, strValueOf, map) + " " + th.toString(), new Object[0]);
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
