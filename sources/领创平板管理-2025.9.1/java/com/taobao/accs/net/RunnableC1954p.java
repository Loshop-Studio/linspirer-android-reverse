package com.taobao.accs.net;

import android.support.v7.widget.RecyclerView;
import com.huawei.hem.C0948f6;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.AccsState;
import com.taobao.accs.data.Message;
import com.taobao.accs.utl.AppMonitorAdapter;
import com.taobao.accs.utl.BaseMonitor;
import java.util.Iterator;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.p */
/* loaded from: classes.dex */
public class RunnableC1954p implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f6273a;

    /* renamed from: b */
    public final /* synthetic */ String f6274b;

    /* renamed from: c */
    public final /* synthetic */ int f6275c;

    /* renamed from: d */
    public final /* synthetic */ boolean f6276d;

    /* renamed from: e */
    public final /* synthetic */ C1948j f6277e;

    public RunnableC1954p(C1948j c1948j, int i, String str, int i2, boolean z) {
        this.f6277e = c1948j;
        this.f6273a = i;
        this.f6274b = str;
        this.f6275c = i2;
        this.f6276d = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        Message.C1915a next;
        Message messageM5560b;
        AccsState accsState = AccsState.getInstance();
        String str = this.f6277e.f6221m;
        StringBuilder sbM1765j = C0948f6.m1765j("oe ");
        sbM1765j.append(this.f6273a);
        sbM1765j.append(" ");
        sbM1765j.append(this.f6274b);
        accsState.m5452b(str, AccsState.RECENT_ERRORS, sbM1765j.toString());
        int i = this.f6275c;
        if (i > 0) {
            Message.C1915a c1915a = new Message.C1915a(i, "");
            Iterator<Message.C1915a> it = this.f6277e.f6213e.m5566f().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    if (next.equals(c1915a)) {
                        break;
                    }
                }
            }
            if (next != null && (messageM5560b = this.f6277e.f6213e.m5560b(next.m5522b())) != null) {
                if (this.f6276d) {
                    if (!this.f6277e.m5632a(messageM5560b, RecyclerView.MAX_SCROLL_DURATION)) {
                        this.f6277e.f6213e.m5554a(messageM5560b, AccsErrorCode.convertNetworkSdkError(this.f6273a, this.f6274b).detail(AccsErrorCode.getAllDetails(null)).build());
                    }
                    if (messageM5560b.m5516e() != null) {
                        AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_RESEND, "total_tnet", 0.0d);
                    }
                } else {
                    this.f6277e.f6213e.m5554a(messageM5560b, AccsErrorCode.convertNetworkSdkError(this.f6273a, this.f6274b).detail(AccsErrorCode.getAllDetails(null)).build());
                }
            }
        }
        int i2 = this.f6275c;
        if (i2 >= 0 || !this.f6276d) {
            return;
        }
        this.f6277e.m5636b(i2);
    }
}
