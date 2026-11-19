package com.taobao.accs.net;

import android.text.TextUtils;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.q */
/* loaded from: classes.dex */
public class RunnableC1955q implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1948j f6278a;

    public RunnableC1955q(C1948j c1948j) {
        this.f6278a = c1948j;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f6278a.f6212d == null || TextUtils.isEmpty(this.f6278a.m5646i())) {
                return;
            }
            this.f6278a.f6250t.mo669i("mTryStartServiceRunable bindapp");
            this.f6278a.m5637b(this.f6278a.f6212d);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
