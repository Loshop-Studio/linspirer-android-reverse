package anet.channel.strategy.dispatch;

import android.text.TextUtils;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.util.ALog;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class HttpDispatcher {

    /* renamed from: a */
    public CopyOnWriteArraySet<IDispatchEventListener> f491a;

    /* renamed from: b */
    public C0395a f492b;

    /* renamed from: c */
    public volatile boolean f493c;

    /* renamed from: d */
    public Set<String> f494d;

    /* renamed from: e */
    public Set<String> f495e;

    /* renamed from: f */
    public AtomicBoolean f496f;

    /* compiled from: Taobao */
    public interface IDispatchEventListener {
        void onEvent(DispatchEvent dispatchEvent);
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.strategy.dispatch.HttpDispatcher$a */
    public static class C0394a {

        /* renamed from: a */
        public static HttpDispatcher f497a = new HttpDispatcher();
    }

    public static HttpDispatcher getInstance() {
        return C0394a.f497a;
    }

    public static void setInitHosts(List<String> list) {
        if (list != null) {
            DispatchConstants.initHostArray = (String[]) list.toArray(new String[0]);
        }
    }

    /* renamed from: a */
    public void m295a(DispatchEvent dispatchEvent) {
        Iterator<IDispatchEventListener> it = this.f491a.iterator();
        while (it.hasNext()) {
            try {
                it.next().onEvent(dispatchEvent);
            } catch (Exception unused) {
            }
        }
    }

    public synchronized void addHosts(List<String> list) {
        if (list != null) {
            this.f495e.addAll(list);
            this.f494d.clear();
        }
    }

    public void addListener(IDispatchEventListener iDispatchEventListener) {
        this.f491a.add(iDispatchEventListener);
    }

    public synchronized Set<String> getInitHosts() {
        m294a();
        return new HashSet(this.f495e);
    }

    public boolean isInitHostsChanged(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        boolean zContains = this.f494d.contains(str);
        if (!zContains) {
            this.f494d.add(str);
        }
        return !zContains;
    }

    public void removeListener(IDispatchEventListener iDispatchEventListener) {
        this.f491a.remove(iDispatchEventListener);
    }

    public void sendAmdcRequest(Set<String> set, int i) {
        if (!this.f493c || set == null || set.isEmpty()) {
            ALog.m339e("awcn.HttpDispatcher", "invalid parameter", null, new Object[0]);
            return;
        }
        if (ALog.isPrintLog(2)) {
            ALog.m340i("awcn.HttpDispatcher", "sendAmdcRequest", null, DispatchConstants.HOSTS, set.toString());
        }
        HashMap map = new HashMap();
        map.put(DispatchConstants.HOSTS, set);
        map.put(DispatchConstants.CONFIG_VERSION, String.valueOf(i));
        this.f492b.m298a(map);
    }

    public void setEnable(boolean z) {
        this.f493c = z;
    }

    public void switchENV() {
        this.f494d.clear();
        this.f495e.clear();
        this.f496f.set(false);
    }

    public HttpDispatcher() {
        this.f491a = new CopyOnWriteArraySet<>();
        this.f492b = new C0395a();
        this.f493c = true;
        this.f494d = Collections.newSetFromMap(new ConcurrentHashMap());
        this.f495e = new TreeSet();
        this.f496f = new AtomicBoolean();
        m294a();
    }

    /* renamed from: a */
    private void m294a() {
        if (this.f496f.get() || GlobalAppRuntimeInfo.getContext() == null || !this.f496f.compareAndSet(false, true)) {
            return;
        }
        this.f495e.add(DispatchConstants.getAmdcServerDomain());
        if (GlobalAppRuntimeInfo.isTargetProcess()) {
            this.f495e.addAll(Arrays.asList(DispatchConstants.initHostArray));
        }
    }
}
