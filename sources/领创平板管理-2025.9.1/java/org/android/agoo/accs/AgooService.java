package org.android.agoo.accs;

import android.text.TextUtils;
import com.alibaba.sdk.android.error.ErrorCode;
import com.huawei.hem.C0948f6;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.base.TaoBaseService;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.AppMonitorAdapter;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.accs.utl.UTMini;
import com.taobao.agoo.C1999a;
import java.nio.charset.Charset;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.common.CallBack;
import org.android.agoo.common.Config;
import org.android.agoo.control.AgooFactory;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AgooService extends TaoBaseService {

    /* renamed from: a */
    public static CallBack f6454a;

    /* renamed from: b */
    public static CallBack f6455b;

    /* renamed from: c */
    public AgooFactory f6456c;

    /* renamed from: a */
    private String m5825a(Throwable th) {
        StringBuffer stringBuffer = new StringBuffer();
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace != null && stackTrace.length > 0) {
            for (StackTraceElement stackTraceElement : stackTrace) {
                stringBuffer.append(stackTraceElement.toString());
                stringBuffer.append("\n");
            }
        }
        return stringBuffer.toString();
    }

    @Override // com.taobao.accs.base.TaoBaseService, com.taobao.accs.base.AccsDataListenerV2
    public void onBind(String str, int i, String str2, TaoBaseService.ExtraInfo extraInfo) {
        if (ALog.isPrintLog(ALog.Level.E)) {
            ALog.m5728e("AgooService", "into--[onBind]:serviceId:" + str + ",errorCode=" + i, new Object[0]);
        }
        if (f6454a != null && "agooSend".equals(str)) {
            if (i == AccsErrorCode.SUCCESS.getCodeInt()) {
                f6454a.onSuccess();
            } else {
                ErrorCode errorCodeBuild = C1999a.m5798a(i, str2).build();
                f6454a.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
            }
        }
        f6454a = null;
    }

    @Override // com.taobao.accs.base.TaoBaseService, android.app.Service
    public void onCreate() {
        super.onCreate();
        ALog.m5726d("AgooService", "into--[onCreate]", new Object[0]);
        this.f6456c = AgooFactory.getInstance(getApplicationContext());
    }

    @Override // com.taobao.accs.base.AccsDataListener
    public void onData(String str, String str2, String str3, byte[] bArr, TaoBaseService.ExtraInfo extraInfo) {
        if (ALog.isPrintLog(ALog.Level.I)) {
            ALog.m5729i("AgooService", "into--[onData]:serviceId:" + str + ",dataId=" + str3, new Object[0]);
            StringBuilder sb = new StringBuilder();
            sb.append("push data:");
            sb.append(new String(bArr, Charset.forName("UTF-8")));
            ALog.m5726d("AgooService", sb.toString(), new Object[0]);
        }
        UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.agooService", AdapterUtilityImpl.getDeviceId(getApplicationContext()), str3);
        AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_TOTAL_ARRIVE, "total_arrive", 0.0d);
        try {
            this.f6456c.saveMsg(bArr);
            this.f6456c.msgRecevie(bArr, "accs", extraInfo);
        } catch (Throwable th) {
            UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.agooService", "onDataError", th);
            ALog.m5728e("AgooService", "into--[onData,dealMessage]:error:" + th, new Object[0]);
        }
    }

    @Override // com.taobao.accs.base.TaoBaseService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.taobao.accs.base.TaoBaseService, com.taobao.accs.base.AccsDataListenerV2
    public void onResponse(String str, String str2, int i, String str3, byte[] bArr, TaoBaseService.ExtraInfo extraInfo) {
        if (ALog.isPrintLog(ALog.Level.I)) {
            ALog.m5729i("AgooService", "onResponse,dataId=" + str2 + ",errorCode=" + i + ",errorMsg=" + str3 + ",data=" + bArr + ",serviceId=" + str, new Object[0]);
        }
        String str4 = null;
        if (bArr != null) {
            try {
                if (bArr.length > 0) {
                    str4 = new String(bArr, "utf-8");
                }
            } catch (Throwable th) {
                ALog.m5728e("AgooService", "onResponse get data error,e=" + th, new Object[0]);
            }
        }
        if (ALog.isPrintLog(ALog.Level.D)) {
            ALog.m5726d("AgooService", C0948f6.m1760e("onResponse,message=", str4), new Object[0]);
        }
        if (i == AccsErrorCode.SUCCESS.getCodeInt() && TextUtils.equals(str, AgooConstants.AGOO_SERVICE_AGOOACK)) {
            if (ALog.isPrintLog(ALog.Level.I)) {
                ALog.m5729i("AgooService", "request is success", Constants.KEY_DATA_ID, str2);
            }
            this.f6456c.updateMsg(bArr, true);
        } else if (i == AccsErrorCode.SUCCESS.getCodeInt() || !TextUtils.equals(str, AgooConstants.AGOO_SERVICE_AGOOACK)) {
            if (ALog.isPrintLog(ALog.Level.E)) {
                ALog.m5728e("AgooService", C0948f6.m1760e("business request is error,message=", str4), new Object[0]);
            }
        } else {
            if (ALog.isPrintLog(ALog.Level.E)) {
                ALog.m5728e("AgooService", "request is error", Constants.KEY_DATA_ID, str2, "errorid", Integer.valueOf(i));
            }
            Config.m5827a(getApplicationContext(), 1);
            AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_FAIL_ACK, String.valueOf(i), 0.0d);
        }
    }

    @Override // com.taobao.accs.base.TaoBaseService, com.taobao.accs.base.AccsDataListenerV2
    public void onSendData(String str, String str2, int i, String str3, TaoBaseService.ExtraInfo extraInfo) {
        try {
            if (ALog.isPrintLog(ALog.Level.I)) {
                ALog.m5729i("AgooService", "onSendData,dataId=" + str2 + ",errorCode=" + i + ",errorMsg=" + str3 + ",serviceId=" + str, new Object[0]);
            }
            if (i != AccsErrorCode.SUCCESS.getCodeInt()) {
                if (TextUtils.equals(AgooConstants.AGOO_SERVICE_AGOOACK, str)) {
                    Config.m5827a(getApplicationContext(), 1);
                    AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_FAIL_ACK, String.valueOf(i), 0.0d);
                }
                if (ALog.isPrintLog(ALog.Level.I)) {
                    ALog.m5729i("AgooService", "onSendData error,dataId=" + str2 + ",serviceId=" + str, new Object[0]);
                    ALog.m5728e("AgooService", "into--[parseError]", new Object[0]);
                }
                UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.agooService", AdapterUtilityImpl.getDeviceId(getApplicationContext()), Constants.KEY_ERROR_CODE, str2 + ",serviceId=" + str + ",errorCode=" + i);
                return;
            }
            if (TextUtils.equals(AgooConstants.AGOO_SERVICE_AGOOACK, str)) {
                AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_SUCCESS_ACK, "8/9", 0.0d);
            }
            if (!TextUtils.isEmpty(str) && TextUtils.equals(str, AgooConstants.AGOO_SERVICE_AGOOACK) && Long.parseLong(str2) > 300000000 && Long.parseLong(str2) < 600000000) {
                if (ALog.isPrintLog(ALog.Level.I)) {
                    ALog.m5729i("AgooService", "onSendData,AckData=" + str2 + ",serviceId=" + str, new Object[0]);
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(str) || !TextUtils.equals(str, AgooConstants.AGOO_SERVICE_AGOOACK) || Long.parseLong(str2) <= 600000000 || !ALog.isPrintLog(ALog.Level.I)) {
                return;
            }
            ALog.m5729i("AgooService", "onSendData,reportData=" + str2 + ",serviceId=" + str, new Object[0]);
        } catch (Throwable th) {
            if (ALog.isPrintLog(ALog.Level.E)) {
                StringBuilder sbM1765j = C0948f6.m1765j("onSendData exception,e=");
                sbM1765j.append(th.getMessage());
                sbM1765j.append(",e.getStackMsg=");
                sbM1765j.append(m5825a(th));
                ALog.m5728e("AgooService", sbM1765j.toString(), new Object[0]);
            }
            UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "accs.agooService", AdapterUtilityImpl.getDeviceId(getApplicationContext()), "onSendDataException", m5825a(th));
        }
    }

    @Override // com.taobao.accs.base.TaoBaseService, com.taobao.accs.base.AccsDataListenerV2
    public void onUnbind(String str, int i, String str2, TaoBaseService.ExtraInfo extraInfo) {
        if (ALog.isPrintLog(ALog.Level.E)) {
            ALog.m5728e("AgooService", "into--[onUnbind]:serviceId:" + str + ",errorCode=" + i, new Object[0]);
        }
        if (f6455b != null && "agooSend".equals(str)) {
            if (i == AccsErrorCode.SUCCESS.getCodeInt()) {
                f6455b.onSuccess();
            } else {
                ErrorCode errorCodeBuild = C1999a.m5798a(i, str2).build();
                f6455b.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
            }
        }
        f6455b = null;
    }
}
