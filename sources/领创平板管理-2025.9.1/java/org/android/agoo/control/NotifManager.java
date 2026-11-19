package org.android.agoo.control;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.incar.mdm.MdmPolicyManager;
import com.taobao.accs.ACCSManager;
import com.taobao.accs.base.TaoBaseService;
import com.taobao.accs.common.Constants;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.AppMonitorAdapter;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.accs.utl.UTMini;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.common.Config;
import org.android.agoo.common.MsgDO;
import org.json.JSONObject;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class NotifManager {
    public static final String ACK_MESSAGE = "accs.ackMessage";
    public static final int EVENT_ID = 66001;
    public static final String TAG = "NotifManager";
    public static Context mContext;

    private byte[] convertMsgToBytes(MsgDO msgDO) {
        HashMap map = new HashMap();
        map.put(MdmPolicyManager.API, "agooReport");
        map.put(AgooConstants.MESSAGE_ID, msgDO.msgIds + "@" + msgDO.messageSource);
        map.put("ext", msgDO.extData);
        map.put("status", msgDO.msgStatus);
        if (!TextUtils.isEmpty(msgDO.errorCode)) {
            map.put("ec", msgDO.errorCode);
        }
        if (!TextUtils.isEmpty(msgDO.type)) {
            map.put("type", msgDO.type);
        }
        if (!TextUtils.isEmpty(msgDO.fromPkg)) {
            map.put("fromPkg", msgDO.fromPkg);
        }
        if (!TextUtils.isEmpty(msgDO.fromAppkey)) {
            map.put(AgooConstants.MESSAGE_FROM_APPKEY, msgDO.fromAppkey);
        }
        if (!TextUtils.isEmpty(msgDO.notifyEnable)) {
            map.put("notifyEnable", msgDO.notifyEnable);
        }
        if (!TextUtils.isEmpty(msgDO.extData)) {
            map.put("ext", msgDO.extData);
        }
        map.put("isStartProc", Boolean.toString(msgDO.isStartProc));
        map.put("appkey", Config.m5830b(mContext));
        map.put("utdid", AdapterUtilityImpl.getDeviceId(mContext));
        return new JSONObject(map).toString().getBytes("UTF-8");
    }

    private String getVersion(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "null";
            }
            String str2 = mContext.getPackageManager().getPackageInfo(str, 0).versionName;
            ALog.m5726d(TAG, "getVersion###版本号为 : " + str2, new Object[0]);
            return str2;
        } catch (Throwable unused) {
            return "null";
        }
    }

    private boolean isAppInstalled(String str) {
        PackageInfo packageInfo;
        try {
        } catch (Throwable unused) {
            packageInfo = null;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        packageInfo = mContext.getPackageManager().getPackageInfo(str, 0);
        if (packageInfo == null) {
            return false;
        }
        ALog.m5729i(TAG, "isAppInstalled true..", new Object[0]);
        return true;
    }

    private void reportMethod(MsgDO msgDO, TaoBaseService.ExtraInfo extraInfo) {
        try {
            if (msgDO == null) {
                ALog.m5728e(TAG, "reportMethod msg null", new Object[0]);
                return;
            }
            ACCSManager.AccsRequest accsRequest = new ACCSManager.AccsRequest(null, AgooConstants.AGOO_SERVICE_AGOOACK, convertMsgToBytes(msgDO), null, null, null, null);
            accsRequest.setTag(msgDO.msgIds);
            String strSendPushResponse = ACCSManager.getAccsInstance(mContext, Config.m5830b(mContext), Config.m5832c(mContext)).sendPushResponse(mContext, accsRequest, extraInfo);
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(TAG, AgooConstants.MESSAGE_REPORT, Constants.KEY_DATA_ID, strSendPushResponse, "status", msgDO.msgStatus, "errorcode", msgDO.errorCode);
            }
        } catch (Throwable th) {
            AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_ERROR, th.toString(), 0.0d);
        }
    }

    public void doUninstall(String str, boolean z) {
        try {
            HashMap map = new HashMap();
            map.put("pack", str);
            map.put("appkey", Config.m5830b(mContext));
            map.put("utdid", AdapterUtilityImpl.getDeviceId(mContext));
            ACCSManager.getAccsInstance(mContext, Config.m5830b(mContext), Config.m5832c(mContext)).sendPushResponse(mContext, new ACCSManager.AccsRequest(null, "agooKick", new JSONObject(map).toString().getBytes("UTF-8"), null, null, null, null), new TaoBaseService.ExtraInfo());
        } catch (Throwable th) {
            ALog.m5727e(TAG, "[doUninstall] is error", th, new Object[0]);
        }
    }

    public void handlerACKMessage(MsgDO msgDO, TaoBaseService.ExtraInfo extraInfo) {
        if (msgDO == null) {
            return;
        }
        if (TextUtils.isEmpty(msgDO.msgIds) && TextUtils.isEmpty(msgDO.removePacks) && TextUtils.isEmpty(msgDO.errorCode)) {
            UTMini uTMini = UTMini.getInstance();
            String deviceId = AdapterUtilityImpl.getDeviceId(mContext);
            StringBuilder sbM1765j = CompilerOutline.m1765j("msgids=");
            sbM1765j.append(msgDO.msgIds);
            sbM1765j.append(",removePacks=");
            sbM1765j.append(msgDO.removePacks);
            sbM1765j.append(",errorCode=");
            sbM1765j.append(msgDO.errorCode);
            uTMini.commitEvent(AgooConstants.AGOO_EVENT_ID, ACK_MESSAGE, deviceId, "handlerACKMessageRetuen", sbM1765j.toString());
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put(MdmPolicyManager.API, AgooConstants.AGOO_SERVICE_AGOOACK);
            map.put(AgooConstants.MESSAGE_ID, msgDO.msgIds + "@" + msgDO.messageSource);
            if (!TextUtils.isEmpty(msgDO.removePacks)) {
                map.put("del_pack", msgDO.removePacks);
            }
            if (!TextUtils.isEmpty(msgDO.errorCode)) {
                map.put("ec", msgDO.errorCode);
            }
            if (!TextUtils.isEmpty(msgDO.type)) {
                map.put("type", msgDO.type);
            }
            if (!TextUtils.isEmpty(msgDO.extData)) {
                map.put("ext", msgDO.extData);
            }
            map.put("appkey", Config.m5830b(mContext));
            map.put("utdid", AdapterUtilityImpl.getDeviceId(mContext));
            byte[] bytes = new JSONObject(map).toString().getBytes("UTF-8");
            UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, ACK_MESSAGE, AdapterUtilityImpl.getDeviceId(mContext), "handlerACKMessageSendData", msgDO.msgIds);
            AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_ACK, "handlerACKMessage", 0.0d);
            ACCSManager.AccsRequest accsRequest = new ACCSManager.AccsRequest(null, AgooConstants.AGOO_SERVICE_AGOOACK, bytes, null, null, null, null);
            accsRequest.setTag(msgDO.msgIds);
            ALog.m5729i(TAG, "handlerACKMessage,endRequest,dataId=" + ACCSManager.getAccsInstance(mContext, Config.m5830b(mContext), Config.m5832c(mContext)).sendPushResponse(mContext, accsRequest, extraInfo), new Object[0]);
        } catch (Throwable th) {
            if (ALog.isPrintLog(ALog.Level.E)) {
                StringBuilder sbM1765j2 = CompilerOutline.m1765j("handlerACKMessage Throwable,msgIds=");
                sbM1765j2.append(msgDO.msgIds);
                sbM1765j2.append(",type=");
                sbM1765j2.append(msgDO.type);
                sbM1765j2.append(",e=");
                sbM1765j2.append(th.toString());
                ALog.m5728e(TAG, sbM1765j2.toString(), new Object[0]);
            }
            UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, ACK_MESSAGE, AdapterUtilityImpl.getDeviceId(mContext), "handlerACKMessageExceptionFailed", th.toString());
        }
    }

    public void init(Context context) {
        mContext = context;
    }

    public void pingApp(String str, String str2, String str3, int i) {
    }

    public void report(MsgDO msgDO, TaoBaseService.ExtraInfo extraInfo) {
        if (TextUtils.isEmpty(msgDO.reportStr)) {
            return;
        }
        try {
            if (Integer.parseInt(msgDO.reportStr) >= -1) {
                reportMethod(msgDO, extraInfo);
                if (msgDO.isFromCache) {
                    return;
                }
                AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_ACK, msgDO.msgStatus, 0.0d);
            }
        } catch (Throwable th) {
            ALog.m5727e(TAG, "[report] is error", th, new Object[0]);
        }
    }

    public void reportNotifyMessage(MsgDO msgDO) {
        if (msgDO != null) {
            try {
                AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_REPORT_ID, msgDO.msgIds, 0.0d);
                String strSendRequest = ACCSManager.getAccsInstance(mContext, Config.m5830b(mContext), Config.m5832c(mContext)).sendRequest(mContext, new ACCSManager.AccsRequest(null, AgooConstants.AGOO_SERVICE_AGOOACK, convertMsgToBytes(msgDO), null, null, null, null));
                if (ALog.isPrintLog(ALog.Level.I)) {
                    ALog.m5729i(TAG, "reportNotifyMessage", Constants.KEY_DATA_ID, strSendRequest, "status", msgDO.msgStatus);
                }
                AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_CLICK, msgDO.msgStatus, 0.0d);
                AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_AGOO_ACK, msgDO.msgStatus, 0.0d);
            } catch (Throwable th) {
                ALog.m5727e(TAG, "[reportNotifyMessage] is error", th, new Object[0]);
                AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_ERROR, th.toString(), 0.0d);
            }
        }
    }

    public void reportThirdPushToken(String str, String str2, boolean z) {
        reportThirdPushToken(null, str, str2, null, z);
    }

    public void reportThirdPushToken(String str, String str2, String str3, String str4, boolean z) {
        ThreadPoolExecutorFactory.schedule(new ReportThirdPartyPushTokenTask(this, str, str3, str2, str4, z), 10L, TimeUnit.SECONDS);
    }

    public void reportThirdPushToken(String str, String str2, String str3, boolean z) {
        reportThirdPushToken(null, str, str2, str3, z);
    }

    public void reportThirdPushToken(String str, String str2) {
        reportThirdPushToken(null, str, str2, null, true);
    }
}
