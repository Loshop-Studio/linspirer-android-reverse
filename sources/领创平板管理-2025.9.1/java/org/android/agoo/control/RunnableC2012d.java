package org.android.agoo.control;

import android.text.TextUtils;
import com.incar.mdm.MdmPolicyManager;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AppMonitorAdapter;
import com.taobao.accs.utl.BaseMonitor;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.common.Config;
import org.android.agoo.message.MessageService;
import org.json.JSONObject;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.d */
/* loaded from: classes.dex */
public class RunnableC2012d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ byte[] f6471a;

    /* renamed from: b */
    public final /* synthetic */ boolean f6472b;

    /* renamed from: c */
    public final /* synthetic */ AgooFactory f6473c;

    public RunnableC2012d(AgooFactory agooFactory, byte[] bArr, boolean z) {
        this.f6473c = agooFactory;
        this.f6471a = bArr;
        this.f6472b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            String str = new String(this.f6471a, "utf-8");
            if (TextUtils.isEmpty(str)) {
                AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_FAIL_ACK, "msg==null", 0.0d);
                return;
            }
            ALog.m5729i(AgooFactory.TAG, "message = " + str, new Object[0]);
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString(MdmPolicyManager.API);
            String string2 = jSONObject.getString(AgooConstants.MESSAGE_ID);
            String string3 = TextUtils.equals(string, "agooReport") ? jSONObject.getString("status") : null;
            if (TextUtils.equals(string, AgooConstants.AGOO_SERVICE_AGOOACK)) {
                AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_SUCCESS_ACK, "handlerACKMessage", 0.0d);
            }
            if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string3)) {
                if (ALog.isPrintLog(ALog.Level.I)) {
                    ALog.m5729i(AgooFactory.TAG, "updateMsg data begin,api=" + string + ",id=" + string2 + ",status=" + string3 + ",reportTimes=" + Config.m5835f(AgooFactory.mContext), new Object[0]);
                }
                if (TextUtils.equals(string, "agooReport")) {
                    if (TextUtils.equals(string3, "4") && this.f6472b) {
                        this.f6473c.messageService.m5848a(string2, "1");
                    } else if ((TextUtils.equals(string3, MessageService.MSG_ACCS_NOTIFY_CLICK) || TextUtils.equals(string3, MessageService.MSG_ACCS_NOTIFY_DISMISS)) && this.f6472b) {
                        this.f6473c.messageService.m5848a(string2, MessageService.MSG_DB_COMPLETE);
                    }
                    AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_SUCCESS_ACK, string3, 0.0d);
                    return;
                }
                return;
            }
            AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_FAIL_ACK, "json key null", 0.0d);
        } catch (Throwable th) {
            ALog.m5728e(AgooFactory.TAG, "updateMsg get data error,e=" + th, new Object[0]);
            AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_FAIL_ACK, "json exception", 0.0d);
        }
    }
}
