package com.taobao.accs.flowcontrol;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.taobao.accs.utl.ALog;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class FlowControl {
    public static final int DELAY_MAX = -1;
    public static final int DELAY_MAX_BRUSH = -1000;
    public static final int HIGH_FLOW_CTRL = 2;
    public static final int HIGH_FLOW_CTRL_BRUSH = 3;
    public static final int LOW_FLOW_CTRL = 1;
    public static final int NO_FLOW_CTRL = 0;
    public static final String SERVICE_ALL = "ALL";
    public static final String SERVICE_ALL_BRUSH = "ALL_BRUSH";
    public static final int STATUS_FLOW_CTRL_ALL = 420;
    public static final int STATUS_FLOW_CTRL_BRUSH = 422;
    public static final int STATUS_FLOW_CTRL_CUR = 421;

    /* renamed from: a */
    public Context f6166a;

    /* renamed from: b */
    public FlowCtrlInfoHolder f6167b;

    /* compiled from: Taobao */
    public static class FlowControlInfo implements Serializable {
        public static final long serialVersionUID = -2259991484877844919L;
        public String bizId;
        public long delayTime;
        public long expireTime;
        public String serviceId;
        public long startTime;
        public int status;

        public FlowControlInfo(String str, String str2, int i, long j, long j2, long j3) {
            this.serviceId = str;
            this.bizId = str2;
            this.status = i;
            this.delayTime = j;
            this.expireTime = j2 <= 0 ? 0L : j2;
            this.startTime = j3 <= 0 ? 0L : j3;
        }

        public boolean isExpired() {
            return System.currentTimeMillis() - (this.startTime + this.expireTime) > 0;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("flow ctrl serviceId:");
            stringBuffer.append(this.serviceId);
            stringBuffer.append(" bizId:");
            stringBuffer.append(this.bizId);
            stringBuffer.append(" status:");
            stringBuffer.append(this.status);
            stringBuffer.append(" delayTime:");
            stringBuffer.append(this.delayTime);
            stringBuffer.append(" startTime:");
            stringBuffer.append(this.startTime);
            stringBuffer.append(" expireTime:");
            stringBuffer.append(this.expireTime);
            return stringBuffer.toString();
        }
    }

    /* compiled from: Taobao */
    public static class FlowCtrlInfoHolder implements Serializable {
        public static final long serialVersionUID = 6307563052429742524L;
        public Map<String, FlowControlInfo> flowCtrlMap = null;

        public FlowControlInfo get(String str, String str2) {
            if (this.flowCtrlMap == null) {
                return null;
            }
            if (!TextUtils.isEmpty(str2)) {
                str = C0948f6.m1761f(str, "_", str2);
            }
            return this.flowCtrlMap.get(str);
        }

        public void put(String str, String str2, FlowControlInfo flowControlInfo) {
            if (!TextUtils.isEmpty(str2)) {
                str = C0948f6.m1761f(str, "_", str2);
            }
            if (this.flowCtrlMap == null) {
                this.flowCtrlMap = new HashMap();
            }
            this.flowCtrlMap.put(str, flowControlInfo);
        }
    }

    public FlowControl(Context context) {
        this.f6166a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00f0 A[Catch: all -> 0x0119, TryCatch #3 {all -> 0x0119, blocks: (B:32:0x009e, B:42:0x00f0, B:43:0x010c, B:47:0x0113, B:36:0x00b0, B:38:0x00ce, B:40:0x00d4), top: B:79:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0135 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0137  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m5584a(java.util.Map<java.lang.Integer, java.lang.String> r22, java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.accs.flowcontrol.FlowControl.m5584a(java.util.Map, java.lang.String):int");
    }

    /* renamed from: a */
    private boolean m5583a(long j, long j2) {
        if (j != 0 && j2 > 0) {
            return true;
        }
        ALog.m5728e("FlowControl", "error flow ctrl info", new Object[0]);
        return false;
    }

    /* renamed from: a */
    public long m5585a(String str, String str2) {
        long j;
        long j2;
        long j3;
        FlowCtrlInfoHolder flowCtrlInfoHolder = this.f6167b;
        long j4 = 0;
        if (flowCtrlInfoHolder == null || flowCtrlInfoHolder.flowCtrlMap == null || TextUtils.isEmpty(str)) {
            return 0L;
        }
        synchronized (this) {
            FlowControlInfo flowControlInfo = this.f6167b.get(SERVICE_ALL, null);
            FlowControlInfo flowControlInfo2 = this.f6167b.get(SERVICE_ALL_BRUSH, null);
            FlowControlInfo flowControlInfo3 = this.f6167b.get(str, null);
            FlowControlInfo flowControlInfo4 = this.f6167b.get(str, str2);
            j = (flowControlInfo == null || flowControlInfo.isExpired()) ? 0L : flowControlInfo.delayTime;
            long j5 = (flowControlInfo2 == null || flowControlInfo2.isExpired()) ? 0L : flowControlInfo2.delayTime;
            j2 = (flowControlInfo3 == null || flowControlInfo3.isExpired()) ? 0L : flowControlInfo3.delayTime;
            if (flowControlInfo4 != null && !flowControlInfo4.isExpired()) {
                j4 = flowControlInfo4.delayTime;
            }
            j3 = -1;
            if (j != -1 && j4 != -1 && j2 != -1) {
                if (j5 == -1) {
                    j3 = -1000;
                } else {
                    j3 = j > j4 ? j : j4;
                    if (j3 <= j2) {
                        j3 = j2;
                    }
                }
            }
            if ((flowControlInfo4 != null && flowControlInfo4.isExpired()) || (flowControlInfo != null && flowControlInfo.isExpired())) {
                m5582a();
            }
        }
        StringBuilder sbM1770o = C0948f6.m1770o("getFlowCtrlDelay service ", str, " biz ", str2, " result:");
        sbM1770o.append(j3);
        sbM1770o.append(" global:");
        sbM1770o.append(j);
        sbM1770o.append(" serviceDelay:");
        sbM1770o.append(j2);
        sbM1770o.append(" bidDelay:");
        sbM1770o.append(j4);
        ALog.m5728e("FlowControl", sbM1770o.toString(), new Object[0]);
        return j3;
    }

    /* renamed from: a */
    private void m5582a() {
        FlowCtrlInfoHolder flowCtrlInfoHolder = this.f6167b;
        if (flowCtrlInfoHolder == null || flowCtrlInfoHolder.flowCtrlMap == null) {
            return;
        }
        synchronized (this) {
            Iterator<Map.Entry<String, FlowControlInfo>> it = this.f6167b.flowCtrlMap.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue().isExpired()) {
                    it.remove();
                }
            }
        }
    }
}
