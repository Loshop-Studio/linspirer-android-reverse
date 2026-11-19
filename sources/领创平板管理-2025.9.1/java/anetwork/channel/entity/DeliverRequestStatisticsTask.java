package anetwork.channel.entity;

import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.detect.AwcnNetworkDetector;
import anet.channel.fulltrace.FullTraceAnalysisRegistry;
import anet.channel.fulltrace.FullTraceSceneInfo;
import anet.channel.statist.RequestMonitor;
import anet.channel.statist.RequestStatistic;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.utils.AmdcStringEncoding;
import anet.channel.util.ALog;
import anetwork.channel.aidl.DefaultFinishEvent;
import anetwork.channel.aidl.ParcelableNetworkListener;
import anetwork.channel.config.NetworkConfigCenter;
import anetwork.channel.stat.NetworkStat;
import anetwork.channel.util.RequestConstant;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.entity.f */
/* loaded from: classes.dex */
public class DeliverRequestStatisticsTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ DefaultFinishEvent f733a;

    /* renamed from: b */
    public final /* synthetic */ ParcelableNetworkListener f734b;

    /* renamed from: c */
    public final /* synthetic */ NetworkListenerDispatcher f735c;

    public DeliverRequestStatisticsTask(NetworkListenerDispatcher c0454c, DefaultFinishEvent defaultFinishEvent, ParcelableNetworkListener parcelableNetworkListener) {
        this.f735c = c0454c;
        this.f733a = defaultFinishEvent;
        this.f734b = parcelableNetworkListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        DefaultFinishEvent defaultFinishEvent = this.f733a;
        String strOptString = null;
        if (defaultFinishEvent != null) {
            defaultFinishEvent.setContext(null);
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            RequestStatistic requestStatistic = this.f733a.f609rs;
            if (requestStatistic != null) {
                requestStatistic.rspCbStart = jCurrentTimeMillis;
                requestStatistic.lastProcessTime = jCurrentTimeMillis - requestStatistic.rspEnd;
                requestStatistic.oneWayTime = (jCurrentTimeMillis - requestStatistic.start) + requestStatistic.retryCostTime;
                this.f733a.getStatisticData().filledBy(requestStatistic);
            }
            this.f734b.onFinished(this.f733a);
            if (requestStatistic != null) {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                requestStatistic.rspCbEnd = jCurrentTimeMillis2;
                requestStatistic.callbackTime = jCurrentTimeMillis2 - jCurrentTimeMillis;
                FullTraceAnalysisRegistry.m140a().commitRequest(requestStatistic.traceId, requestStatistic);
            }
            if (this.f735c.f721c != null) {
                this.f735c.f721c.writeEnd();
            }
            if (requestStatistic != null) {
                ALog.m339e("anet.Repeater", "[traceId:" + requestStatistic.traceId + "]end, " + requestStatistic.toString(), this.f735c.f720b, new Object[0]);
                CopyOnWriteArrayList<String> bucketInfo = GlobalAppRuntimeInfo.getBucketInfo();
                if (bucketInfo != null) {
                    int size = bucketInfo.size();
                    for (int i = 0; i < size - 1; i += 2) {
                        requestStatistic.putExtra(bucketInfo.get(i), bucketInfo.get(i + 1));
                    }
                }
                if (GlobalAppRuntimeInfo.isAppBackground()) {
                    requestStatistic.putExtra("restrictBg", Integer.valueOf(NetworkStatusHelper.getRestrictBackgroundStatus()));
                }
                FullTraceSceneInfo sceneInfo = FullTraceAnalysisRegistry.m140a().getSceneInfo();
                if (sceneInfo != null) {
                    ALog.m340i("anet.Repeater", sceneInfo.toString(), this.f735c.f720b, new Object[0]);
                    requestStatistic.sinceInitTime = requestStatistic.start - sceneInfo.f266c;
                    requestStatistic.startType = sceneInfo.f264a;
                    if (sceneInfo.f264a != 1) {
                        requestStatistic.sinceLastLaunchTime = sceneInfo.f266c - sceneInfo.f267d;
                    }
                    requestStatistic.deviceLevel = sceneInfo.f268e;
                    requestStatistic.isFromExternal = sceneInfo.f265b ? 1 : 0;
                    requestStatistic.speedBucket = sceneInfo.f269f;
                    requestStatistic.abTestBucket = sceneInfo.f270g;
                }
                requestStatistic.serializeTransferTime = requestStatistic.reqServiceTransmissionEnd - requestStatistic.netReqStart;
                requestStatistic.userInfo = this.f735c.f723e.m426a(RequestConstant.REQUEST_USER_INFO);
                AppMonitor.getInstance().commitStat(requestStatistic);
                if (NetworkConfigCenter.isRequestInMonitorList(requestStatistic)) {
                    AppMonitor.getInstance().commitStat(new RequestMonitor(requestStatistic));
                }
                try {
                    String str = requestStatistic.f414ip;
                    if (requestStatistic.extra != null) {
                        strOptString = requestStatistic.extra.optString("firstIp");
                    }
                    if (AmdcStringEncoding.m332b(str) || AmdcStringEncoding.m332b(strOptString)) {
                        AppMonitor.getInstance().commitStat(new RequestMonitor(requestStatistic));
                    }
                } catch (Exception unused) {
                }
                NetworkStat.getNetworkStat().put(this.f735c.f723e.m434g(), this.f733a.getStatisticData());
                AwcnNetworkDetector.m107a(requestStatistic);
            }
        } catch (Throwable unused2) {
        }
    }
}
