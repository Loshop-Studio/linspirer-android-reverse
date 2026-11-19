package anet.channel.detect;

import anet.channel.AwcnConfig;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.RequestCb;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.entity.C0346a;
import anet.channel.entity.ConnType;
import anet.channel.request.Request;
import anet.channel.session.C0376b;
import anet.channel.session.TnetSpdySession;
import anet.channel.statist.HorseRaceStat;
import anet.channel.strategy.C0407l;
import anet.channel.strategy.ConnProtocol;
import anet.channel.strategy.IConnStrategy;
import anet.channel.strategy.StrategyCenter;
import anet.channel.strategy.utils.C0413c;
import anet.channel.util.ALog;
import anet.channel.util.AppLifecycle;
import anet.channel.util.C0429j;
import anet.channel.util.ErrorConstant;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpUrl;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.common.Constants;
import java.io.IOException;
import java.net.Socket;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.android.agoo.common.AgooConstants;
import org.android.netutil.PingResponse;
import org.android.netutil.PingTask;
import org.json.JSONException;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.d */
/* loaded from: classes.dex */
public class C0327d {

    /* renamed from: a */
    public TreeMap<String, C0407l.c> f203a = new TreeMap<>();

    /* renamed from: b */
    public AtomicInteger f204b = new AtomicInteger(1);

