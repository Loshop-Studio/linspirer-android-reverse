package anet.channel.strategy;

import android.content.Context;
import android.text.TextUtils;
import anet.channel.AwcnConfig;
import anet.channel.strategy.StrategyHostMapping;
import anet.channel.strategy.AmdcStrategyResultParser;
import anet.channel.strategy.dispatch.AmdcRuntimeInfo;
import anet.channel.strategy.dispatch.DispatchEvent;
import anet.channel.strategy.dispatch.HttpDispatcher;
import anet.channel.strategy.utils.AmdcScheduledExecutor;
import anet.channel.strategy.utils.AmdcStringEncoding;
import anet.channel.util.ALog;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpUrl;
import anet.channel.util.StringUtils;
import com.taobao.accs.common.Constants;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.g */
/* loaded from: classes.dex */
public class NetworkStrategyCenter implements IStrategyInstance, HttpDispatcher.IDispatchEventListener {

    /* renamed from: a */
    public boolean f509a = false;

    /* renamed from: b */
    public StrategyInfoHolder f510b = null;

    /* renamed from: c */
    public long f511c = 0;

    /* renamed from: d */
    public CopyOnWriteArraySet<IStrategyListener> f512d = new CopyOnWriteArraySet<>();

    /* renamed from: e */
    public IStrategyFilter f513e = new Http3StrategyFilter(this);

