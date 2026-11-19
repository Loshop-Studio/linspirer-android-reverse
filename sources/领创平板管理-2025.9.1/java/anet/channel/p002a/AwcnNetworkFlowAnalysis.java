package anet.channel.p002a;

import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.flow.FlowStat;
import anet.channel.flow.INetworkAnalysis;
import anet.channel.util.ALog;
import com.taobao.analysis.FlowCenter;

/* compiled from: Taobao */
/* renamed from: anet.channel.a.b */
/* loaded from: classes.dex */
public class AwcnNetworkFlowAnalysis implements INetworkAnalysis {

    /* renamed from: a */
    public boolean f158a;

    public AwcnNetworkFlowAnalysis() throws ClassNotFoundException {
        try {
            Class.forName("com.taobao.analysis.FlowCenter");
            this.f158a = true;
        } catch (Exception unused) {
            this.f158a = false;
            ALog.m339e("DefaultNetworkAnalysis", "no NWNetworkAnalysisSDK sdk", null, new Object[0]);
        }
    }

    @Override // anet.channel.flow.INetworkAnalysis
    public void commitFlow(FlowStat flowStat) {
        if (this.f158a) {
            FlowCenter.getInstance().commitFlow(GlobalAppRuntimeInfo.getContext(), flowStat.refer, flowStat.protocoltype, flowStat.req_identifier, flowStat.upstream, flowStat.downstream);
        }
    }
}
