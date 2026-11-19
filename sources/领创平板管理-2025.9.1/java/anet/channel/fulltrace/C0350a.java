package anet.channel.fulltrace;

import anet.channel.statist.RequestStatistic;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.fulltrace.a */
/* loaded from: classes.dex */
public class C0350a {

    /* renamed from: a */
    public static volatile IFullTraceAnalysis f261a = new a(null);

    /* renamed from: b */
    public static boolean f262b = false;

    /* compiled from: Taobao */
    /* renamed from: anet.channel.fulltrace.a$a */
    public static class a implements IFullTraceAnalysis {

        /* renamed from: a */
        public IFullTraceAnalysis f263a;

        public a(IFullTraceAnalysis iFullTraceAnalysis) {
            this.f263a = iFullTraceAnalysis;
            boolean unused = C0350a.f262b = true;
        }

        @Override // anet.channel.fulltrace.IFullTraceAnalysis
        public void commitRequest(String str, RequestStatistic requestStatistic) {
            IFullTraceAnalysis iFullTraceAnalysis;
            if (C0350a.f262b && (iFullTraceAnalysis = this.f263a) != null) {
                try {
                    iFullTraceAnalysis.commitRequest(str, requestStatistic);
                } catch (Throwable th) {
                    boolean unused = C0350a.f262b = false;
                    ALog.m338e("anet.AnalysisFactory", "fulltrace commit fail.", null, th, new Object[0]);
                }
            }
        }

        @Override // anet.channel.fulltrace.IFullTraceAnalysis
        public String createRequest() {
            IFullTraceAnalysis iFullTraceAnalysis;
            if (!C0350a.f262b || (iFullTraceAnalysis = this.f263a) == null) {
                return null;
            }
            try {
                return iFullTraceAnalysis.createRequest();
            } catch (Throwable th) {
                boolean unused = C0350a.f262b = false;
                ALog.m338e("anet.AnalysisFactory", "createRequest fail.", null, th, new Object[0]);
                return null;
            }
        }

        @Override // anet.channel.fulltrace.IFullTraceAnalysis
        public C0351b getSceneInfo() {
            IFullTraceAnalysis iFullTraceAnalysis;
            if (!C0350a.f262b || (iFullTraceAnalysis = this.f263a) == null) {
                return null;
            }
            try {
                return iFullTraceAnalysis.getSceneInfo();
            } catch (Throwable th) {
                boolean unused = C0350a.f262b = false;
                ALog.m338e("anet.AnalysisFactory", "getSceneInfo fail", null, th, new Object[0]);
                return null;
            }
        }
    }

    /* renamed from: a */
    public static IFullTraceAnalysis m140a() {
        return f261a;
    }

    /* renamed from: a */
    public static void m141a(IFullTraceAnalysis iFullTraceAnalysis) {
        f261a = new a(iFullTraceAnalysis);
    }
}
