package org.android.agoo.control;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.base.TaoBaseService;
import com.taobao.accs.client.AdapterGlobalClientInfo;
import com.taobao.accs.common.Constants;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.dispatch.IntentDispatch;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.UTMini;
import com.taobao.accs.utl.UtilityImpl;
import java.util.List;
import javax.crypto.spec.SecretKeySpec;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.common.AgooMessageCrypto;
import org.android.agoo.common.Config;
import org.android.agoo.common.MsgDO;
import org.android.agoo.message.MessageService;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AgooFactory {
    public static final String DEAL_MESSAGE = "accs.msgRecevie";
    public static final String TAG = "AgooFactory";
    public static AgooFactory instance;
    public static Context mContext;
    public NotifManager notifyManager = null;
    public MessageService messageService = null;

    public AgooFactory(Context context) {
        init(context, null, null);
    }

    public static final boolean checkPackage(Context context, String str) {
        return context.getPackageManager().getApplicationInfo(str, 0) != null;
    }

    public static Bundle getFlag(long j, MsgDO msgDO) {
        Bundle bundle = new Bundle();
        try {
            char[] charArray = Long.toBinaryString(j).toCharArray();
            if (charArray != null && 8 <= charArray.length) {
                if (8 <= charArray.length) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("");
                    sb.append(Integer.parseInt("" + charArray[1] + charArray[2] + charArray[3] + charArray[4], 2));
                    bundle.putString(AgooConstants.MESSAGE_ENCRYPTED, sb.toString());
                    if (charArray[6] == '1') {
                        bundle.putString(AgooConstants.MESSAGE_REPORT, "1");
                        msgDO.reportStr = "1";
                    }
                    if (charArray[7] == '1') {
                        bundle.putString(AgooConstants.MESSAGE_NOTIFICATION, "1");
                    }
                }
                if (9 <= charArray.length && charArray[8] == '1') {
                    bundle.putString(AgooConstants.MESSAGE_HAS_TEST, "1");
                }
                if (10 <= charArray.length && charArray[9] == '1') {
                    bundle.putString(AgooConstants.MESSAGE_DUPLICATE, "1");
                }
                if (11 <= charArray.length && charArray[10] == '1') {
                    bundle.putInt(AgooConstants.MESSAGE_POPUP, 1);
                }
            }
        } catch (Throwable unused) {
        }
        return bundle;
    }

    public static AgooFactory getInstance(Context context) {
        if (instance == null) {
            synchronized (AgooFactory.class) {
                if (instance == null) {
                    instance = new AgooFactory(context.getApplicationContext());
                }
            }
        }
        return instance;
    }

    private void init(Context context, NotifManager notifManager, MessageService messageService) {
        mContext = context.getApplicationContext();
        this.notifyManager = notifManager;
        if (notifManager == null) {
            this.notifyManager = new NotifManager();
        }
        this.notifyManager.init(mContext);
        this.messageService = messageService;
        if (messageService == null) {
            this.messageService = new MessageService();
        }
        this.messageService.m5847a(mContext);
    }

    public static Bundle msgReceiverPreHandlerOnly(Context context, byte[] bArr, String str, String str2) {
        JSONArray jSONArray;
        String str3;
        if (bArr != null) {
            try {
                if (bArr.length > 0) {
                    String str4 = new String(bArr, "utf-8");
                    if (ALog.isPrintLog(ALog.Level.I)) {
                        ALog.m5729i(TAG, "msgRecevieOnly,message--->[" + str4 + "],utdid=" + AdapterUtilityImpl.getDeviceId(context), new Object[0]);
                    }
                    if (TextUtils.isEmpty(str4)) {
                        ALog.m5729i(TAG, "handleMessage message==null,utdid=" + AdapterUtilityImpl.getDeviceId(context), new Object[0]);
                        return null;
                    }
                    JSONArray jSONArray2 = new JSONArray(str4);
                    int length = jSONArray2.length();
                    StringBuilder sb = new StringBuilder();
                    Bundle bundle = null;
                    String string = null;
                    int i = 0;
                    while (i < length) {
                        bundle = new Bundle();
                        JSONObject jSONObject = jSONArray2.getJSONObject(i);
                        if (jSONObject == null) {
                            jSONArray = jSONArray2;
                            str3 = str4;
                        } else {
                            MsgDO msgDO = new MsgDO();
                            String string2 = jSONObject.getString("p");
                            String string3 = jSONObject.getString("i");
                            String string4 = jSONObject.getString("b");
                            String str5 = str4;
                            long j = jSONObject.getLong("f");
                            if (!jSONObject.isNull("ext")) {
                                string = jSONObject.getString("ext");
                            }
                            sb.append(string3);
                            jSONArray = jSONArray2;
                            if (i < length - 1) {
                                sb.append(",");
                            }
                            msgDO.msgIds = string3;
                            msgDO.extData = string;
                            msgDO.removePacks = string2;
                            msgDO.messageSource = str;
                            if (TextUtils.isEmpty(string4)) {
                                msgDO.errorCode = AgooConstants.ACK_BODY_NULL;
                            } else if (TextUtils.isEmpty(string2)) {
                                msgDO.errorCode = AgooConstants.ACK_PACK_NULL;
                            } else if (j == -1) {
                                msgDO.errorCode = AgooConstants.ACK_FLAG_NULL;
                            } else if (checkPackage(context, string2)) {
                                Bundle flag = getFlag(j, msgDO);
                                String string5 = flag.getString(AgooConstants.MESSAGE_ENCRYPTED);
                                if (context.getPackageName().equals(string2) && !TextUtils.equals(string5, Integer.toString(4))) {
                                    ALog.m5728e(TAG, "msgRecevie msg encrypted flag not exist, cannot prase!!!", new Object[0]);
                                    msgDO.errorCode = AgooConstants.REPORT_NOT_ENCRYPT;
                                }
                                bundle.putAll(flag);
                                try {
                                    String string6 = jSONObject.getString("t");
                                    if (!TextUtils.isEmpty(string6)) {
                                        bundle.putString("time", string6);
                                    }
                                } catch (Throwable unused) {
                                    if (ALog.isPrintLog(ALog.Level.I)) {
                                        ALog.m5729i(TAG, "agoo msg has no time", new Object[0]);
                                    }
                                }
                                bundle.putLong(AgooConstants.MESSAGE_TRACE, System.currentTimeMillis());
                                bundle.putString(AgooConstants.MESSAGE_ID, string3);
                                bundle.putString(AgooConstants.MESSAGE_BODY, string4);
                                bundle.putString("source", string2);
                                bundle.putString(AgooConstants.MESSAGE_FROM_APPKEY, str2);
                                bundle.putString(AgooConstants.MESSAGE_EXT, string);
                                str3 = str5;
                                bundle.putString(AgooConstants.MESSAGE_ORI, str3);
                                bundle.putString("type", "common-push");
                                bundle.putString(AgooConstants.MESSAGE_SOURCE, str);
                            } else {
                                ALog.m5726d(TAG, "msgRecevie checkpackage is del,pack=" + string2, new Object[0]);
                            }
                            str3 = str5;
                        }
                        i++;
                        jSONArray2 = jSONArray;
                        str4 = str3;
                    }
                    return bundle;
                }
            } catch (Throwable th) {
                if (!ALog.isPrintLog(ALog.Level.E)) {
                    return null;
                }
                ALog.m5728e(TAG, "msgRecevie is error,e=" + th, new Object[0]);
                return null;
            }
        }
        ALog.m5729i(TAG, "handleMessage data==null,utdid=" + AdapterUtilityImpl.getDeviceId(context), new Object[0]);
        return null;
    }

    public static String parseEncryptedMsg(String str) {
        String strM5830b;
        String str2;
        try {
            strM5830b = Config.m5830b(mContext);
            str2 = AdapterUtilityImpl.mAgooAppSecret;
        } catch (Throwable th) {
            ALog.m5727e(TAG, "parseEncryptedMsg failure: ", th, new Object[0]);
        }
        if (TextUtils.isEmpty(str2)) {
            ALog.m5728e(TAG, "getAppsign secret null", new Object[0]);
            return null;
        }
        List<String> utdids = UtilityImpl.getUtdids(Constants.SP_FILE_NAME, mContext);
        for (int i = 0; i < utdids.size(); i++) {
            String encryptedMsgWithoutAgoo = parseEncryptedMsgWithoutAgoo(str, strM5830b, str2, utdids.get(i));
            if (encryptedMsgWithoutAgoo != null) {
                UtilityImpl.hitUtdid(Constants.SP_FILE_NAME, mContext, utdids.get(i));
                return encryptedMsgWithoutAgoo;
            }
        }
        return null;
    }

    public static String parseEncryptedMsgWithoutAgoo(String str, String str2, String str3, String str4) {
        String str5 = null;
        try {
            byte[] bArrM5840a = AgooMessageCrypto.m5840a(str3.getBytes("utf-8"), (str2 + str4).getBytes("utf-8"));
            if (bArrM5840a == null || bArrM5840a.length <= 0) {
                ALog.m5732w(TAG, "aesDecrypt key is null!", new Object[0]);
            } else {
                str5 = new String(AgooMessageCrypto.m5839a(Base64.decode(str, 8), new SecretKeySpec(AgooMessageCrypto.m5838a(bArrM5840a), "AES"), AgooMessageCrypto.m5838a(str2.getBytes("utf-8"))), "utf-8");
            }
        } catch (Throwable th) {
            ALog.m5732w(TAG, "parseEncryptedMsg body: ", str);
            ALog.m5732w(TAG, "parseEncryptedMsg appKey: ", str2);
            ALog.m5732w(TAG, "parseEncryptedMsg utdid: ", str4);
            ALog.m5731w(TAG, "parseEncryptedMsg failure: ", th, new Object[0]);
        }
        return str5;
    }

    private void sendMsgToBussiness(Context context, String str, Bundle bundle, boolean z, String str2, TaoBaseService.ExtraInfo extraInfo) {
        Intent intent = new Intent();
        intent.setAction("org.agoo.android.intent.action.RECEIVE");
        intent.setPackage(str);
        intent.putExtras(bundle);
        intent.putExtra("type", "common-push");
        intent.putExtra(AgooConstants.MESSAGE_SOURCE, str2);
        intent.addFlags(32);
        try {
            Bundle bundle2 = new Bundle();
            bundle2.putSerializable(AgooConstants.MESSAGE_ACCS_EXTRA, extraInfo);
            intent.putExtra(AgooConstants.MESSAGE_AGOO_BUNDLE, bundle2);
        } catch (Throwable th) {
            ALog.m5727e(TAG, "sendMsgToBussiness", th, new Object[0]);
        }
        if (ALog.isPrintLog(ALog.Level.I)) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("sendMsgToBussiness intent:");
            sbM1765j.append(bundle.toString());
            sbM1765j.append(",utdid=");
            sbM1765j.append(AdapterUtilityImpl.getDeviceId(context));
            sbM1765j.append(",pack=");
            sbM1765j.append(str);
            sbM1765j.append(",agooFlag=");
            sbM1765j.append(z);
            ALog.m5729i(TAG, sbM1765j.toString(), new Object[0]);
        }
        if (z) {
            return;
        }
        String agooCustomServiceName = AdapterGlobalClientInfo.getAgooCustomServiceName(context);
        if (TextUtils.isEmpty(agooCustomServiceName)) {
            ALog.m5728e(TAG, "sendMsgToBussiness failed, can not find custom service", new Object[0]);
        } else {
            intent.setClassName(str, agooCustomServiceName);
            IntentDispatch.dispatchIntent(context, intent, agooCustomServiceName);
        }
    }

    public void clickMessage(Context context, String str, String str2) {
        ThreadPoolExecutorFactory.execute(new ReportNotificationClickTask(this, str, str2));
    }

    public void dismissMessage(Context context, String str, String str2) {
        ThreadPoolExecutorFactory.execute(new ReportNotificationDismissTask(this, str, str2));
    }

    public MessageService getMessageService() {
        return this.messageService;
    }

    public NotifManager getNotifyManager() {
        return this.notifyManager;
    }

    public Bundle msgReceiverPreHandler(byte[] bArr, String str, TaoBaseService.ExtraInfo extraInfo, boolean z) {
        JSONArray jSONArray;
        String str2;
        boolean z2;
        Bundle bundle;
        String str3;
        String str4;
        int i;
        StringBuilder sb;
        StringBuilder sb2;
        int i2;
        StringBuilder sb3;
        String str5 = "ext";
        if (bArr != null) {
            try {
                if (bArr.length > 0) {
                    String str6 = new String(bArr, "utf-8");
                    if (ALog.isPrintLog(ALog.Level.I)) {
                        ALog.m5729i(TAG, "msgRecevie,message--->[" + str6 + "],utdid=" + AdapterUtilityImpl.getDeviceId(mContext), new Object[0]);
                    }
                    if (TextUtils.isEmpty(str6)) {
                        UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, DEAL_MESSAGE, AdapterUtilityImpl.getDeviceId(mContext), "message==null");
                        ALog.m5729i(TAG, "handleMessage message==null,utdid=" + AdapterUtilityImpl.getDeviceId(mContext), new Object[0]);
                        return null;
                    }
                    JSONArray jSONArray2 = new JSONArray(str6);
                    int length = jSONArray2.length();
                    StringBuilder sb4 = new StringBuilder();
                    StringBuilder sb5 = new StringBuilder();
                    StringBuilder sb6 = new StringBuilder();
                    Bundle bundle2 = null;
                    String str7 = null;
                    int i3 = 0;
                    while (i3 < length) {
                        Bundle bundle3 = new Bundle();
                        JSONObject jSONObject = jSONArray2.getJSONObject(i3);
                        if (jSONObject == null) {
                            jSONArray = jSONArray2;
                            i = i3;
                            sb2 = sb6;
                            sb3 = sb4;
                            i2 = length;
                            str2 = str5;
                            str3 = str6;
                            bundle = bundle3;
                            sb = sb5;
                        } else {
                            MsgDO msgDO = new MsgDO();
                            jSONArray = jSONArray2;
                            String string = jSONObject.getString("p");
                            String str8 = str7;
                            String string2 = jSONObject.getString("i");
                            String str9 = str6;
                            String string3 = jSONObject.getString("b");
                            StringBuilder sb7 = sb6;
                            StringBuilder sb8 = sb5;
                            long j = jSONObject.getLong("f");
                            String string4 = !jSONObject.isNull(str5) ? jSONObject.getString(str5) : str8;
                            sb4.append(string2);
                            str2 = str5;
                            int i4 = length - 1;
                            int i5 = length;
                            if (i3 < i4) {
                                sb4.append(",");
                            }
                            msgDO.msgIds = string2;
                            msgDO.extData = string4;
                            msgDO.removePacks = string;
                            msgDO.messageSource = str;
                            if (TextUtils.isEmpty(string3)) {
                                msgDO.errorCode = AgooConstants.ACK_BODY_NULL;
                                this.notifyManager.handlerACKMessage(msgDO, extraInfo);
                            } else if (TextUtils.isEmpty(string)) {
                                msgDO.errorCode = AgooConstants.ACK_PACK_NULL;
                                this.notifyManager.handlerACKMessage(msgDO, extraInfo);
                            } else if (j == -1) {
                                msgDO.errorCode = AgooConstants.ACK_FLAG_NULL;
                                this.notifyManager.handlerACKMessage(msgDO, extraInfo);
                            } else {
                                StringBuilder sb9 = sb4;
                                if (checkPackage(mContext, string)) {
                                    Bundle flag = getFlag(j, msgDO);
                                    String string5 = flag.getString(AgooConstants.MESSAGE_ENCRYPTED);
                                    if (!mContext.getPackageName().equals(string)) {
                                        z2 = true;
                                    } else if (TextUtils.equals(string5, Integer.toString(4))) {
                                        z2 = false;
                                    } else {
                                        ALog.m5728e(TAG, "msgRecevie msg encrypted flag not exist, cannot prase!!!", new Object[0]);
                                        UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, DEAL_MESSAGE, AdapterUtilityImpl.getDeviceId(mContext), "encrypted!=4", AgooConstants.ACK_PACK_ERROR);
                                        msgDO.errorCode = AgooConstants.REPORT_NOT_ENCRYPT;
                                        this.notifyManager.handlerACKMessage(msgDO, extraInfo);
                                        str4 = string4;
                                        i = i3;
                                        sb2 = sb7;
                                        sb = sb8;
                                    }
                                    bundle = bundle3;
                                    bundle.putAll(flag);
                                    try {
                                        String string6 = jSONObject.getString("t");
                                        if (!TextUtils.isEmpty(string6)) {
                                            bundle.putString("time", string6);
                                        }
                                    } catch (Throwable unused) {
                                        if (ALog.isPrintLog(ALog.Level.I)) {
                                            ALog.m5729i(TAG, "agoo msg has no time", new Object[0]);
                                        }
                                    }
                                    bundle.putLong(AgooConstants.MESSAGE_TRACE, System.currentTimeMillis());
                                    bundle.putString(AgooConstants.MESSAGE_ID, string2);
                                    bundle.putString(AgooConstants.MESSAGE_BODY, string3);
                                    bundle.putString("source", string);
                                    bundle.putString(AgooConstants.MESSAGE_FROM_APPKEY, Config.m5830b(mContext));
                                    bundle.putString(AgooConstants.MESSAGE_EXT, string4);
                                    str3 = str9;
                                    bundle.putString(AgooConstants.MESSAGE_ORI, str3);
                                    if (z) {
                                        str4 = string4;
                                        i = i3;
                                        sb2 = sb7;
                                        sb = sb8;
                                        sb3 = sb9;
                                        i2 = i5;
                                        sendMsgToBussiness(mContext, string, bundle, z2, str, extraInfo);
                                    } else {
                                        str4 = string4;
                                        i = i3;
                                        sb = sb8;
                                        sb2 = sb7;
                                        i2 = i5;
                                        sb3 = sb9;
                                        bundle.putString("type", "common-push");
                                        bundle.putString(AgooConstants.MESSAGE_SOURCE, str);
                                    }
                                    str7 = str4;
                                } else {
                                    ALog.m5726d(TAG, "msgRecevie checkpackage is del,pack=" + string, new Object[0]);
                                    UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, DEAL_MESSAGE, AdapterUtilityImpl.getDeviceId(mContext), "deletePack", string);
                                    sb7.append(string);
                                    sb8.append(string2);
                                    if (i3 < i4) {
                                        sb7.append(",");
                                        sb8.append(",");
                                    }
                                    sb = sb8;
                                    str4 = string4;
                                    i = i3;
                                    sb2 = sb7;
                                }
                                str3 = str9;
                                bundle = bundle3;
                                i2 = i5;
                                sb3 = sb9;
                                str7 = str4;
                            }
                            str4 = string4;
                            i = i3;
                            sb3 = sb4;
                            str3 = str9;
                            bundle = bundle3;
                            sb = sb8;
                            sb2 = sb7;
                            i2 = i5;
                            str7 = str4;
                        }
                        i3 = i + 1;
                        sb6 = sb2;
                        bundle2 = bundle;
                        sb5 = sb;
                        sb4 = sb3;
                        length = i2;
                        str5 = str2;
                        jSONArray2 = jSONArray;
                        str6 = str3;
                    }
                    StringBuilder sb10 = sb6;
                    StringBuilder sb11 = sb5;
                    if (sb10.length() > 0) {
                        MsgDO msgDO2 = new MsgDO();
                        msgDO2.msgIds = sb11.toString();
                        msgDO2.removePacks = sb10.toString();
                        msgDO2.errorCode = AgooConstants.ACK_REMOVE_PACKAGE;
                        msgDO2.messageSource = str;
                        this.notifyManager.handlerACKMessage(msgDO2, extraInfo);
                    }
                    return bundle2;
                }
            } catch (Throwable th) {
                if (!ALog.isPrintLog(ALog.Level.E)) {
                    return null;
                }
                ALog.m5728e(TAG, "msgRecevie is error,e=" + th, new Object[0]);
                return null;
            }
        }
        UTMini.getInstance().commitEvent(AgooConstants.AGOO_EVENT_ID, DEAL_MESSAGE, AdapterUtilityImpl.getDeviceId(mContext), "data==null");
        ALog.m5729i(TAG, "handleMessage data==null,utdid=" + AdapterUtilityImpl.getDeviceId(mContext), new Object[0]);
        return null;
    }

    public void msgRecevie(byte[] bArr, String str) {
        msgRecevie(bArr, str, null);
    }

    public void reportCacheMsg() {
        try {
            ThreadPoolExecutorFactory.execute(new ReportCachedAgooMessagesTask(this));
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("reportCacheMsg fail:");
            sbM1765j.append(th.toString());
            ALog.m5728e(TAG, sbM1765j.toString(), new Object[0]);
        }
    }

    public void saveMsg(byte[] bArr) {
        saveMsg(bArr, MessageService.MSG_DB_READY_REPORT);
    }

    public void updateMsg(byte[] bArr, boolean z) {
        ThreadPoolExecutorFactory.execute(new ProcessAgooAcknowledgementTask(this, bArr, z));
    }

    public void updateMsgStatus(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (ALog.isPrintLog(ALog.Level.I)) {
                    ALog.m5729i(TAG, "updateNotifyMsg begin,messageId=" + str + ",status=" + str2 + ",reportTimes=" + Config.m5835f(mContext), new Object[0]);
                }
                if (TextUtils.equals(str2, MessageService.MSG_ACCS_NOTIFY_CLICK)) {
                    this.messageService.m5848a(str, MessageService.MSG_DB_NOTIFY_CLICK);
                } else if (TextUtils.equals(str2, MessageService.MSG_ACCS_NOTIFY_DISMISS)) {
                    this.messageService.m5848a(str, MessageService.MSG_DB_NOTIFY_DISMISS);
                }
            }
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("updateNotifyMsg e=");
            sbM1765j.append(th.toString());
            ALog.m5728e(TAG, sbM1765j.toString(), new Object[0]);
        }
    }

    public void updateNotifyMsg(String str, String str2) {
        ThreadPoolExecutorFactory.execute(new PersistNotificationStatusTask(this, str, str2));
    }

    public void msgRecevie(byte[] bArr, String str, TaoBaseService.ExtraInfo extraInfo) {
        try {
            if (ALog.isPrintLog(ALog.Level.I)) {
                ALog.m5729i(TAG, "into--[AgooFactory,msgRecevie]:messageSource=" + str, new Object[0]);
            }
            ThreadPoolExecutorFactory.execute(new PrepareAgooMessageDeliveryTask(this, bArr, str, extraInfo));
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("serviceImpl init task fail:");
            sbM1765j.append(th.toString());
            ALog.m5728e(TAG, sbM1765j.toString(), new Object[0]);
        }
    }

    public void saveMsg(byte[] bArr, String str) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        ThreadPoolExecutorFactory.execute(new SaveAgooMessageTask(this, bArr, str));
    }
}
