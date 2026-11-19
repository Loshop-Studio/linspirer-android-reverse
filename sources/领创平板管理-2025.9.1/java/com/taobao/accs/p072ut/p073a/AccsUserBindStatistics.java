package com.taobao.accs.p072ut.p073a;

import com.alibaba.sdk.android.error.ErrorCode;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.UTMini;
import java.util.HashMap;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.ut.a.b */
/* loaded from: classes.dex */
public class AccsUserBindStatistics {

    /* renamed from: a */
    public String f6327a;

    /* renamed from: b */
    public String f6328b;

    /* renamed from: c */
    public boolean f6329c;

    /* renamed from: d */
    public String f6330d;

    /* renamed from: e */
    public String f6331e;

    /* renamed from: f */
    public final String f6332f = "BindUser";

    /* renamed from: g */
    public boolean f6333g = false;

    /* renamed from: b */
    private void m5715b(String str) {
        String str2;
        String strValueOf;
        if (this.f6333g) {
            return;
        }
        this.f6333g = true;
        HashMap map = new HashMap();
        try {
            str2 = this.f6327a;
            try {
                strValueOf = String.valueOf(221);
                try {
                    map.put("device_id", this.f6327a);
                    map.put("bind_date", this.f6328b);
                    map.put("ret", this.f6329c ? "y" : "n");
                    map.put("fail_reasons", this.f6330d);
                    map.put("user_id", this.f6331e);
                    if (ALog.isPrintLog(ALog.Level.D)) {
                        ALog.m5726d("accs.BindUserStatistic", UTMini.getCommitInfo(66001, str2, (String) null, strValueOf, map), new Object[0]);
                    }
                    UTMini.getInstance().commitEvent(66001, str, str2, (Object) null, strValueOf, map);
                } catch (Throwable th) {
                    th = th;
                    ALog.m5726d("accs.BindUserStatistic", UTMini.getCommitInfo(66001, str2, (String) null, strValueOf, map) + " " + th.toString(), new Object[0]);
                }
            } catch (Throwable th2) {
                th = th2;
                strValueOf = null;
            }
        } catch (Throwable th3) {
            th = th3;
            str2 = null;
            strValueOf = null;
        }
    }

    /* renamed from: a */
    public void m5718a(String str) {
        this.f6330d = str;
    }

    /* renamed from: a */
    public void m5717a(ErrorCode errorCode) {
        if (errorCode.getCodeInt() != AccsErrorCode.SUCCESS.getCodeInt()) {
            m5718a(errorCode.getMsg());
        }
    }

    /* renamed from: a */
    public void m5716a() {
        m5715b("BindUser");
    }
}
