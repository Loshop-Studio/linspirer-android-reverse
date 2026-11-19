package com.taobao.accs.net;

import com.alibaba.sdk.android.error.ErrorBuilder;
import com.huawei.hem.C0948f6;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.data.C1921d;
import com.taobao.accs.data.Message;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.c */
/* loaded from: classes.dex */
public class RunnableC1941c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f6225a;

    /* renamed from: b */
    public final /* synthetic */ long f6226b;

    /* renamed from: c */
    public final /* synthetic */ boolean f6227c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC1940b f6228d;

    public RunnableC1941c(AbstractC1940b abstractC1940b, String str, long j, boolean z) {
        this.f6228d = abstractC1940b;
        this.f6225a = str;
        this.f6226b = j;
        this.f6227c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        Message messageM5550a = this.f6228d.f6213e.m5550a(this.f6225a);
        if (messageM5550a != null) {
            C1921d c1921d = this.f6228d.f6213e;
            ErrorBuilder errorBuilderCopy = AccsErrorCode.REQ_TIME_OUT.copy();
            StringBuilder sbM1765j = C0948f6.m1765j("发送超过");
            sbM1765j.append(this.f6226b);
            sbM1765j.append("未收到回执");
            c1921d.m5554a(messageM5550a, errorBuilderCopy.msg(sbM1765j.toString()).detail(AccsErrorCode.getAllDetails(null)).build());
            this.f6228d.mo5630a(this.f6225a, this.f6227c, "receive data time out");
            ALog.m5728e(this.f6228d.mo5641d(), C0948f6.m1762g(new StringBuilder(), this.f6225a, "-> receive data time out!"), new Object[0]);
        }
    }
}
