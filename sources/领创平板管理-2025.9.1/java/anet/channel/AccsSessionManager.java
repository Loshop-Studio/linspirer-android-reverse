package anet.channel;

import android.content.Intent;
import android.text.TextUtils;
import anet.channel.entity.ConnType;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.StrategyCenter;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.HttpConstant;
import anet.channel.util.StringUtils;
import com.taobao.accs.common.Constants;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AccsSessionManager {

    /* renamed from: c */
    public static CopyOnWriteArraySet<ISessionListener> f44c = new CopyOnWriteArraySet<>();

    /* renamed from: a */
    public SessionCenter f45a;

    /* renamed from: b */
    public Set<String> f46b = Collections.EMPTY_SET;

    public AccsSessionManager(SessionCenter sessionCenter) {
        this.f45a = null;
        this.f45a = sessionCenter;
    }

    /* renamed from: b */
    private boolean m24b() {
        return !(GlobalAppRuntimeInfo.isAppBackground() && AwcnConfig.isAccsSessionCreateForbiddenInBg()) && NetworkStatusHelper.isConnected();
    }

    public synchronized void checkAndStartSession() {
        Collection<SessionInfo> collectionM74a = this.f45a.f128g.m74a();
        Set<String> treeSet = Collections.EMPTY_SET;
        if (!collectionM74a.isEmpty()) {
            treeSet = new TreeSet<>();
        }
        for (SessionInfo sessionInfo : collectionM74a) {
            if (sessionInfo.isKeepAlive) {
                treeSet.add(StringUtils.concatString(StrategyCenter.getInstance().getSchemeByHost(sessionInfo.host, sessionInfo.isAccs ? HttpConstant.HTTPS : HttpConstant.HTTP), HttpConstant.SCHEME_SPLIT, sessionInfo.host));
            }
        }
        for (String str : this.f46b) {
            if (!treeSet.contains(str)) {
                m23a(str);
            }
        }
        if (m24b()) {
            for (String str2 : treeSet) {
                try {
                    this.f45a.get(str2, ConnType.TypeLevel.SPDY, 0L);
                } catch (Exception unused) {
                    ALog.m339e("start session failed", null, Constants.KEY_HOST, str2);
                }
            }
            this.f46b = treeSet;
        }
    }

    public synchronized void forceCloseSession(boolean z) {
        if (ALog.isPrintLog(1)) {
            ALog.m337d("awcn.AccsSessionManager", "forceCloseSession", this.f45a.f124c, "reCreate", Boolean.valueOf(z));
        }
        Iterator<String> it = this.f46b.iterator();
        while (it.hasNext()) {
            m23a(it.next());
        }
        if (z) {
            checkAndStartSession();
        }
    }

    public void notifyListener(Intent intent) {
        ThreadPoolExecutorFactory.submitScheduledTask(new RunnableC0307a(this, intent));
    }

    public void registerListener(ISessionListener iSessionListener) {
        if (iSessionListener != null) {
            f44c.add(iSessionListener);
        }
    }

    public void unregisterListener(ISessionListener iSessionListener) {
        f44c.remove(iSessionListener);
    }

    /* renamed from: a */
    private void m23a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ALog.m337d("awcn.AccsSessionManager", "closeSessions", this.f45a.f124c, Constants.KEY_HOST, str);
        this.f45a.m42a(str).m63b(false);
    }
}
