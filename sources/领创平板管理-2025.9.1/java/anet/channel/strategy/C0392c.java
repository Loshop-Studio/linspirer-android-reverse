package anet.channel.strategy;

import anet.channel.util.HttpConstant;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.c */
/* loaded from: classes.dex */
public class C0392c {

    /* renamed from: a */
    public final ConcurrentHashMap<String, String> f486a = new ConcurrentHashMap<>();

    /* renamed from: b */
    public boolean f487b = true;

    /* compiled from: Taobao */
    /* renamed from: anet.channel.strategy.c$a */
    public static class a {

        /* renamed from: a */
        public static C0392c f488a = new C0392c();
    }

    /* renamed from: a */
    public void m292a(boolean z) {
        this.f487b = z;
    }

    /* renamed from: b */
    public void m293b(String str) {
        this.f486a.put(str, HttpConstant.HTTP);
    }

    /* renamed from: a */
    public String m291a(String str) {
        if (!this.f487b) {
            return null;
        }
        String str2 = this.f486a.get(str);
        if (str2 != null) {
            return str2;
        }
        this.f486a.put(str, HttpConstant.HTTPS);
        return HttpConstant.HTTPS;
    }
}
