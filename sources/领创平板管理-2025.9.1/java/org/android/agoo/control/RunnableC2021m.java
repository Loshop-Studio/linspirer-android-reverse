package org.android.agoo.control;

import com.taobao.accs.ACCSManager;
import com.taobao.accs.IACCSManager;
import com.taobao.accs.base.TaoBaseService;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.UTMini;
import java.util.HashMap;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.common.Config;
import org.json.JSONObject;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.m */
/* loaded from: classes.dex */
public class RunnableC2021m implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f6490a;

    /* renamed from: b */
    public final /* synthetic */ String f6491b;

    /* renamed from: c */
    public final /* synthetic */ String f6492c;

    /* renamed from: d */
    public final /* synthetic */ String f6493d;

    /* renamed from: e */
    public final /* synthetic */ boolean f6494e;

    /* renamed from: f */
    public final /* synthetic */ NotifManager f6495f;

    public RunnableC2021m(NotifManager notifManager, String str, String str2, String str3, String str4, boolean z) {
        this.f6495f = notifManager;
        this.f6490a = str;
        this.f6491b = str2;
        this.f6492c = str3;
        this.f6493d = str4;
        this.f6494e = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            HashMap map = new HashMap();
            if (this.f6490a != null) {
                map.put("sdkVer", this.f6490a);
            }
            map.put("thirdTokenType", this.f6491b);
            map.put("token", this.f6492c);
            map.put("appkey", Config.m5830b(NotifManager.mContext));
            map.put("utdid", AdapterUtilityImpl.getDeviceId(NotifManager.mContext));
            if (this.f6493d != null) {
                map.put("vendorSdkVersion", this.f6493d);
            }
            ALog.m5726d(NotifManager.TAG, "report,utdid=" + AdapterUtilityImpl.getDeviceId(NotifManager.mContext) + ",regId=" + this.f6492c + ",type=" + this.f6491b + " sdkVer=" + this.f6490a + " thirdVer=" + this.f6493d, new Object[0]);
            ACCSManager.AccsRequest accsRequest = new ACCSManager.AccsRequest(null, "agooTokenReport", new JSONObject(map).toString().getBytes("UTF-8"), null, null, null, null);
            IACCSManager accsInstance = ACCSManager.getAccsInstance(NotifManager.mContext, Config.m5830b(NotifManager.mContext), Config.m5832c(NotifManager.mContext));
            String strSendData = this.f6494e ? accsInstance.sendData(NotifManager.mContext, accsRequest) : accsInstance.sendPushResponse(NotifManager.mContext, accsRequest, new TaoBaseService.ExtraInfo());
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5729i(NotifManager.TAG, "reportThirdPushToken,dataId=" + strSendData + ",regId=" + this.f6492c + ",type=" + this.f6491b, new Object[0]);
            }
        } catch (Throwable th) {
            UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, "reportThirdPushToken", AdapterUtilityImpl.getDeviceId(NotifManager.mContext), th.toString());
            if (ALog.isPrintLog(ALog.Level.E)) {
                ALog.m5727e(NotifManager.TAG, "[report] is error", th, new Object[0]);
            }
        }
    }
}
