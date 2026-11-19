package com.taobao.agoo;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.alibaba.sdk.android.error.ErrorCode;
import com.aliyun.ams.emas.push.AgooInnerService;
import com.aliyun.ams.emas.push.MsgService;
import com.aliyun.ams.emas.push.notification.CPushMessage;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.C1169o0;
import com.huawei.hem.C1319u0;
import com.huawei.hem.C1344v0;
import com.huawei.hem.InterfaceC1068k0;
import com.huawei.hem.InterfaceC1144n0;
import com.taobao.accs.ACCSClient;
import com.taobao.accs.ACCSManager;
import com.taobao.accs.AccsClientConfig;
import com.taobao.accs.IACCSManager;
import com.taobao.accs.client.AdapterGlobalClientInfo;
import com.taobao.accs.client.GlobalClientInfo;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.UTMini;
import com.taobao.accs.utl.UtilityImpl;
import com.taobao.agoo.p074a.C2000a;
import com.taobao.agoo.p074a.C2005b;
import com.taobao.agoo.p074a.p075a.C2001a;
import com.taobao.agoo.p074a.p075a.C2003c;
import com.taobao.agoo.p074a.p075a.C2004d;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.common.CallBack;
import org.android.agoo.common.Config;
import org.android.agoo.control.AgooFactory;

/* loaded from: classes.dex */
public final class TaobaoRegister {
    public static final int EVENT_ID = 66001;
    public static final String PREFERENCES = "Agoo_AppStore";
    public static final String PROPERTY_APP_NOTIFICATION_CUSTOM_SOUND = "app_notification_custom_sound";
    public static final String PROPERTY_APP_NOTIFICATION_ICON = "app_notification_icon";
    public static final String PROPERTY_APP_NOTIFICATION_SOUND = "app_notification_sound";
    public static final String PROPERTY_APP_NOTIFICATION_VIBRATE = "app_notification_vibrate";
    public static final String SERVICEID = "agooSend";
    public static final String TAG = "TaobaoRegister";
    public static C2005b mRequestListener;

    /* renamed from: com.taobao.agoo.TaobaoRegister$a */
    public static class C1991a implements InterfaceC1992b {

        /* renamed from: a */
        public final String f6405a;

        public /* synthetic */ C1991a(String str, C2007c c2007c) {
            this(str);
        }

        @Override // com.taobao.agoo.TaobaoRegister.InterfaceC1992b
        /* renamed from: a */
        public byte[] mo5797a(String str, String str2) {
            return C2001a.m5809b(str, str2, this.f6405a);
        }

        public C1991a(String str) {
            this.f6405a = str;
        }
    }

    /* renamed from: com.taobao.agoo.TaobaoRegister$b */
    public interface InterfaceC1992b {
        /* renamed from: a */
        byte[] mo5797a(String str, String str2);
    }

    /* renamed from: com.taobao.agoo.TaobaoRegister$c */
    public static class C1993c implements InterfaceC1992b {
        public C1993c() {
        }

        @Override // com.taobao.agoo.TaobaoRegister.InterfaceC1992b
        /* renamed from: a */
        public byte[] mo5797a(String str, String str2) {
            return C2001a.m5808b(str, str2);
        }

        public /* synthetic */ C1993c(C2007c c2007c) {
            this();
        }
    }

    /* renamed from: com.taobao.agoo.TaobaoRegister$d */
    public static class C1994d implements InterfaceC1992b {

        /* renamed from: a */
        public final String f6406a;

        /* renamed from: b */
        public final String f6407b;

        public /* synthetic */ C1994d(String str, String str2, C2007c c2007c) {
            this(str, str2);
        }

        @Override // com.taobao.agoo.TaobaoRegister.InterfaceC1992b
        /* renamed from: a */
        public byte[] mo5797a(String str, String str2) {
            return C2001a.m5807a(str, str2, this.f6406a, this.f6407b);
        }

