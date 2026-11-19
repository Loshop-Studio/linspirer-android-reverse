package anet.channel.flow;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class NetworkAnalysis {
    public static volatile INetworkAnalysis networkAnalysis = new AnalysisProxy(null);

    /* compiled from: Taobao */
    public static class AnalysisProxy implements INetworkAnalysis {
        public INetworkAnalysis networkAnalysis;

        public AnalysisProxy(INetworkAnalysis iNetworkAnalysis) {
            this.networkAnalysis = null;
            this.networkAnalysis = iNetworkAnalysis;
        }

        @Override // anet.channel.flow.INetworkAnalysis
        public void commitFlow(FlowStat flowStat) {
            INetworkAnalysis iNetworkAnalysis = this.networkAnalysis;
            if (iNetworkAnalysis != null) {
                iNetworkAnalysis.commitFlow(flowStat);
            }
        }
    }

    public static INetworkAnalysis getInstance() {
        return networkAnalysis;
    }

    public static void setInstance(INetworkAnalysis iNetworkAnalysis) {
        networkAnalysis = new AnalysisProxy(iNetworkAnalysis);
    }
}
