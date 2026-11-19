package anet.channel;

import android.text.TextUtils;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Taobao */
/* renamed from: anet.channel.c */
/* loaded from: classes.dex */
public class C0318c {

    /* renamed from: a */
    public Map<String, Integer> f178a = new HashMap();

    /* renamed from: b */
    public Map<String, SessionInfo> f179b = new ConcurrentHashMap();

    /* renamed from: a */
    public void m75a(SessionInfo sessionInfo) {
        if (sessionInfo == null) {
            throw new NullPointerException("info is null");
        }
        if (TextUtils.isEmpty(sessionInfo.host)) {
            throw new IllegalArgumentException("host cannot be null or empty");
        }
        this.f179b.put(sessionInfo.host, sessionInfo);
    }

    /* renamed from: b */
    public SessionInfo m77b(String str) {
        return this.f179b.get(str);
    }

    /* renamed from: c */
    public int m78c(String str) {
        Integer num;
        synchronized (this.f178a) {
            num = this.f178a.get(str);
        }
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    /* renamed from: a */
    public SessionInfo m73a(String str) {
        return this.f179b.remove(str);
    }

    /* renamed from: a */
    public Collection<SessionInfo> m74a() {
        return this.f179b.values();
    }

    /* renamed from: a */
    public void m76a(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.f178a) {
                this.f178a.put(str, Integer.valueOf(i));
            }
            return;
        }
        throw new IllegalArgumentException("host cannot be null or empty");
    }
}