    @Override // anet.channel.strategy.IStrategyInstance
    public void forceRefreshStrategy(String str) {
        if (m310a() || TextUtils.isEmpty(str)) {
            return;
        }
        ALog.m340i("awcn.StrategyCenter", "force refresh strategy", null, Constants.KEY_HOST, str);
        this.f510b.m272d().m284a(str, true);
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public String getCNameByHost(String str) {
        if (m310a() || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f510b.m272d().getCnameByHost(str);
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public String getClientIp() {
        return m310a() ? "" : this.f510b.m272d().f475b;
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public List<IConnStrategy> getConnStrategyListByHost(String str) {
        return getConnStrategyListByHost(str, this.f513e);
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public String getFormalizeUrl(String str) {
        HttpUrl httpUrl = HttpUrl.parse(str);
        if (httpUrl == null) {
            ALog.m339e("awcn.StrategyCenter", "url is invalid.", null, "URL", str);
            return null;
        }
        String strUrlString = httpUrl.urlString();
        try {
            String schemeByHost = getSchemeByHost(httpUrl.host(), httpUrl.scheme());
            if (!schemeByHost.equalsIgnoreCase(httpUrl.scheme())) {
                strUrlString = StringUtils.concatString(schemeByHost, ":", str.substring(str.indexOf("//")));
            }
            if (ALog.isPrintLog(1)) {
                ALog.m337d("awcn.StrategyCenter", "", null, "raw", StringUtils.simplifyString(str, 128), "ret", StringUtils.simplifyString(strUrlString, 128));
            }
        } catch (Exception e) {
            ALog.m338e("awcn.StrategyCenter", "getFormalizeUrl failed", null, e, "raw", str);
        }
        return strUrlString;
    }

    @Override // anet.channel.strategy.IStrategyInstance
    @Deprecated
    public String getSchemeByHost(String str) {
        return getSchemeByHost(str, null);
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public String getUnitByHost(String str) {
        if (m310a()) {
            return null;
        }
        return this.f510b.f464b.m261b(str);
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public synchronized void initialize(Context context) {
        if (this.f509a || context == null) {
            return;
        }
        try {
            ALog.m340i("awcn.StrategyCenter", "StrategyCenter initialize started.", null, new Object[0]);
            AmdcRuntimeInfo.setContext(context);
            StrategyFileStore.m318a(context);
            HttpDispatcher.getInstance().addListener(this);
            this.f510b = StrategyInfoHolder.m263a();
            this.f509a = true;
            ALog.m340i("awcn.StrategyCenter", "StrategyCenter initialize finished.", null, new Object[0]);
        } catch (Exception e) {
            ALog.m338e("awcn.StrategyCenter", "StrategyCenter initialize failed.", null, e, new Object[0]);
        }
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public void notifyConnEvent(String str, IConnStrategy iConnStrategy, ConnEvent connEvent) {
        if (m310a() || iConnStrategy == null || !(iConnStrategy instanceof IPConnStrategy)) {
            return;
        }
        IPConnStrategy iPConnStrategy = (IPConnStrategy) iConnStrategy;
        if (iPConnStrategy.f449b == 1) {
            this.f510b.f465c.m289a(str, iConnStrategy, connEvent);
        } else if (iPConnStrategy.f449b == 0) {
            this.f510b.m272d().m283a(str, iConnStrategy, connEvent);
        }
    }

    @Override // anet.channel.strategy.dispatch.HttpDispatcher.IDispatchEventListener
    public void onEvent(DispatchEvent dispatchEvent) {
        if (dispatchEvent.eventType != 1 || this.f510b == null) {
            return;
        }
        ALog.m337d("awcn.StrategyCenter", "receive amdc event", null, new Object[0]);
        AmdcStrategyResultParser.d dVarM314a = AmdcStrategyResultParser.m314a((JSONObject) dispatchEvent.extraObject);
        if (dVarM314a == null) {
            return;
        }
        this.f510b.m268a(dVarM314a);
        saveData();
        Iterator<IStrategyListener> it = this.f512d.iterator();
        while (it.hasNext()) {
            try {
                it.next().onStrategyUpdated(dVarM314a);
            } catch (Exception e) {
                ALog.m338e("awcn.StrategyCenter", "onStrategyUpdated failed", null, e, new Object[0]);
            }
        }
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public void registerListener(IStrategyListener iStrategyListener) {
        ALog.m339e("awcn.StrategyCenter", "registerListener", null, "listener", this.f512d);
        if (iStrategyListener != null) {
            this.f512d.add(iStrategyListener);
        }
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public synchronized void saveData() {
        ALog.m340i("awcn.StrategyCenter", "saveData", null, new Object[0]);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f511c > 30000) {
            this.f511c = jCurrentTimeMillis;
            AmdcScheduledExecutor.m327a(new StrategyRefreshTask(this), 500L);
        }
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public synchronized void switchEnv() {
        StrategyFileStore.m317a();
        HttpDispatcher.getInstance().switchENV();
        if (this.f510b != null) {
            this.f510b.m270b();
            this.f510b = StrategyInfoHolder.m263a();
        }
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public void unregisterListener(IStrategyListener iStrategyListener) {
        ALog.m339e("awcn.StrategyCenter", "unregisterListener", null, "listener", this.f512d);
        this.f512d.remove(iStrategyListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m310a() {
        if (this.f510b != null) {
            return false;
        }
        ALog.m342w("StrategyCenter not initialized", null, "isInitialized", Boolean.valueOf(this.f509a));
        return true;
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public List<IConnStrategy> getConnStrategyListByHost(String str, IStrategyFilter iStrategyFilter) {
        if (TextUtils.isEmpty(str) || m310a()) {
            return Collections.EMPTY_LIST;
        }
        String cnameByHost = this.f510b.m272d().getCnameByHost(str);
        if (!TextUtils.isEmpty(cnameByHost)) {
            str = cnameByHost;
        }
        List listQueryByHost = this.f510b.m272d().queryByHost(str);
        if (listQueryByHost.isEmpty()) {
            listQueryByHost = this.f510b.f465c.m287a(str);
        }
        if (listQueryByHost.isEmpty() || iStrategyFilter == null) {
            ALog.m337d("getConnStrategyListByHost", null, Constants.KEY_HOST, str, "result", listQueryByHost);
            return listQueryByHost;
        }
        boolean z = !AwcnConfig.isIpv6Enable() || (AwcnConfig.isIpv6BlackListEnable() && this.f510b.m272d().m285a(str, AwcnConfig.getIpv6BlackListTtl()));
        ListIterator<IConnStrategy> listIterator = listQueryByHost.listIterator();
        while (listIterator.hasNext()) {
            IConnStrategy next = listIterator.next();
            if (!iStrategyFilter.accept(next)) {
                listIterator.remove();
            } else if (z && AmdcStringEncoding.m332b(next.getIp())) {
                listIterator.remove();
            }
        }
        if (ALog.isPrintLog(1)) {
            ALog.m337d("getConnStrategyListByHost", null, Constants.KEY_HOST, str, "result", listQueryByHost);
        }
        return listQueryByHost;
    }

    @Override // anet.channel.strategy.IStrategyInstance
    public String getSchemeByHost(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (m310a()) {
            return str2;
        }
        String strM258a = this.f510b.f464b.m258a(str);
        if (strM258a != null || TextUtils.isEmpty(str2)) {
            str2 = strM258a;
        }
        if (str2 == null && (str2 = StrategyHostMapping.a.f488a.m291a(str)) == null) {
            str2 = HttpConstant.HTTP;
        }
        ALog.m337d("awcn.StrategyCenter", "getSchemeByHost", null, Constants.KEY_HOST, str, "scheme", str2);
        return str2;
    }
}