        public C1994d(String str, String str2) {
            this.f6406a = str;
            this.f6407b = str2;
        }
    }

    /* renamed from: com.taobao.agoo.TaobaoRegister$e */
    public static class C1995e implements InterfaceC1992b {
        public C1995e() {
        }

        @Override // com.taobao.agoo.TaobaoRegister.InterfaceC1992b
        /* renamed from: a */
        public byte[] mo5797a(String str, String str2) {
            return C2001a.m5805a(str, str2);
        }

        public /* synthetic */ C1995e(C2007c c2007c) {
            this();
        }
    }

    /* renamed from: com.taobao.agoo.TaobaoRegister$f */
    public static class C1996f implements InterfaceC1992b {

        /* renamed from: a */
        public final String f6408a;

        public C1996f(String str) {
            this.f6408a = str;
        }

        @Override // com.taobao.agoo.TaobaoRegister.InterfaceC1992b
        /* renamed from: a */
        public byte[] mo5797a(String str, String str2) {
            return C2001a.m5806a(str, str2, this.f6408a);
        }
    }

    /* renamed from: com.taobao.agoo.TaobaoRegister$g */
    public static class C1997g implements InterfaceC1992b {

        /* renamed from: a */
        public final String f6409a;

        public C1997g(String str) {
            this.f6409a = str;
        }

        @Override // com.taobao.agoo.TaobaoRegister.InterfaceC1992b
        /* renamed from: a */
        public byte[] mo5797a(String str, String str2) {
            return C2001a.m5811d(str, str2, this.f6409a);
        }
    }

    /* renamed from: com.taobao.agoo.TaobaoRegister$h */
    public static class C1998h implements InterfaceC1992b {

        /* renamed from: a */
        public final String f6410a;

        public C1998h(String str) {
            this.f6410a = str;
        }

        @Override // com.taobao.agoo.TaobaoRegister.InterfaceC1992b
        /* renamed from: a */
        public byte[] mo5797a(String str, String str2) {
            return C2001a.m5810c(str, str2, this.f6410a);
        }
    }

    public TaobaoRegister() {
        throw new UnsupportedOperationException();
    }

    public static synchronized void addAlias(Context context, String str, ICallback iCallback) {
        ALog.m5729i(TAG, "addAlias", "alias", str);
        ICallback iCallbackCheckNull = checkNull(iCallback);
        if (context != null && str != null) {
            doAliasOperation("addAlias", context, iCallbackCheckNull, new C1991a(str, null));
            return;
        }
        ErrorCode errorCodeBuild = C1999a.INVALID_ARG.copy().detail("addAlias " + context + " " + str).build();
        iCallbackCheckNull.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
    }

    @Deprecated
    public static void bindAgoo(Context context, String str, String str2, CallBack callBack) {
        bindAgoo(context, null);
    }

    public static ICallback checkNull(ICallback iCallback) {
        return iCallback == null ? new ICallback() { // from class: com.taobao.agoo.TaobaoRegister.3
            @Override // com.taobao.agoo.ICallback
            public void onFailure(String str, String str2) {
            }

            @Override // com.taobao.agoo.ICallback
            public void onSuccess() {
            }
        } : iCallback;
    }

