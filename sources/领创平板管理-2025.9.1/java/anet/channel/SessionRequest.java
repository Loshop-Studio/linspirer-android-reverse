package anet.channel;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v4.text.BidiFormatter;
import android.text.TextUtils;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.entity.C0346a;
import anet.channel.entity.C0348c;
import anet.channel.entity.ConnType;
import anet.channel.entity.EventType;
import anet.channel.session.C0378d;
import anet.channel.session.TnetSpdySession;
import anet.channel.statist.AlarmObject;
import anet.channel.statist.SessionConnStat;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.IConnStrategy;
import anet.channel.strategy.StrategyCenter;
import anet.channel.strategy.utils.C0413c;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.C0422c;
import anet.channel.util.C0428i;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpUrl;
import com.taobao.accs.common.Constants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class SessionRequest {

    /* renamed from: a */
    public SessionCenter f133a;

    /* renamed from: b */
    public C0338e f134b;

    /* renamed from: c */
    public SessionInfo f135c;

    /* renamed from: e */
    public volatile Session f137e;

    /* renamed from: i */
    public String f141i;

    /* renamed from: j */
    public String f142j;

    /* renamed from: k */
    public volatile Future f143k;

    /* renamed from: d */
    public volatile boolean f136d = false;

    /* renamed from: f */
    public volatile boolean f138f = false;

    /* renamed from: g */
    public HashMap<SessionGetCallback, RunnableC0306c> f139g = new HashMap<>();

    /* renamed from: h */
    public SessionConnStat f140h = null;

    /* renamed from: l */
    public Object f144l = new Object();

    /* compiled from: Taobao */
    public interface IConnCb {
        void onDisConnect(Session session, long j, int i);

        void onFailed(Session session, long j, int i, int i2);

        void onSuccess(Session session, long j);
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.SessionRequest$a */
    public class C0304a implements IConnCb {

        /* renamed from: a */
        public boolean f145a = false;

        /* renamed from: c */
        public Context f147c;

        /* renamed from: d */
        public List<C0346a> f148d;

        /* renamed from: e */
        public C0346a f149e;

        public C0304a(Context context, List<C0346a> list, C0346a c0346a) {
            this.f147c = context;
            this.f148d = list;
            this.f149e = c0346a;
        }

        @Override // anet.channel.SessionRequest.IConnCb
        public void onDisConnect(Session session, long j, int i) {
            SessionInfo sessionInfo;
            boolean zIsAppBackground = GlobalAppRuntimeInfo.isAppBackground();
            ALog.m337d("awcn.SessionRequest", "Connect Disconnect", this.f149e.m139h(), "session", session, Constants.KEY_HOST, SessionRequest.this.m53a(), "appIsBg", Boolean.valueOf(zIsAppBackground), "isHandleFinish", Boolean.valueOf(this.f145a));
            SessionRequest sessionRequest = SessionRequest.this;
            sessionRequest.f134b.m112b(sessionRequest, session);
            if (this.f145a) {
                return;
            }
            this.f145a = true;
            if (session.f114t) {
                if (zIsAppBackground && ((sessionInfo = SessionRequest.this.f135c) == null || !sessionInfo.isAccs || AwcnConfig.isAccsSessionCreateForbiddenInBg())) {
                    ALog.m339e("awcn.SessionRequest", "[onDisConnect]app background, don't Recreate", this.f149e.m139h(), "session", session);
                    return;
                }
                if (!NetworkStatusHelper.isConnected()) {
                    ALog.m339e("awcn.SessionRequest", "[onDisConnect]no network, don't Recreate", this.f149e.m139h(), "session", session);
                    return;
                }
                try {
                    ALog.m337d("awcn.SessionRequest", "session disconnected, try to recreate session", this.f149e.m139h(), new Object[0]);
                    int accsReconnectionDelayPeriod = 10000;
                    if (SessionRequest.this.f135c != null && SessionRequest.this.f135c.isAccs) {
                        accsReconnectionDelayPeriod = AwcnConfig.getAccsReconnectionDelayPeriod();
                    }
                    ThreadPoolExecutorFactory.submitScheduledTask(new RunnableC0357i(this, session), (long) (Math.random() * accsReconnectionDelayPeriod), TimeUnit.MILLISECONDS);
                } catch (Exception unused) {
                }
            }
        }

        @Override // anet.channel.SessionRequest.IConnCb
        public void onFailed(Session session, long j, int i, int i2) {
            if (ALog.isPrintLog(1)) {
                ALog.m337d("awcn.SessionRequest", "Connect failed", this.f149e.m139h(), "session", session, Constants.KEY_HOST, SessionRequest.this.m53a(), "isHandleFinish", Boolean.valueOf(this.f145a));
            }
            if (SessionRequest.this.f138f) {
                SessionRequest.this.f138f = false;
                return;
            }
            if (this.f145a) {
                return;
            }
            this.f145a = true;
            SessionRequest sessionRequest = SessionRequest.this;
            sessionRequest.f134b.m112b(sessionRequest, session);
            if (!session.f115u || !NetworkStatusHelper.isConnected() || this.f148d.isEmpty()) {
                SessionRequest.this.m64c();
                SessionRequest.this.m57a(session, i, i2);
                synchronized (SessionRequest.this.f139g) {
                    for (Map.Entry<SessionGetCallback, RunnableC0306c> entry : SessionRequest.this.f139g.entrySet()) {
                        RunnableC0306c value = entry.getValue();
                        if (value.f153b.compareAndSet(false, true)) {
                            ThreadPoolExecutorFactory.removeScheduleTask(value);
                            entry.getKey().onSessionGetFail();
                        }
                    }
                    SessionRequest.this.f139g.clear();
                }
                return;
            }
            if (ALog.isPrintLog(1)) {
                ALog.m337d("awcn.SessionRequest", "use next connInfo to create session", this.f149e.m139h(), Constants.KEY_HOST, SessionRequest.this.m53a());
            }
            C0346a c0346a = this.f149e;
            if (c0346a.f248b == c0346a.f249c && (i2 == -2003 || i2 == -2410)) {
                ListIterator<C0346a> listIterator = this.f148d.listIterator();
                while (listIterator.hasNext()) {
                    if (session.getIp().equals(listIterator.next().f247a.getIp())) {
                        listIterator.remove();
                    }
                }
            }
            if (C0413c.m332b(session.getIp())) {
                ListIterator<C0346a> listIterator2 = this.f148d.listIterator();
                while (listIterator2.hasNext()) {
                    if (C0413c.m332b(listIterator2.next().f247a.getIp())) {
                        listIterator2.remove();
                    }
                }
            }
            if (!this.f148d.isEmpty()) {
                C0346a c0346aRemove = this.f148d.remove(0);
                SessionRequest sessionRequest2 = SessionRequest.this;
                Context context = this.f147c;
                sessionRequest2.m48a(context, c0346aRemove, sessionRequest2.new C0304a(context, this.f148d, c0346aRemove), c0346aRemove.m139h());
                return;
            }
            SessionRequest.this.m64c();
            SessionRequest.this.m57a(session, i, i2);
            synchronized (SessionRequest.this.f139g) {
                for (Map.Entry<SessionGetCallback, RunnableC0306c> entry2 : SessionRequest.this.f139g.entrySet()) {
                    RunnableC0306c value2 = entry2.getValue();
                    if (value2.f153b.compareAndSet(false, true)) {
                        ThreadPoolExecutorFactory.removeScheduleTask(value2);
                        entry2.getKey().onSessionGetFail();
                    }
                }
                SessionRequest.this.f139g.clear();
            }
        }

        @Override // anet.channel.SessionRequest.IConnCb
        public void onSuccess(Session session, long j) {
            ALog.m337d("awcn.SessionRequest", "Connect Success", this.f149e.m139h(), "session", session, Constants.KEY_HOST, SessionRequest.this.m53a());
            try {
                if (SessionRequest.this.f138f) {
                    SessionRequest.this.f138f = false;
                    session.close(false);
                    return;
                }
                SessionRequest.this.f134b.m111a(SessionRequest.this, session);
                SessionRequest.this.m56a(session);
                synchronized (SessionRequest.this.f139g) {
                    for (Map.Entry<SessionGetCallback, RunnableC0306c> entry : SessionRequest.this.f139g.entrySet()) {
                        RunnableC0306c value = entry.getValue();
                        if (value.f153b.compareAndSet(false, true)) {
                            ThreadPoolExecutorFactory.removeScheduleTask(value);
                            entry.getKey().onSessionGetSuccess(session);
                        }
                    }
                    SessionRequest.this.f139g.clear();
                }
            } catch (Exception e) {
                ALog.m338e("awcn.SessionRequest", "[onSuccess]:", this.f149e.m139h(), e, new Object[0]);
            } finally {
                SessionRequest.this.m64c();
            }
        }
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.SessionRequest$b */
    public class RunnableC0305b implements Runnable {

        /* renamed from: a */
        public String f150a;

        public RunnableC0305b(String str) {
            this.f150a = null;
            this.f150a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SessionRequest.this.f136d) {
                ALog.m339e("awcn.SessionRequest", "Connecting timeout!!! reset status!", this.f150a, new Object[0]);
                SessionConnStat sessionConnStat = SessionRequest.this.f140h;
                sessionConnStat.ret = 2;
                sessionConnStat.totalTime = System.currentTimeMillis() - SessionRequest.this.f140h.start;
                if (SessionRequest.this.f137e != null) {
                    SessionRequest.this.f137e.f115u = false;
                    SessionRequest.this.f137e.close();
                    SessionRequest sessionRequest = SessionRequest.this;
                    sessionRequest.f140h.syncValueFromSession(sessionRequest.f137e);
                }
                AppMonitor.getInstance().commitStat(SessionRequest.this.f140h);
                SessionRequest.this.m60a(false);
            }
        }
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.SessionRequest$c */
    public class RunnableC0306c implements Runnable {

        /* renamed from: a */
        public SessionGetCallback f152a;

        /* renamed from: b */
        public AtomicBoolean f153b = new AtomicBoolean(false);

        public RunnableC0306c(SessionGetCallback sessionGetCallback) {
            this.f152a = null;
            this.f152a = sessionGetCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f153b.compareAndSet(false, true)) {
                ALog.m339e("awcn.SessionRequest", "get session timeout", null, new Object[0]);
                synchronized (SessionRequest.this.f139g) {
                    SessionRequest.this.f139g.remove(this.f152a);
                }
                this.f152a.onSessionGetFail();
            }
        }
    }

    public SessionRequest(String str, SessionCenter sessionCenter) {
        this.f141i = str;
        String strSubstring = str.substring(str.indexOf(HttpConstant.SCHEME_SPLIT) + 3);
        this.f142j = strSubstring;
        this.f133a = sessionCenter;
        this.f135c = sessionCenter.f128g.m77b(strSubstring);
        this.f134b = sessionCenter.f126e;
    }

    /* renamed from: b */
    public synchronized void m62b(Context context, int i, String str, SessionGetCallback sessionGetCallback, long j) {
        Session sessionM108a = this.f134b.m108a(this, i);
        if (sessionM108a != null) {
            ALog.m337d("awcn.SessionRequest", "Available Session exist!!!", str, new Object[0]);
            sessionGetCallback.onSessionGetSuccess(sessionM108a);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = C0428i.m364a(null);
        }
        ALog.m337d("awcn.SessionRequest", "SessionRequest start", str, Constants.KEY_HOST, this.f141i, "type", Integer.valueOf(i));
        if (this.f136d) {
            ALog.m337d("awcn.SessionRequest", "session connecting", str, Constants.KEY_HOST, m53a());
            if (m61b() == i) {
                RunnableC0306c runnableC0306c = new RunnableC0306c(sessionGetCallback);
                synchronized (this.f139g) {
                    this.f139g.put(sessionGetCallback, runnableC0306c);
                }
                ThreadPoolExecutorFactory.submitScheduledTask(runnableC0306c, j, TimeUnit.MILLISECONDS);
            } else {
                sessionGetCallback.onSessionGetFail();
            }
            return;
        }
        m60a(true);
        this.f143k = ThreadPoolExecutorFactory.submitScheduledTask(new RunnableC0305b(str), 45L, TimeUnit.SECONDS);
        SessionConnStat sessionConnStat = new SessionConnStat();
        this.f140h = sessionConnStat;
        sessionConnStat.start = System.currentTimeMillis();
        if (!NetworkStatusHelper.isConnected()) {
            if (ALog.isPrintLog(1)) {
                ALog.m337d("awcn.SessionRequest", "network is not available, can't create session", str, "isConnected", Boolean.valueOf(NetworkStatusHelper.isConnected()));
            }
            m64c();
            throw new RuntimeException("no network");
        }
        List<IConnStrategy> listM46a = m46a(i, str);
        if (listM46a.isEmpty()) {
            ALog.m340i("awcn.SessionRequest", "no avalible strategy, can't create session", str, Constants.KEY_HOST, this.f141i, "type", Integer.valueOf(i));
            m64c();
            throw new NoAvailStrategyException("no avalible strategy");
        }
        List<C0346a> listM47a = m47a(listM46a, str);
        try {
            C0346a c0346aRemove = listM47a.remove(0);
            m48a(context, c0346aRemove, new C0304a(context, listM47a, c0346aRemove), c0346aRemove.m139h());
            RunnableC0306c runnableC0306c2 = new RunnableC0306c(sessionGetCallback);
            synchronized (this.f139g) {
                this.f139g.put(sessionGetCallback, runnableC0306c2);
            }
            ThreadPoolExecutorFactory.submitScheduledTask(runnableC0306c2, j, TimeUnit.MILLISECONDS);
        } catch (Throwable unused) {
            m64c();
        }
        return;
    }

    /* renamed from: c */
    public void m64c() {
        m60a(false);
        synchronized (this.f144l) {
            this.f144l.notifyAll();
        }
    }

    /* renamed from: a */
    public String m53a() {
        return this.f141i;
    }

    /* renamed from: a */
    public void m60a(boolean z) {
        this.f136d = z;
        if (z) {
            return;
        }
        if (this.f143k != null) {
            this.f143k.cancel(true);
            this.f143k = null;
        }
        this.f137e = null;
    }

    /* renamed from: c */
    private void m52c(Session session, int i, String str) {
        SessionInfo sessionInfo = this.f135c;
        if (sessionInfo == null || !sessionInfo.isAccs) {
            return;
        }
        ALog.m339e("awcn.SessionRequest", "sendConnectInfoToAccsByCallBack", null, new Object[0]);
        Intent intent = new Intent("com.taobao.ACCS_CONNECT_INFO");
        intent.putExtra("command", 103);
        intent.putExtra(Constants.KEY_HOST, session.getHost());
        intent.putExtra(Constants.KEY_CENTER_HOST, true);
        boolean zIsAvailable = session.isAvailable();
        if (!zIsAvailable) {
            intent.putExtra(Constants.KEY_ERROR_CODE, i);
            intent.putExtra(Constants.KEY_ERROR_DETAIL, str);
        }
        intent.putExtra(Constants.KEY_CONNECT_AVAILABLE, zIsAvailable);
        intent.putExtra(Constants.KEY_TYPE_INAPP, true);
        this.f133a.f129h.notifyListener(intent);
    }

    /* renamed from: a */
    public synchronized void m55a(Context context, int i, String str, SessionGetCallback sessionGetCallback, long j) {
        Session sessionM108a = this.f134b.m108a(this, i);
        if (sessionM108a != null) {
            ALog.m337d("awcn.SessionRequest", "Available Session exist!!!", str, new Object[0]);
            if (sessionGetCallback != null) {
                sessionGetCallback.onSessionGetSuccess(sessionM108a);
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = C0428i.m364a(null);
        }
        ALog.m337d("awcn.SessionRequest", "SessionRequest start", str, Constants.KEY_HOST, this.f141i, "type", Integer.valueOf(i));
        if (this.f136d) {
            ALog.m337d("awcn.SessionRequest", "session connecting", str, Constants.KEY_HOST, m53a());
            if (sessionGetCallback != null) {
                if (m61b() == i) {
                    RunnableC0306c runnableC0306c = new RunnableC0306c(sessionGetCallback);
                    synchronized (this.f139g) {
                        this.f139g.put(sessionGetCallback, runnableC0306c);
                    }
                    ThreadPoolExecutorFactory.submitScheduledTask(runnableC0306c, j, TimeUnit.MILLISECONDS);
                } else {
                    sessionGetCallback.onSessionGetFail();
                }
            }
            return;
        }
        m60a(true);
        this.f143k = ThreadPoolExecutorFactory.submitScheduledTask(new RunnableC0305b(str), 45L, TimeUnit.SECONDS);
        SessionConnStat sessionConnStat = new SessionConnStat();
        this.f140h = sessionConnStat;
        sessionConnStat.start = System.currentTimeMillis();
        if (!NetworkStatusHelper.isConnected()) {
            if (ALog.isPrintLog(1)) {
                ALog.m337d("awcn.SessionRequest", "network is not available, can't create session", str, "isConnected", Boolean.valueOf(NetworkStatusHelper.isConnected()));
            }
            m64c();
            throw new RuntimeException("no network");
        }
        List<IConnStrategy> listM46a = m46a(i, str);
        if (!listM46a.isEmpty()) {
            List<C0346a> listM47a = m47a(listM46a, str);
            try {
                C0346a c0346aRemove = listM47a.remove(0);
                m48a(context, c0346aRemove, new C0304a(context, listM47a, c0346aRemove), c0346aRemove.m139h());
                if (sessionGetCallback != null) {
                    RunnableC0306c runnableC0306c2 = new RunnableC0306c(sessionGetCallback);
                    synchronized (this.f139g) {
                        this.f139g.put(sessionGetCallback, runnableC0306c2);
                    }
                    ThreadPoolExecutorFactory.submitScheduledTask(runnableC0306c2, j, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable unused) {
                m64c();
            }
            return;
        }
        ALog.m340i("awcn.SessionRequest", "no avalible strategy, can't create session", str, Constants.KEY_HOST, this.f141i, "type", Integer.valueOf(i));
        m64c();
        throw new NoAvailStrategyException("no avalible strategy");
    }

    /* renamed from: b */
    public void m63b(boolean z) {
        ALog.m337d("awcn.SessionRequest", "closeSessions", this.f133a.f124c, Constants.KEY_HOST, this.f141i, "autoCreate", Boolean.valueOf(z));
        if (!z && this.f137e != null) {
            this.f137e.f115u = false;
            this.f137e.close(false);
        }
        List<Session> listM110a = this.f134b.m110a(this);
        if (listM110a != null) {
            for (Session session : listM110a) {
                if (session != null) {
                    session.close(z);
                }
            }
        }
    }

    /* renamed from: a */
    public void m56a(Session session) {
        AlarmObject alarmObject = new AlarmObject();
        alarmObject.module = "networkPrefer";
        alarmObject.modulePoint = "policy";
        alarmObject.arg = this.f141i;
        alarmObject.isSuccess = true;
        AppMonitor.getInstance().commitAlarm(alarmObject);
        this.f140h.syncValueFromSession(session);
        SessionConnStat sessionConnStat = this.f140h;
        sessionConnStat.ret = 1;
        sessionConnStat.totalTime = System.currentTimeMillis() - this.f140h.start;
        AppMonitor.getInstance().commitStat(this.f140h);
    }

    /* renamed from: b */
    public int m61b() {
        Session session = this.f137e;
        if (session != null) {
            return session.f104j.getType();
        }
        return -1;
    }

    /* renamed from: b */
    private void m51b(Session session, int i, String str) {
        SessionInfo sessionInfo;
        Context context = GlobalAppRuntimeInfo.getContext();
        if (context == null || (sessionInfo = this.f135c) == null || !sessionInfo.isAccs) {
            return;
        }
        ALog.m339e("awcn.SessionRequest", "sendConnectInfoToAccsByService", null, new Object[0]);
        try {
            Intent intent = new Intent(Constants.ACTION_RECEIVE);
            intent.setPackage(context.getPackageName());
            intent.setClassName(context, "com.taobao.accs.data.MsgDistributeService");
            intent.putExtra("command", 103);
            intent.putExtra(Constants.KEY_HOST, session.getHost());
            intent.putExtra(Constants.KEY_CENTER_HOST, true);
            boolean zIsAvailable = session.isAvailable();
            if (!zIsAvailable) {
                intent.putExtra(Constants.KEY_ERROR_CODE, i);
                intent.putExtra(Constants.KEY_ERROR_DETAIL, str);
            }
            intent.putExtra(Constants.KEY_CONNECT_AVAILABLE, zIsAvailable);
            intent.putExtra(Constants.KEY_TYPE_INAPP, true);
            if (Build.VERSION.SDK_INT >= 26) {
                context.bindService(intent, new ServiceConnectionC0353h(this, intent, context), 1);
            } else {
                context.startService(intent);
            }
        } catch (Throwable th) {
            ALog.m338e("awcn.SessionRequest", "sendConnectInfoToAccsByService", null, th, new Object[0]);
        }
    }

    /* renamed from: a */
    public void m57a(Session session, int i, int i2) {
        if (256 != i || i2 == -2613 || i2 == -2601) {
            return;
        }
        AlarmObject alarmObject = new AlarmObject();
        alarmObject.module = "networkPrefer";
        alarmObject.modulePoint = "policy";
        alarmObject.arg = this.f141i;
        alarmObject.errorCode = String.valueOf(i2);
        alarmObject.isSuccess = false;
        AppMonitor.getInstance().commitAlarm(alarmObject);
        SessionConnStat sessionConnStat = this.f140h;
        sessionConnStat.ret = 0;
        sessionConnStat.appendErrorTrace(i2);
        this.f140h.errorCode = String.valueOf(i2);
        this.f140h.totalTime = System.currentTimeMillis() - this.f140h.start;
        this.f140h.syncValueFromSession(session);
        AppMonitor.getInstance().commitStat(this.f140h);
    }

    /* renamed from: a */
    private List<IConnStrategy> m46a(int i, String str) {
        HttpUrl httpUrl;
        List<IConnStrategy> connStrategyListByHost = Collections.EMPTY_LIST;
        try {
            httpUrl = HttpUrl.parse(m53a());
        } catch (Throwable th) {
            ALog.m338e("awcn.SessionRequest", "", str, th, new Object[0]);
        }
        if (httpUrl == null) {
            return Collections.EMPTY_LIST;
        }
        connStrategyListByHost = StrategyCenter.getInstance().getConnStrategyListByHost(httpUrl.host());
        if (!connStrategyListByHost.isEmpty()) {
            boolean zEqualsIgnoreCase = HttpConstant.HTTPS.equalsIgnoreCase(httpUrl.scheme());
            boolean zM350b = C0422c.m350b();
            ListIterator<IConnStrategy> listIterator = connStrategyListByHost.listIterator();
            while (listIterator.hasNext()) {
                IConnStrategy next = listIterator.next();
                ConnType connTypeValueOf = ConnType.valueOf(next.getProtocol());
                if (connTypeValueOf != null) {
                    if (connTypeValueOf.isSSL() == zEqualsIgnoreCase && (i == C0348c.f257c || connTypeValueOf.getType() == i)) {
                        if (zM350b && C0413c.m332b(next.getIp())) {
                            listIterator.remove();
                        }
                    }
                    listIterator.remove();
                }
            }
        }
        if (ALog.isPrintLog(1)) {
            ALog.m337d("awcn.SessionRequest", "[getAvailStrategy]", str, "strategies", connStrategyListByHost);
        }
        return connStrategyListByHost;
    }

    /* renamed from: a */
    private List<C0346a> m47a(List<IConnStrategy> list, String str) {
        if (list.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            IConnStrategy iConnStrategy = list.get(i2);
            int retryTimes = iConnStrategy.getRetryTimes();
            for (int i3 = 0; i3 <= retryTimes; i3++) {
                i++;
                C0346a c0346a = new C0346a(m53a(), str + "_" + i, iConnStrategy);
                c0346a.f248b = i3;
                c0346a.f249c = retryTimes;
                arrayList.add(c0346a);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m48a(Context context, C0346a c0346a, IConnCb iConnCb, String str) {
        ConnType connTypeM134c = c0346a.m134c();
        if (context != null && !connTypeM134c.isHttpType()) {
            TnetSpdySession tnetSpdySession = new TnetSpdySession(context, c0346a);
            tnetSpdySession.initConfig(this.f133a.f125d);
            tnetSpdySession.initSessionInfo(this.f135c);
            tnetSpdySession.setTnetPublicKey(this.f133a.f128g.m78c(this.f142j));
            this.f137e = tnetSpdySession;
        } else {
            this.f137e = new C0378d(context, c0346a);
        }
        ALog.m340i("awcn.SessionRequest", "create connection...", str, HttpConstant.HOST, m53a(), "Type", c0346a.m134c(), "IP", c0346a.m132a(), "Port", Integer.valueOf(c0346a.m133b()), "heartbeat", Integer.valueOf(c0346a.m138g()), "session", this.f137e);
        m49a(this.f137e, iConnCb, System.currentTimeMillis());
        this.f137e.connect();
        SessionConnStat sessionConnStat = this.f140h;
        sessionConnStat.retryTimes++;
        sessionConnStat.startConnect = System.currentTimeMillis();
        SessionConnStat sessionConnStat2 = this.f140h;
        if (sessionConnStat2.retryTimes == 0) {
            sessionConnStat2.putExtra("firstIp", c0346a.m132a());
        }
    }

    /* renamed from: a */
    private void m49a(Session session, IConnCb iConnCb, long j) {
        if (iConnCb == null) {
            return;
        }
        session.registerEventcb(EventType.ALL, new C0349f(this, iConnCb, j));
        session.registerEventcb(BidiFormatter.DirectionalityEstimator.DIR_TYPE_CACHE_SIZE, new C0352g(this, session));
    }

    /* renamed from: a */
    public void m59a(String str) {
        ALog.m337d("awcn.SessionRequest", "reCreateSession", str, Constants.KEY_HOST, this.f141i);
        m63b(true);
    }

    /* renamed from: a */
    public void m54a(long j) {
        ALog.m337d("awcn.SessionRequest", "[await]", null, "timeoutMs", Long.valueOf(j));
        if (j <= 0) {
            return;
        }
        synchronized (this.f144l) {
            long jCurrentTimeMillis = System.currentTimeMillis() + j;
            while (this.f136d) {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (jCurrentTimeMillis2 >= jCurrentTimeMillis) {
                    break;
                } else {
                    this.f144l.wait(jCurrentTimeMillis - jCurrentTimeMillis2);
                }
            }
            if (this.f136d) {
                throw new TimeoutException();
            }
        }
    }

    /* renamed from: a */
    public void m58a(Session session, int i, String str) {
        if (AwcnConfig.isSendConnectInfoByService()) {
            m51b(session, i, str);
        }
        m52c(session, i, str);
    }
}
