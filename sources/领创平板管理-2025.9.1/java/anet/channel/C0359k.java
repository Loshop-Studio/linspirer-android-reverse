package anet.channel;

import anet.channel.util.HttpConstant;
import anetwork.channel.cache.CachePrediction;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: anet.channel.k */
/* loaded from: classes.dex */
public class C0359k implements CachePrediction {

    /* renamed from: a */
    public final /* synthetic */ RunnableC0358j f287a;

    public C0359k(RunnableC0358j runnableC0358j) {
        this.f287a = runnableC0358j;
    }

    @Override // anetwork.channel.cache.CachePrediction
    public boolean handleCache(String str, Map<String, String> map) {
        return "weex".equals(map.get(HttpConstant.F_REFER));
    }
}