    public static void clearNotificationCreatedByAliyun(Context context) {
        if (C1169o0.f3364a == null) {
            C1169o0.f3364a = new C1169o0();
        }
        if (C1169o0.f3364a == null) {
            throw null;
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        while (!C1169o0.f3365b.isEmpty()) {
            notificationManager.cancel(C1169o0.f3365b.get(r0.size() - 1).intValue());
            C1169o0.f3365b.remove(r0.size() - 1);
        }
    }

    public static void clickMessage(CPushMessage cPushMessage) {
        C1319u0 c1319u0 = C1344v0.f3913d;
        if (c1319u0 == null) {
            throw null;
        }
        if (cPushMessage == null || TextUtils.isEmpty(cPushMessage.f1447a)) {
            ALog.m5728e("MPS:CloudPushService", "message is null", new Object[0]);
            return;
        }
        if (c1319u0.f3831a == null) {
            ALog.m5728e("MPS:CloudPushService", "context is null", new Object[0]);
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setAction(C1344v0.f3911b);
            intent.setClassName(c1319u0.f3831a.getPackageName(), MsgService.class.getName());
            intent.putExtra(AgooConstants.ACTION_TYPE, AgooConstants.MESSAGE_TYPE_OPEN);
            intent.putExtra("msgId", cPushMessage.f1447a);
            intent.putExtra(AgooConstants.MESSAGE_EXT, cPushMessage.f1451e);
            c1319u0.f3831a.startService(intent);
        } catch (Throwable th) {
            ALog.m5727e("MPS:CloudPushService", "Click message event upload failed.", th, new Object[0]);
        }
    }

    public static void dismissMessage(CPushMessage cPushMessage) {
        C1319u0 c1319u0 = C1344v0.f3913d;
        if (c1319u0 == null) {
            throw null;
        }
        if (cPushMessage == null || TextUtils.isEmpty(cPushMessage.f1447a)) {
            ALog.m5728e("MPS:CloudPushService", "message is null", new Object[0]);
            return;
        }
        if (c1319u0.f3831a == null) {
            ALog.m5728e("MPS:CloudPushService", "context is null", new Object[0]);
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setAction(C1344v0.f3911b);
            intent.setClassName(c1319u0.f3831a.getPackageName(), MsgService.class.getName());
            intent.putExtra(AgooConstants.ACTION_TYPE, AgooConstants.MESSAGE_TYPE_DELETE);
            intent.putExtra("msgId", cPushMessage.f1447a);
            intent.putExtra(AgooConstants.MESSAGE_EXT, cPushMessage.f1451e);
            c1319u0.f3831a.startService(intent);
        } catch (Throwable th) {
            ALog.m5727e("MPS:CloudPushService", "Dismiss message event upload failed.", th, new Object[0]);
        }
    }

    public static void doAliasOperation(String str, Context context, ICallback iCallback, InterfaceC1992b interfaceC1992b) {
        ErrorCode errorCodeBuild;
        ALog.m5729i(TAG, str, new Object[0]);
        String deviceToken = Config.getDeviceToken(context);
        String strM5830b = Config.m5830b(context);
        if (TextUtils.isEmpty(strM5830b) || TextUtils.isEmpty(deviceToken) || context == null) {
            if (iCallback != null) {
                if (context == null) {
                    errorCodeBuild = C1999a.INVALID_ARG.copy().detail(str + " context is null").build();
                } else if (TextUtils.isEmpty(deviceToken)) {
                    errorCodeBuild = C1999a.INVALID_ARG.copy().detail(str + " deviceId is null").build();
                } else {
                    errorCodeBuild = C1999a.INVALID_ARG.copy().detail(str + " appKey is null").build();
                }
                iCallback.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
            }
            ALog.m5728e(TAG, CompilerOutline.m1760e(str, " param null"), "appkey", strM5830b, "deviceId", deviceToken, "context", context);
            return;
        }
        try {
            if (mRequestListener == null) {
                mRequestListener = new C2005b(context.getApplicationContext());
            }
            IACCSManager accsInstance = ACCSManager.getAccsInstance(context, strM5830b, Config.m5832c(context));
            if (!C2005b.f6439b.m5804b(context.getPackageName())) {
                if (iCallback != null) {
                    iCallback.onFailure(C1999a.AGOO_NOT_BIND.getCode(), C1999a.AGOO_NOT_BIND.getMsg());
                    return;
                }
                return;
            }
            accsInstance.registerDataListener(context, "AgooDeviceCmd", mRequestListener);
            String strSendRequest = accsInstance.sendRequest(context, new ACCSManager.AccsRequest(null, "AgooDeviceCmd", interfaceC1992b.mo5797a(strM5830b, deviceToken), null));
            if (TextUtils.isEmpty(strSendRequest)) {
                if (iCallback != null) {
                    iCallback.onFailure(C1999a.ACCS_CHECK_ERROR.getCode(), C1999a.ACCS_CHECK_ERROR.getMsg());
                }
            } else if (iCallback != null) {
                mRequestListener.f6440a.put(strSendRequest, iCallback);
            }
        } catch (Throwable th) {
            ALog.m5727e(TAG, str, th, new Object[0]);
        }
    }

    public static boolean isPushApi() {
        return AgooInnerService.class.getName().equals(AdapterGlobalClientInfo.mAgooCustomServiceName);
    }

    public static synchronized void listAlias(Context context, IListAliasCallback iListAliasCallback) {
        ALog.m5729i(TAG, "listAlias", new Object[0]);
        ICallback iCallbackCheckNull = checkNull(iListAliasCallback);
        if (context != null) {
            doAliasOperation("listAlias", context, iCallbackCheckNull, new C1993c(null));
        } else {
            ErrorCode errorCodeBuild = C1999a.INVALID_ARG.copy().detail("listAlias context is null").build();
            iCallbackCheckNull.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
        }
    }

    public static void pingApp(Context context, String str, String str2, String str3, int i) {
        AgooFactory.getInstance(context).getNotifyManager().pingApp(str, str2, str3, i);
    }

    @Deprecated
    public static synchronized void register(Context context, String str, String str2, String str3, IRegister iRegister) {
        register(context, str, str, str2, str3, iRegister);
    }

    public static synchronized void removeAlias(final Context context, ICallback iCallback) {
        ALog.m5729i(TAG, C2001a.JSON_CMD_REMOVEALIAS, new Object[0]);
        final ICallback iCallbackCheckNull = checkNull(iCallback);
        if (context != null) {
            doAliasOperation("removeAllAlias", context, new ICallback() { // from class: com.taobao.agoo.TaobaoRegister.5
                @Override // com.taobao.agoo.ICallback
                public void onFailure(String str, String str2) {
                    TaobaoRegister.doAliasOperation("listAlias", context, new IListAliasCallbackInner() { // from class: com.taobao.agoo.TaobaoRegister.5.1
                        @Override // com.taobao.agoo.ICallback
                        public void onFailure(String str3, String str4) {
                            ArrayList<String> arrayListM5820a = C2006b.m5820a(context);
                            if (arrayListM5820a == null || arrayListM5820a.size() <= 0) {
                                iCallbackCheckNull.onFailure(C1999a.REMOVE_ALIAS_FAIL_NO_ALIAS.getCode(), C1999a.REMOVE_ALIAS_FAIL_NO_ALIAS.getMsg());
                                return;
                            }
                            String str5 = arrayListM5820a.get(0);
                            String strM5818a = C2006b.m5818a(context, str5);
                            if (strM5818a == null || strM5818a.isEmpty() || str5 == null) {
                                iCallbackCheckNull.onFailure(C1999a.REMOVE_ALIAS_FAIL_NO_TOKEN.getCode(), C1999a.REMOVE_ALIAS_FAIL_NO_TOKEN.getMsg());
                                return;
                            }
                            C19895 c19895 = C19895.this;
                            ICallback iCallback2 = iCallbackCheckNull;
                            iCallback2.extra = str5;
                            TaobaoRegister.doAliasOperation(C2001a.JSON_CMD_REMOVEALIAS, context, iCallback2, new C1994d(str5, strM5818a, null));
                        }

                        @Override // com.taobao.agoo.IListAliasCallbackInner
                        public void onSuccess(Map<String, String> map) {
                            C19895 c19895 = C19895.this;
                            TaobaoRegister.removeAliasInList(context, map, iCallbackCheckNull);
                        }
                    }, new C1993c(null));
                }

                @Override // com.taobao.agoo.ICallback
                public void onSuccess() {
                    iCallbackCheckNull.onSuccess();
                }
            }, new C1995e(null));
        } else {
            ErrorCode errorCodeBuild = C1999a.INVALID_ARG.copy().detail("removeAlias before 2.4.x context is null").build();
            iCallbackCheckNull.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
        }
    }

    public static void removeAliasInList(Context context, Map<String, String> map, final ICallback iCallback) {
        if (map == null || map.size() == 0) {
            iCallback.onSuccess();
            return;
        }
        final ArrayList arrayList = new ArrayList(map.keySet());
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        for (final String str : map.keySet()) {
            doAliasOperation(C2001a.JSON_CMD_REMOVEALIAS, context, new ICallback() { // from class: com.taobao.agoo.TaobaoRegister.2
                @Override // com.taobao.agoo.ICallback
                public void onFailure(String str2, String str3) {
                    if (atomicBoolean.compareAndSet(false, true)) {
                        iCallback.onFailure(str2, str3);
                    }
                }

                @Override // com.taobao.agoo.ICallback
                public void onSuccess() {
                    arrayList.remove(str);
                    if (atomicBoolean.get() || arrayList.size() != 0) {
                        return;
                    }
                    iCallback.onSuccess();
                }
            }, new C1994d(str, map.get(str), null));
        }
    }

    public static synchronized void removeAllAliasOnCurrentDevice(Context context, ICallback iCallback) {
        ALog.m5729i(TAG, "removeAllAliasOnCurrentDevice ", new Object[0]);
        ICallback iCallbackCheckNull = checkNull(iCallback);
        if (context != null) {
            doAliasOperation("removeAllAliasOnCurrentDevice", context, iCallbackCheckNull, new C1995e(null));
            return;
        }
        ErrorCode errorCodeBuild = C1999a.INVALID_ARG.copy().detail("removeAllAliasOnCurrentDevice " + context).build();
        iCallbackCheckNull.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
    }

    public static synchronized void removeAllAliasOnCurrentDeviceAndAddThisAlias(Context context, String str, ICallback iCallback) {
        ALog.m5729i(TAG, "removeAllAliasOnCurrentDeviceAndAddThisAlias alias : " + str, new Object[0]);
        ICallback iCallbackCheckNull = checkNull(iCallback);
        if (context != null && str != null) {
            doAliasOperation("removeAllAliasOnCurrentDeviceAndAddThisAlias", context, iCallbackCheckNull, new C1998h(str));
            return;
        }
        ErrorCode errorCodeBuild = C1999a.INVALID_ARG.copy().detail("removeAllAliasOnCurrentDeviceAndAddThisAlias context is null").build();
        iCallbackCheckNull.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
    }

    public static synchronized void removeAllDeviceOnThisAliasAndBindCurrentDevice(Context context, String str, ICallback iCallback) {
        ALog.m5729i(TAG, "removeAllDeviceOnThisAliasAndBindCurrentDevice alias : " + str, new Object[0]);
        ICallback iCallbackCheckNull = checkNull(iCallback);
        if (context != null && str != null) {
            doAliasOperation("removeAllDeviceOnThisAliasAndBindCurrentDevice", context, iCallbackCheckNull, new C1996f(str));
            return;
        }
        ErrorCode errorCodeBuild = C1999a.INVALID_ARG.copy().detail("removeAllDeviceOnThisAliasAndBindCurrentDevice context is null").build();
        iCallbackCheckNull.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
    }

    public static void reset() {
        C2000a c2000a = C2005b.f6439b;
        if (c2000a != null) {
            c2000a.m5802a();
        }
        try {
            ACCSClient.getAccsClient(Config.f6457a).reset();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        Config.m5826a(GlobalClientInfo.getContext());
    }

    public static synchronized void resetDeviceAndAliasToOne2One(Context context, String str, ICallback iCallback) {
        ALog.m5729i(TAG, "resetDeviceAndAliasToOne2One alias : " + str, new Object[0]);
        ICallback iCallbackCheckNull = checkNull(iCallback);
        if (context != null && str != null) {
            doAliasOperation("resetDeviceAndAliasToOne2One", context, iCallbackCheckNull, new C1997g(str));
            return;
        }
        ErrorCode errorCodeBuild = C1999a.INVALID_ARG.copy().detail("resetDeviceAndAliasToOne2One " + context + " " + str).build();
        iCallbackCheckNull.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
    }

    public static synchronized void sendSwitch(Context context, ICallback iCallback, boolean z) {
        String deviceToken;
        String strM5830b;
        String deviceId;
        try {
            deviceToken = Config.getDeviceToken(context);
            strM5830b = Config.m5830b(context);
            deviceId = UtilityImpl.getDeviceId(context);
        } catch (Throwable th) {
            ALog.m5727e(TAG, "sendSwitch", th, new Object[0]);
        }
        if (!TextUtils.isEmpty(strM5830b) && context != null && (!TextUtils.isEmpty(deviceToken) || !TextUtils.isEmpty(deviceId))) {
            IACCSManager accsInstance = ACCSManager.getAccsInstance(context, strM5830b, Config.m5832c(context));
            if (mRequestListener == null) {
                mRequestListener = new C2005b(context.getApplicationContext());
            }
            accsInstance.registerDataListener(context, "AgooDeviceCmd", mRequestListener);
            String strSendRequest = accsInstance.sendRequest(context, new ACCSManager.AccsRequest(null, "AgooDeviceCmd", C2004d.m5815a(strM5830b, deviceToken, deviceId, z), null));
            if (TextUtils.isEmpty(strSendRequest)) {
                if (iCallback != null) {
                    iCallback.onFailure(C1999a.ACCS_CHECK_ERROR.getCode(), C1999a.ACCS_CHECK_ERROR.getMsg());
                }
            } else if (iCallback != null) {
                mRequestListener.f6440a.put(strSendRequest, iCallback);
            }
            return;
        }
        if (iCallback != null) {
            ErrorCode errorCodeBuild = C1999a.INVALID_ARG.copy().detail("sendSwitch " + context + " " + strM5830b + " " + deviceToken + " " + deviceId).build();
            iCallback.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
        }
        ALog.m5728e(TAG, "sendSwitch param null", "appkey", strM5830b, "deviceId", deviceToken, "context", context, C2004d.JSON_CMD_ENABLEPUSH, Boolean.valueOf(z));
    }

    public static synchronized void setAccsConfigTag(Context context, String str) {
        Config.f6457a = str;
        AccsClientConfig configByTag = AccsClientConfig.getConfigByTag(str);
        if (configByTag == null) {
            throw new RuntimeException("accs config not exist!! please set accs config first!!");
        }
        ALog.m5729i(TAG, "setAccsConfigTag", "config", configByTag.toString());
        AdapterGlobalClientInfo.mAuthCode = configByTag.getAuthCode();
        Config.setAgooAppKey(context, configByTag.getAppKey());
        String appSecret = configByTag.getAppSecret();
        AdapterUtilityImpl.mAgooAppSecret = appSecret;
        if (!TextUtils.isEmpty(appSecret)) {
            AdapterGlobalClientInfo.mSecurityType = 2;
        }
        C1344v0.m2852a(context);
    }

    public static void setAgooMsgReceiveService(String str) {
        AdapterGlobalClientInfo.mAgooCustomServiceName = str;
    }

    public static synchronized void setAlias(final Context context, final String str, ICallback iCallback) {
        ALog.m5729i(TAG, "setAlias " + str, new Object[0]);
        final ICallback iCallbackCheckNull = checkNull(iCallback);
        if (context != null && str != null) {
            doAliasOperation("listAlias", context, new IListAliasCallbackInner() { // from class: com.taobao.agoo.TaobaoRegister.4
                @Override // com.taobao.agoo.ICallback
                public void onFailure(String str2, String str3) {
                    ICallback iCallback2 = iCallbackCheckNull;
                    String str4 = str;
                    iCallback2.extra = str4;
                    TaobaoRegister.doAliasOperation(C2001a.JSON_CMD_ADDALIAS, context, iCallback2, new C1991a(str4, null));
                }

                @Override // com.taobao.agoo.IListAliasCallbackInner
                public void onSuccess(Map<String, String> map) {
                    TaobaoRegister.removeAliasInList(context, map, new ICallback() { // from class: com.taobao.agoo.TaobaoRegister.4.1
                        @Override // com.taobao.agoo.ICallback
                        public void onFailure(String str2, String str3) {
                            iCallbackCheckNull.onFailure(str2, str3);
                        }

                        @Override // com.taobao.agoo.ICallback
                        public void onSuccess() {
                            C19884 c19884 = C19884.this;
                            TaobaoRegister.doAliasOperation(C2001a.JSON_CMD_ADDALIAS, context, iCallbackCheckNull, new C1991a(str, null));
                        }
                    });
                }
            }, new C1993c(null));
            return;
        }
        ErrorCode errorCodeBuild = C1999a.INVALID_ARG.copy().detail("setAlias " + context + " " + str).build();
        iCallbackCheckNull.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
    }

    @Deprecated
    public static void setBuilderSound(Context context, String str) {
    }

    public static void setDoNotDisturb(int i, int i2, int i3, int i4, InterfaceC1068k0 interfaceC1068k0) {
        C1319u0 c1319u0 = C1344v0.f3913d;
        if (c1319u0 == null) {
            throw null;
        }
        ALog.m5726d("MPS:CloudPushService", "setDoNotDisturb " + i + ":" + i2 + "-" + i3 + ":" + i4, new Object[0]);
        if (i < 0 || i > 23 || i3 < 0 || i3 > 23 || i2 < 0 || i2 > 59 || i4 < 0 || i4 > 59) {
            if (interfaceC1068k0 != null) {
                interfaceC1068k0.onFailed(C1999a.INVALID_ARG.getCode(), C1999a.INVALID_ARG.getMsg());
                return;
            }
            return;
        }
        c1319u0.f3836f = true;
        c1319u0.f3832b = i;
        c1319u0.f3833c = i2;
        c1319u0.f3834d = i3;
        c1319u0.f3835e = i4;
        if (interfaceC1068k0 != null) {
            interfaceC1068k0.onSuccess("");
        }
    }

    public static void setDoNotDisturbMode(boolean z) {
        C1344v0.f3913d.f3836f = z;
    }

    public static void setEnv(Context context, @AccsClientConfig.ENV int i) {
        ACCSClient.setEnvironment(context, i);
    }

    @Deprecated
    public static void setNotificationIcon(Context context, int i) {
    }

    @Deprecated
    public static void setNotificationSound(Context context, boolean z) {
    }

    @Deprecated
    public static void setNotificationVibrate(Context context, boolean z) {
    }

    public static void setPushMsgReceiveService(Class cls) {
        AdapterGlobalClientInfo.mAgooCustomServiceName = AgooInnerService.class.getName();
        C1344v0.f3912c = cls;
    }

    public static void setReportPushArrive(InterfaceC1144n0 interfaceC1144n0) {
        C1344v0.f3914e = interfaceC1144n0;
    }

    @Deprecated
    public static void unBindAgoo(Context context, String str, String str2, CallBack callBack) {
        unbindAgoo(context, null);
    }

    public static void unbindAgoo(Context context, ICallback iCallback) {
        sendSwitch(context, iCallback, false);
        UTMini.getInstance().commitEvent(66001, "unregister", UtilityImpl.getDeviceId(context));
    }

    @Deprecated
    public static void unregister(Context context, CallBack callBack) {
        unbindAgoo(context, null);
    }

    public static void bindAgoo(Context context, ICallback iCallback) {
        sendSwitch(context, iCallback, true);
        UTMini.getInstance().commitEvent(66001, "bindAgoo", UtilityImpl.getDeviceId(context));
    }

    public static synchronized void register(Context context, String str, String str2, String str3, String str4, IRegister iRegister) {
        if (context != null) {
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                ALog.m5729i(TAG, C2003c.JSON_CMD_REGISTER, Constants.KEY_APP_KEY, str2, Constants.KEY_CONFIG_TAG, str);
                Context applicationContext = context.getApplicationContext();
                Config.f6457a = str;
                Config.setAgooAppKey(context, str2);
                AdapterUtilityImpl.mAgooAppSecret = str3;
                if (!TextUtils.isEmpty(str3)) {
                    AdapterGlobalClientInfo.mSecurityType = 2;
                }
                C1344v0.m2852a(context);
                AccsClientConfig configByTag = AccsClientConfig.getConfigByTag(str);
                if (configByTag == null) {
                    new AccsClientConfig.Builder().setAppKey(str2).setAppSecret(str3).setTag(str).build();
                } else {
                    AdapterGlobalClientInfo.mAuthCode = configByTag.getAuthCode();
                }
                IACCSManager accsInstance = ACCSManager.getAccsInstance(context, str2, str);
                accsInstance.bindApp(applicationContext, str2, str3, str4, new C2007c(iRegister, applicationContext, accsInstance, str2, str4));
                return;
            }
        }
        ALog.m5728e(TAG, "register params null", "appkey", str2, Constants.KEY_CONFIG_TAG, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static synchronized void removeAlias(final Context context, final String str, ICallback iCallback) {
        ALog.m5729i(TAG, "removeAlias " + str, new Object[0]);
        final ICallback iCallbackCheckNull = checkNull(iCallback);
        if (context != null && str != null) {
            doAliasOperation(C2001a.JSON_CMD_REMOVEALIAS, context, new ICallback() { // from class: com.taobao.agoo.TaobaoRegister.6
                @Override // com.taobao.agoo.ICallback
                public void onFailure(final String str2, final String str3) {
                    TaobaoRegister.doAliasOperation("listAlias", context, new IListAliasCallbackInner() { // from class: com.taobao.agoo.TaobaoRegister.6.1
                        @Override // com.taobao.agoo.ICallback
                        public void onFailure(String str4, String str5) {
                            iCallbackCheckNull.onFailure(str4, str5);
                        }

                        @Override // com.taobao.agoo.IListAliasCallbackInner
                        public void onSuccess(Map<String, String> map) {
                            String str4 = map.get(str);
                            if (str4 == null) {
                                iCallbackCheckNull.onFailure(str2, str3);
                            } else {
                                C19906 c19906 = C19906.this;
                                TaobaoRegister.doAliasOperation(C2001a.JSON_CMD_REMOVEALIAS, context, iCallbackCheckNull, new C1994d(str, str4, null));
                            }
                        }
                    }, new C1993c(null));
                }

                @Override // com.taobao.agoo.ICallback
                public void onSuccess() {
                    iCallbackCheckNull.onSuccess();
                }
            }, new C1994d(str, null, 0 == true ? 1 : 0));
            return;
        }
        ErrorCode errorCodeBuild = C1999a.INVALID_ARG.copy().detail("removeAlias " + context + " " + str).build();
        iCallbackCheckNull.onFailure(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
    }

    public static void clickMessage(Context context, String str, String str2) {
        AgooFactory.getInstance(context).clickMessage(context, str, str2);
    }

    public static void dismissMessage(Context context, String str, String str2) {
        AgooFactory.getInstance(context).dismissMessage(context, str, str2);
    }
}
