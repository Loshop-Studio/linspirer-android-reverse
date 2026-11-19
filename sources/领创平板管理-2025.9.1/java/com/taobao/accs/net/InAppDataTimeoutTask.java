package com.taobao.accs.net;

import com.alibaba.sdk.android.error.ErrorBuilder;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.data.AccsMessageDataManager;
import com.taobao.accs.data.Message;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.n */
/* loaded from: classes.dex */
public class InAppDataTimeoutTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f6264a;

    /* renamed from: b */
    public final /* synthetic */ long f6265b;

    /* renamed from: c */
    public final /* synthetic */ boolean f6266c;

    /* renamed from: d */
    public final /* synthetic */ AccsInAppConnection f6267d;

    public InAppDataTimeoutTask(AccsInAppConnection c1948j, String str, long j, boolean z) {
        this.f6267d = c1948j;
        this.f6264a = str;
        this.f6265b = j;
        this.f6266c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        Message messageM5550a = this.f6267d.f6213e.m5550a(this.f6264a);
        if (messageM5550a != null) {
            AccsMessageDataManager c1921d = this.f6267d.f6213e;
            ErrorBuilder errorBuilderCopy = AccsErrorCode.REQ_TIME_OUT.copy();
            StringBuilder sbM1765j = CompilerOutline.m1765j("发送超过");
            sbM1765j.append(this.f6265b);
            sbM1765j.append("未收到回执");
            c1921d.m5554a(messageM5550a, errorBuilderCopy.msg(sbM1765j.toString()).detail(AccsErrorCode.getAllDetails(null)).build());
            this.f6267d.mo5630a(this.f6264a, this.f6266c, "receive data time out");
            this.f6267d.f6250t.mo666e(this.f6264a + "-> receive data time out!");
        }
    }
}
