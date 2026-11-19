package anet.channel.detect;

import android.text.TextUtils;
import android.util.Pair;
import anet.channel.statist.RequestStatistic;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.c */
/* loaded from: classes.dex */
public class RunnableC0326c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RequestStatistic f201a;

    /* renamed from: b */
    public final /* synthetic */ ExceptionDetector f202b;

    public RunnableC0326c(ExceptionDetector exceptionDetector, RequestStatistic requestStatistic) {
        this.f202b = exceptionDetector;
        this.f201a = requestStatistic;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f201a == null) {
                return;
            }
            if (!TextUtils.isEmpty(this.f201a.f414ip) && this.f201a.ret == 0) {
                if ("guide-acs.m.taobao.com".equalsIgnoreCase(this.f201a.host)) {
                    this.f202b.f186b = this.f201a.f414ip;
                } else if ("msgacs.m.taobao.com".equalsIgnoreCase(this.f201a.host)) {
                    this.f202b.f187c = this.f201a.f414ip;
                } else if ("gw.alicdn.com".equalsIgnoreCase(this.f201a.host)) {
                    this.f202b.f188d = this.f201a.f414ip;
                }
            }
            if (!TextUtils.isEmpty(this.f201a.url)) {
                this.f202b.f189e.add(Pair.create(this.f201a.url, Integer.valueOf(this.f201a.statusCode)));
            }
            if (this.f202b.m93c()) {
                this.f202b.m92b();
            }
        } catch (Throwable th) {
            ALog.m338e("anet.ExceptionDetector", "network detect fail.", null, th, new Object[0]);
        }
    }
}
