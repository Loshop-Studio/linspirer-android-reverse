package anet.channel.flow;

import anet.channel.statist.RequestStatistic;
import com.huawei.hem.C0948f6;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class FlowStat {
    public long downstream;
    public String protocoltype;
    public String refer;
    public String req_identifier;
    public long upstream;

    public FlowStat() {
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("FlowStat{refer='");
        C0948f6.m1781z(sbM1765j, this.refer, '\'', ", protocoltype='");
        C0948f6.m1781z(sbM1765j, this.protocoltype, '\'', ", req_identifier='");
        C0948f6.m1781z(sbM1765j, this.req_identifier, '\'', ", upstream=");
        sbM1765j.append(this.upstream);
        sbM1765j.append(", downstream=");
        sbM1765j.append(this.downstream);
        sbM1765j.append('}');
        return sbM1765j.toString();
    }

    public FlowStat(String str, RequestStatistic requestStatistic) {
        this.refer = str;
        this.protocoltype = requestStatistic.protocolType;
        this.req_identifier = requestStatistic.url;
        this.upstream = requestStatistic.sendDataSize;
        this.downstream = requestStatistic.recDataSize;
    }
}