    /* renamed from: c */
    private void m99c(String str, C0407l.e eVar) throws IOException {
        StringBuilder sbM1765j = CompilerOutline.m1765j("HR");
        sbM1765j.append(this.f204b.getAndIncrement());
        String string = sbM1765j.toString();
        ALog.m340i("anet.HorseRaceDetector", "startTcpTask", string, "ip", eVar.f551a, "port", Integer.valueOf(eVar.f552b.f521a));
        HorseRaceStat horseRaceStat = new HorseRaceStat(str, eVar);
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            Socket socket = new Socket(eVar.f551a, eVar.f552b.f521a);
            socket.setSoTimeout(eVar.f552b.f523c == 0 ? 10000 : eVar.f552b.f523c);
            ALog.m340i("anet.HorseRaceDetector", "socket connect success", string, new Object[0]);
            horseRaceStat.connRet = 1;
            horseRaceStat.connTime = System.currentTimeMillis() - jCurrentTimeMillis;
            socket.close();
        } catch (IOException unused) {
            horseRaceStat.connTime = System.currentTimeMillis() - jCurrentTimeMillis;
            horseRaceStat.connErrorCode = ErrorConstant.ERROR_IO_EXCEPTION;
        }
        AppMonitor.getInstance().commitStat(horseRaceStat);
    }

    /* renamed from: a */
    public void m100a() {
        ALog.m339e("anet.HorseRaceDetector", "network detect thread start", null, new Object[0]);
        while (true) {
            synchronized (this.f203a) {
                if (!AwcnConfig.isHorseRaceEnable()) {
                    this.f203a.clear();
                    return;
                }
                Map.Entry<String, C0407l.c> entryPollFirstEntry = this.f203a.pollFirstEntry();
                if (entryPollFirstEntry == null) {
                    return;
                }
                try {
                    m95a(entryPollFirstEntry.getValue());
                } catch (Exception e) {
                    ALog.m338e("anet.HorseRaceDetector", "start hr task failed", null, e, new Object[0]);
                }
            }
        }
    }

    /* renamed from: b */
    public void m101b() {
        StrategyCenter.getInstance().registerListener(new C0328e(this));
        AppLifecycle.registerLifecycleListener(new C0329f(this));
    }

    /* renamed from: b */
    private void m98b(String str, C0407l.e eVar) {
        ConnProtocol connProtocolValueOf = ConnProtocol.valueOf(eVar.f552b);
        ConnType connTypeValueOf = ConnType.valueOf(connProtocolValueOf);
        if (connTypeValueOf == null) {
            return;
        }
        ALog.m340i("anet.HorseRaceDetector", "startLongLinkTask", null, Constants.KEY_HOST, str, "ip", eVar.f551a, "port", Integer.valueOf(eVar.f552b.f521a), "protocol", connProtocolValueOf);
        String str2 = "HR" + this.f204b.getAndIncrement();
        TnetSpdySession tnetSpdySession = new TnetSpdySession(GlobalAppRuntimeInfo.getContext(), new C0346a(CompilerOutline.m1762g(new StringBuilder(), connTypeValueOf.isSSL() ? "https://" : "http://", str), str2, m94a(connProtocolValueOf, eVar)));
        HorseRaceStat horseRaceStat = new HorseRaceStat(str, eVar);
        long jCurrentTimeMillis = System.currentTimeMillis();
        tnetSpdySession.registerEventcb(257, new C0331h(this, horseRaceStat, jCurrentTimeMillis, str2, eVar, tnetSpdySession));
        tnetSpdySession.connect();
        synchronized (horseRaceStat) {
            try {
                horseRaceStat.wait(eVar.f552b.f523c == 0 ? 10000 : eVar.f552b.f523c);
                if (horseRaceStat.connTime == 0) {
                    horseRaceStat.connTime = System.currentTimeMillis() - jCurrentTimeMillis;
                }
                m96a(eVar.f551a, horseRaceStat);
                AppMonitor.getInstance().commitStat(horseRaceStat);
            } catch (InterruptedException unused) {
            }
        }
        tnetSpdySession.close(false);
    }

    /* renamed from: a */
    private void m95a(C0407l.c cVar) throws JSONException, IOException {
        C0407l.e[] eVarArr = cVar.f542b;
        if (eVarArr == null || eVarArr.length == 0) {
            return;
        }
        String str = cVar.f541a;
        int i = 0;
        while (true) {
            C0407l.e[] eVarArr2 = cVar.f542b;
            if (i >= eVarArr2.length) {
                return;
            }
            C0407l.e eVar = eVarArr2[i];
            String str2 = eVar.f552b.f522b;
            if (!str2.equalsIgnoreCase(HttpConstant.HTTP) && !str2.equalsIgnoreCase(HttpConstant.HTTPS)) {
                if (!str2.equalsIgnoreCase(ConnType.HTTP2) && !str2.equalsIgnoreCase(ConnType.SPDY) && !str2.equalsIgnoreCase(ConnType.QUIC)) {
                    if (str2.equalsIgnoreCase("tcp")) {
                        m99c(str, eVar);
                    }
                } else {
                    m98b(str, eVar);
                }
            } else {
                m97a(str, eVar);
            }
            i++;
        }
    }

    /* renamed from: a */
    private void m97a(String str, C0407l.e eVar) throws JSONException {
        HttpUrl httpUrl = HttpUrl.parse(eVar.f552b.f522b + HttpConstant.SCHEME_SPLIT + str + eVar.f553c);
        if (httpUrl == null) {
            return;
        }
        ALog.m340i("anet.HorseRaceDetector", "startShortLinkTask", null, AgooConstants.OPEN_URL, httpUrl);
        Request.Builder sslSocketFactory = new Request.Builder().setUrl(httpUrl).addHeader("Connection", "close").setConnectTimeout(eVar.f552b.f523c).setReadTimeout(eVar.f552b.f524d).setRedirectEnable(false).setSslSocketFactory(new C0429j(str));
        StringBuilder sbM1765j = CompilerOutline.m1765j("HR");
        sbM1765j.append(this.f204b.getAndIncrement());
        Request requestBuild = sslSocketFactory.setSeq(sbM1765j.toString()).build();
        requestBuild.setDnsOptimize(eVar.f551a, eVar.f552b.f521a);
        long jCurrentTimeMillis = System.currentTimeMillis();
        C0376b.a aVarM226a = C0376b.m226a(requestBuild, (RequestCb) null);
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        HorseRaceStat horseRaceStat = new HorseRaceStat(str, eVar);
        horseRaceStat.connTime = jCurrentTimeMillis2;
        int i = aVarM226a.f393a;
        if (i <= 0) {
            horseRaceStat.connErrorCode = i;
        } else {
            horseRaceStat.connRet = 1;
            horseRaceStat.reqRet = aVarM226a.f393a == 200 ? 1 : 0;
            horseRaceStat.reqErrorCode = aVarM226a.f393a;
            horseRaceStat.reqTime = horseRaceStat.connTime;
        }
        m96a(eVar.f551a, horseRaceStat);
        AppMonitor.getInstance().commitStat(horseRaceStat);
    }

    /* renamed from: a */
    public static IConnStrategy m94a(ConnProtocol connProtocol, C0407l.e eVar) {
        return new C0333j(eVar, connProtocol);
    }

    /* renamed from: a */
    private void m96a(String str, HorseRaceStat horseRaceStat) {
        if (AwcnConfig.isPing6Enable() && C0413c.m332b(str)) {
            try {
                PingResponse pingResponse = (PingResponse) new PingTask(str, 1000, 3, 0, 0).launch().get();
                if (pingResponse == null) {
                    return;
                }
                horseRaceStat.pingSuccessCount = pingResponse.getSuccessCnt();
                horseRaceStat.pingTimeoutCount = 3 - horseRaceStat.pingSuccessCount;
                horseRaceStat.localIP = pingResponse.getLocalIPStr();
            } catch (Throwable th) {
                ALog.m338e("anet.HorseRaceDetector", "ping6 task fail.", null, th, new Object[0]);
            }
        }
    }
}
