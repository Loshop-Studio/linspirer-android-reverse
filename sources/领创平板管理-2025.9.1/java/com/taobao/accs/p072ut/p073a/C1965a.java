package com.taobao.accs.p072ut.p073a;

import com.alibaba.sdk.android.error.ErrorCode;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.UTMini;
import java.util.HashMap;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.ut.a.a */
/* loaded from: classes.dex */
public class C1965a {

    /* renamed from: a */
    public String f6321a;

    /* renamed from: b */
    public String f6322b;

    /* renamed from: c */
    public boolean f6323c;

    /* renamed from: d */
    public String f6324d;

    /* renamed from: e */
    public final String f6325e = "BindApp";

    /* renamed from: f */
    public boolean f6326f = false;

    /* renamed from: b */
    private void m5711b(String str) {
        String str2;
        String strValueOf;
        if (this.f6326f) {
            return;
        }
        this.f6326f = true;
        HashMap map = new HashMap();
        try {
            str2 = this.f6321a;
            try {
                strValueOf = String.valueOf(221);
                try {
                    map.put("device_id", this.f6321a);
                    map.put("bind_date", this.f6322b);
                    map.put("ret", this.f6323c ? "y" : "n");
                    map.put("fail_reasons", this.f6324d);
                    map.put("push_token", "");
                    UTMini.getInstance().commitEvent(66001, str, str2, (Object) null, strValueOf, map);
                } catch (Throwable th) {
                    th = th;
                    ALog.m5726d("BindAppStatistic", UTMini.getCommitInfo(66001, str2, (String) null, strValueOf, map) + " " + th.toString(), new Object[0]);
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
    public void m5714a(String str) {
        this.f6324d = str;
    }

    /* renamed from: a */
    public void m5713a(ErrorCode errorCode) {
        if (errorCode.getCodeInt() != AccsErrorCode.SUCCESS.getCodeInt()) {
            m5714a(errorCode.getMsg());
        }
    }

    /* renamed from: a */
    public void m5712a() {
        m5711b("BindApp");
    }
}
