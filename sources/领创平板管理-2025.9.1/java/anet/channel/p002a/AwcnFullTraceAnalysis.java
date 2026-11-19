package anet.channel.p002a;

import android.text.TextUtils;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.fulltrace.FullTraceSceneInfo;
import anet.channel.fulltrace.IFullTraceAnalysis;
import anet.channel.statist.RequestStatistic;
import anet.channel.util.ALog;
import com.taobao.analysis.abtest.ABTestCenter;
import com.taobao.analysis.fulltrace.FullTraceAnalysis;
import com.taobao.analysis.fulltrace.RequestInfo;
import com.taobao.analysis.scene.SceneIdentifier;

/* compiled from: Taobao */
/* renamed from: anet.channel.a.a */
/* loaded from: classes.dex */
public class AwcnFullTraceAnalysis implements IFullTraceAnalysis {

    /* renamed from: a */
    public boolean f157a;

    public AwcnFullTraceAnalysis() throws ClassNotFoundException {
        try {
            Class.forName("com.taobao.analysis.fulltrace.FullTraceAnalysis");
            SceneIdentifier.setContext(GlobalAppRuntimeInfo.getContext());
            this.f157a = true;
        } catch (Exception unused) {
            this.f157a = false;
            ALog.m339e("awcn.DefaultFullTraceAnalysis", "not supoort FullTraceAnalysis", null, new Object[0]);
        }
    }

    @Override // anet.channel.fulltrace.IFullTraceAnalysis
    public void commitRequest(String str, RequestStatistic requestStatistic) {
        if (!this.f157a || requestStatistic == null || TextUtils.isEmpty(str)) {
            return;
        }
        RequestInfo requestInfo = new RequestInfo();
        requestInfo.host = requestStatistic.host;
        requestInfo.bizId = requestStatistic.bizId;
        requestInfo.url = requestStatistic.url;
        requestInfo.retryTimes = requestStatistic.retryTimes;
        requestInfo.netType = requestStatistic.netType;
        requestInfo.protocolType = requestStatistic.protocolType;
        requestInfo.ret = requestStatistic.ret;
        requestInfo.isCbMain = false;
        requestInfo.isReqMain = requestStatistic.isReqMain;
        requestInfo.isReqSync = requestStatistic.isReqSync;
        requestInfo.netErrorCode = String.valueOf(requestStatistic.statusCode);
        requestInfo.pTraceId = requestStatistic.pTraceId;
        requestInfo.netReqStart = requestStatistic.netReqStart;
        requestInfo.netReqServiceBindEnd = requestStatistic.reqServiceTransmissionEnd;
        requestInfo.netReqProcessStart = requestStatistic.reqStart;
        requestInfo.netReqSendStart = requestStatistic.sendStart;
        requestInfo.netRspRecvEnd = requestStatistic.rspEnd;
        requestInfo.netRspCbDispatch = requestStatistic.rspCbDispatch;
        requestInfo.netRspCbStart = requestStatistic.rspCbStart;
        requestInfo.netRspCbEnd = requestStatistic.rspCbEnd;
        requestInfo.reqDeflateSize = requestStatistic.reqHeadDeflateSize + requestStatistic.reqBodyDeflateSize;
        requestInfo.reqInflateSize = requestStatistic.reqHeadInflateSize + requestStatistic.reqBodyInflateSize;
        requestInfo.rspDeflateSize = requestStatistic.rspHeadDeflateSize + requestStatistic.rspBodyDeflateSize;
        requestInfo.rspInflateSize = requestStatistic.rspHeadInflateSize + requestStatistic.rspBodyInflateSize;
        requestInfo.serverRT = requestStatistic.serverRT;
        requestInfo.sendDataTime = requestStatistic.sendDataTime;
        requestInfo.firstDataTime = requestStatistic.firstDataTime;
        requestInfo.recvDataTime = requestStatistic.recDataTime;
        FullTraceAnalysis.getInstance().commitRequest(str, "network", requestInfo);
    }

    @Override // anet.channel.fulltrace.IFullTraceAnalysis
    public String createRequest() {
        if (this.f157a) {
            return FullTraceAnalysis.getInstance().createRequest("network");
        }
        return null;
    }

    @Override // anet.channel.fulltrace.IFullTraceAnalysis
    public FullTraceSceneInfo getSceneInfo() {
        if (!this.f157a) {
            return null;
        }
        FullTraceSceneInfo c0351b = new FullTraceSceneInfo();
        c0351b.f265b = SceneIdentifier.isUrlLaunch();
        c0351b.f266c = SceneIdentifier.getAppLaunchTime();
        c0351b.f267d = SceneIdentifier.getLastLaunchTime();
        c0351b.f268e = SceneIdentifier.getDeviceLevel();
        c0351b.f264a = SceneIdentifier.getStartType();
        c0351b.f269f = SceneIdentifier.getBucketInfo();
        c0351b.f270g = ABTestCenter.getUTABTestBucketId("networksdk");
        return c0351b;
    }
}
