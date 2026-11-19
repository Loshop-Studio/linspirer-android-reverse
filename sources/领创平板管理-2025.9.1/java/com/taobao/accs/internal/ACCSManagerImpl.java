package com.taobao.accs.internal;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import anet.channel.SessionCenter;
import com.alibaba.sdk.android.logger.ILog;
import com.huawei.hem.C0948f6;
import com.taobao.accs.ACCSClient;
import com.taobao.accs.ACCSManager;
import com.taobao.accs.AccsClientConfig;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.AccsState;
import com.taobao.accs.IACCSManager;
import com.taobao.accs.IAppReceiver;
import com.taobao.accs.ILoginInfo;
import com.taobao.accs.base.AccsAbstractDataListener;
import com.taobao.accs.base.TaoBaseService;
import com.taobao.accs.client.C1910a;
import com.taobao.accs.client.GlobalClientInfo;
import com.taobao.accs.common.Constants;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.data.C1924g;
import com.taobao.accs.data.Message;
import com.taobao.accs.net.AbstractC1940b;
import com.taobao.accs.net.C1948j;
import com.taobao.accs.p072ut.monitor.NetPerformanceMonitor;
import com.taobao.accs.utl.AccsLogger;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.AppMonitorAdapter;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.accs.utl.C1975c;
import com.taobao.accs.utl.UtilityImpl;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ACCSManagerImpl implements IACCSManager {

    /* renamed from: a */
    public AbstractC1940b f6168a;

    /* renamed from: b */
    public int f6169b = 0;

    /* renamed from: c */
    public boolean f6170c = false;

    /* renamed from: d */
    public String f6171d;

    /* renamed from: e */
    public ILog f6172e;

    public ACCSManagerImpl(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        GlobalClientInfo.f6059a = applicationContext;
        this.f6168a = new C1948j(applicationContext, 1, str);
        this.f6171d = str;
        StringBuilder sbM1765j = C0948f6.m1765j("ACCSMgrImpl_");
        sbM1765j.append(this.f6168a.f6221m);
        this.f6172e = AccsLogger.getLogger(sbM1765j.toString());
        ThreadPoolExecutorFactory.getScheduledExecutor().schedule(new RunnableC1928a(this, str, context), 64L, TimeUnit.MILLISECONDS);
    }

    @Override // com.taobao.accs.IACCSManager
    public void bindApp(Context context, String str, String str2, IAppReceiver iAppReceiver) {
        bindApp(context, str, "accs", str2, iAppReceiver);
    }

    @Override // com.taobao.accs.IACCSManager
    public void bindService(Context context, String str) {
        this.f6172e.mo670i("bindService", Constants.KEY_SERVICE_ID, str);
        if (m5591a(context)) {
            m5587a(context, 5, str, (String) null);
            return;
        }
        Intent intentM5586a = m5586a(context, 5);
        String strM5646i = this.f6168a.m5646i();
        if (TextUtils.isEmpty(strM5646i)) {
            this.f6172e.mo666e("appKey null");
            return;
        }
        intentM5586a.putExtra(Constants.KEY_APP_KEY, strM5646i);
        intentM5586a.putExtra(Constants.KEY_SERVICE_ID, str);
        if (UtilityImpl.isMainProcess(context)) {
            Message messageM5502b = Message.m5502b(this.f6168a, intentM5586a);
            if (messageM5502b.m5516e() != null) {
                messageM5502b.m5516e().setDataId(messageM5502b.f6117q);
                messageM5502b.m5516e().setMsgType(3);
                NetPerformanceMonitor netPerformanceMonitorM5516e = messageM5502b.m5516e();
                URL url = messageM5502b.f6106f;
                netPerformanceMonitorM5516e.setHost(url != null ? url.toString() : "");
            }
            m5588a(context, messageM5502b, 5, false);
        } else {
            this.f6172e.mo671w("bindService not main process, ignored");
        }
        this.f6168a.m5637b(context.getApplicationContext());
    }

    @Override // com.taobao.accs.IACCSManager
    public void bindUser(Context context, String str) {
        bindUser(context, str, false);
    }

    @Override // com.taobao.accs.IACCSManager
    public boolean cancel(Context context, String str) {
        return this.f6168a.mo5633a(str);
    }

    @Override // com.taobao.accs.IACCSManager
    public void cleanLocalBindInfo() {
        this.f6168a.m5647j().m5477a();
    }

    @Override // com.taobao.accs.IACCSManager
    public void clearLoginInfo(Context context) {
        GlobalClientInfo.getInstance(context).clearLoginInfoImpl();
    }

    @Override // com.taobao.accs.IACCSManager
    public void disconnect() {
        this.f6168a.mo5651n();
    }

    @Override // com.taobao.accs.IACCSManager
    public void forceDisableService(Context context) {
    }

    @Override // com.taobao.accs.IACCSManager
    public void forceEnableService(Context context) {
    }

    @Override // com.taobao.accs.IACCSManager
    public Map<String, Boolean> forceReConnectChannel() {
        SessionCenter.getInstance(this.f6168a.f6217i.getAppKey()).forceRecreateAccsSession();
        return getChannelState();
    }

    @Override // com.taobao.accs.IACCSManager
    public Map<String, Boolean> getChannelState() {
        String strMo5634b = this.f6168a.mo5634b((String) null);
        HashMap map = new HashMap();
        map.put(strMo5634b, Boolean.FALSE);
        if (SessionCenter.getInstance(this.f6168a.f6217i.getAppKey()).getThrowsException(strMo5634b, 60000L) != null) {
            map.put(strMo5634b, Boolean.TRUE);
        }
        this.f6172e.mo670i("getChannelState", map);
        return map;
    }

    @Override // com.taobao.accs.IACCSManager
    public int getLastConnectErrorCode() {
        return this.f6168a.mo5650m();
    }

    @Override // com.taobao.accs.IACCSManager
    public String getUserUnit() {
        return null;
    }

    @Override // com.taobao.accs.IACCSManager
    public boolean isChannelError(int i) {
        return AccsErrorCode.isChannelError(i);
    }

    @Override // com.taobao.accs.IACCSManager
    public boolean isConnected() {
        return this.f6168a.mo5649l();
    }

    @Override // com.taobao.accs.IACCSManager
    public boolean isNetworkReachable(Context context) {
        return UtilityImpl.m5766g(context);
    }

    @Override // com.taobao.accs.IACCSManager
    public void reconnect() {
        this.f6168a.mo5652o();
    }

    @Override // com.taobao.accs.IACCSManager
    public void registerDataListener(Context context, String str, AccsAbstractDataListener accsAbstractDataListener) {
        GlobalClientInfo.getInstance(context).registerListener(str, accsAbstractDataListener);
    }

    @Override // com.taobao.accs.IACCSManager
    public void registerSerivce(Context context, String str, String str2) {
        GlobalClientInfo.getInstance(context).registerService(str, str2);
    }

    @Override // com.taobao.accs.IACCSManager
    public void reset() {
        this.f6168a.m5653p();
        try {
            SharedPreferences.Editor editorEdit = GlobalClientInfo.f6059a.getSharedPreferences(Constants.SP_FILE_NAME, 0).edit();
            editorEdit.clear();
            editorEdit.apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
        C1910a.m5471a().m5475b(this.f6171d);
        this.f6170c = false;
    }

    @Override // com.taobao.accs.IACCSManager
    public void sendBusinessAck(String str, String str2, String str3, short s, String str4, Map<Integer, String> map) {
        this.f6168a.mo5625a();
        this.f6168a.m5638b(Message.m5491a(this.f6168a, str, str2, str3, true, s, str4, map), true);
    }

    @Override // com.taobao.accs.IACCSManager
    public String sendData(Context context, String str, String str2, byte[] bArr, String str3) {
        return sendData(context, str, str2, bArr, str3, null);
    }

    @Override // com.taobao.accs.IACCSManager
    public String sendPushResponse(Context context, ACCSManager.AccsRequest accsRequest, TaoBaseService.ExtraInfo extraInfo) {
        try {
        } catch (Throwable th) {
            String str = accsRequest.serviceId;
            StringBuilder sbM1765j = C0948f6.m1765j("push response ");
            sbM1765j.append(th.toString());
            AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, str, "1", sbM1765j.toString());
            this.f6172e.mo668e("sendPushResponse", Constants.KEY_DATA_ID, accsRequest.dataId, th);
        }
        if (context == null || accsRequest == null) {
            this.f6172e.mo668e("sendPushResponse input null", context, accsRequest, "extraInfo", extraInfo);
            AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, "", "1", "sendPushResponse null");
            return null;
        }
        AppMonitorAdapter.commitAlarmSuccess("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, "push response total");
        if (TextUtils.isEmpty(this.f6168a.m5646i())) {
            AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, accsRequest.serviceId, "1", "sendPushResponse appkey null");
            this.f6172e.mo668e("sendPushResponse appkey null", "dataid", accsRequest.dataId);
            return null;
        }
        if (TextUtils.isEmpty(accsRequest.dataId)) {
            synchronized (ACCSManagerImpl.class) {
                this.f6169b++;
                accsRequest.dataId = this.f6169b + "";
            }
        }
        if (extraInfo == null) {
            extraInfo = new TaoBaseService.ExtraInfo();
        }
        accsRequest.host = null;
        String packageName = context.getPackageName();
        extraInfo.fromPackage = packageName;
        this.f6172e.mo670i("sendPushResponse", Constants.KEY_HOST, extraInfo.fromHost, "pkg", packageName, Constants.KEY_DATA_ID, accsRequest.dataId);
        if (context.getPackageName().equals(extraInfo.fromPackage) && UtilityImpl.isMainProcess(context)) {
            sendRequest(context, accsRequest, context.getPackageName(), true);
        }
        return null;
    }

    @Override // com.taobao.accs.IACCSManager
    public String sendRequest(Context context, String str, String str2, byte[] bArr, String str3, String str4) {
        return sendRequest(context, str, str2, bArr, str3, str4, null);
    }

    @Override // com.taobao.accs.IACCSManager
    public void setLoginInfo(Context context, ILoginInfo iLoginInfo) {
        GlobalClientInfo.getInstance(context).setLoginInfoImpl(this.f6168a.f6221m, iLoginInfo);
    }

    @Override // com.taobao.accs.IACCSManager
    @Deprecated
    public void setMode(Context context, int i) {
        ACCSClient.setEnvironment(context, i);
    }

    @Override // com.taobao.accs.IACCSManager
    public void setProxy(Context context, String str, int i) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(Constants.SP_FILE_NAME, 0).edit();
        if (!TextUtils.isEmpty(str)) {
            editorEdit.putString(Constants.KEY_PROXY_HOST, str);
        }
        editorEdit.putInt(Constants.KEY_PROXY_PORT, i);
        editorEdit.apply();
    }

    @Override // com.taobao.accs.IACCSManager
    public void startInAppConnection(Context context, String str, String str2, IAppReceiver iAppReceiver) {
        startInAppConnection(context, str, null, str2, iAppReceiver);
    }

    @Override // com.taobao.accs.IACCSManager
    public void unRegisterDataListener(Context context, String str) {
        GlobalClientInfo.getInstance(context).unregisterListener(str);
    }

    @Override // com.taobao.accs.IACCSManager
    public void unRegisterSerivce(Context context, String str) {
        GlobalClientInfo.getInstance(context).unRegisterService(str);
    }

    @Override // com.taobao.accs.IACCSManager
    public void unbindApp(Context context) {
        this.f6172e.mo669i("unbindApp");
        this.f6170c = false;
        if (m5591a(context)) {
            m5587a(context, 2, (String) null, (String) null);
            return;
        }
        Intent intentM5586a = m5586a(context, 2);
        if (UtilityImpl.isMainProcess(context)) {
            m5588a(context, Message.m5489a(this.f6168a, intentM5586a), 2, false);
        }
    }

    @Override // com.taobao.accs.IACCSManager
    public void unbindService(Context context, String str) {
        this.f6172e.mo670i("unbindService", Constants.KEY_SERVICE_ID, str);
        if (m5591a(context)) {
            m5587a(context, 6, str, (String) null);
            return;
        }
        Intent intentM5586a = m5586a(context, 6);
        String strM5646i = this.f6168a.m5646i();
        if (TextUtils.isEmpty(strM5646i)) {
            this.f6172e.mo666e("appKey null");
            return;
        }
        intentM5586a.putExtra(Constants.KEY_APP_KEY, strM5646i);
        intentM5586a.putExtra(Constants.KEY_SERVICE_ID, str);
        if (UtilityImpl.isMainProcess(context)) {
            m5588a(context, Message.m5504c(this.f6168a, intentM5586a), 6, false);
        } else {
            this.f6172e.mo671w("unbindService not main process, ignored");
        }
    }

    @Override // com.taobao.accs.IACCSManager
    public void unbindUser(Context context) {
        this.f6172e.mo669i("unBindUse");
        if (m5591a(context)) {
            m5587a(context, 4, (String) null, (String) null);
            return;
        }
        Intent intentM5586a = m5586a(context, 4);
        String strM5646i = this.f6168a.m5646i();
        if (TextUtils.isEmpty(strM5646i)) {
            this.f6172e.mo666e("appKey null");
            return;
        }
        intentM5586a.putExtra(Constants.KEY_APP_KEY, strM5646i);
        if (UtilityImpl.isMainProcess(context)) {
            m5588a(context, Message.m5507e(this.f6168a, intentM5586a), 4, false);
        } else {
            this.f6172e.mo671w("unBindUser not main process, ignored");
        }
    }

    @Override // com.taobao.accs.IACCSManager
    public void updateConfig(AccsClientConfig accsClientConfig) {
        AbstractC1940b abstractC1940b = this.f6168a;
        if (abstractC1940b instanceof C1948j) {
            ((C1948j) abstractC1940b).m5678a(accsClientConfig);
        }
    }

    @Override // com.taobao.accs.IACCSManager
    public void bindApp(Context context, String str, String str2, String str3, IAppReceiver iAppReceiver) {
        if (context == null) {
            return;
        }
        this.f6170c = true;
        this.f6172e.mo665d("bindApp", Constants.KEY_APP_KEY, str);
        Message messageM5493a = Message.m5493a(context.getPackageName(), 1);
        if (this.f6168a.m5648k() && TextUtils.isEmpty(this.f6168a.f6217i.getAppSecret())) {
            this.f6172e.mo671w("isSecurityOff and null secret");
            this.f6168a.m5627a(messageM5493a, AccsErrorCode.APPSECRET_NULL);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.f6172e.mo671w("appkey null");
            this.f6168a.m5627a(messageM5493a, AccsErrorCode.APPKEY_NULL);
            return;
        }
        AbstractC1940b abstractC1940b = this.f6168a;
        abstractC1940b.f6209a = str3;
        abstractC1940b.f6210b = str;
        abstractC1940b.f6217i.getAppSecret();
        UtilityImpl.m5762e(context, str);
        if (iAppReceiver != null) {
            C1910a.m5471a().m5473a(this.f6171d, C1975c.m5774a(iAppReceiver));
        }
        m5589a(context, str, str3);
    }

    @Override // com.taobao.accs.IACCSManager
    public void bindUser(Context context, String str, boolean z) {
        try {
            this.f6172e.mo670i("bindUser", "userId", str, "force", Boolean.valueOf(z));
            if (m5591a(context)) {
                m5587a(context, 3, (String) null, (String) null);
                return;
            }
            Intent intentM5586a = m5586a(context, 3);
            String strM5646i = this.f6168a.m5646i();
            if (TextUtils.isEmpty(strM5646i)) {
                this.f6172e.mo666e("appkey null");
                return;
            }
            if (UtilityImpl.m5755c(context) || z) {
                this.f6172e.mo664d("force bind user");
                intentM5586a.putExtra(Constants.KEY_FOUCE_BIND, true);
                z = true;
            }
            intentM5586a.putExtra(Constants.KEY_APP_KEY, strM5646i);
            intentM5586a.putExtra(Constants.KEY_USER_ID, str);
            if (UtilityImpl.isMainProcess(context)) {
                Message messageM5506d = Message.m5506d(this.f6168a, intentM5586a);
                if (messageM5506d.m5516e() != null) {
                    messageM5506d.m5516e().setDataId(messageM5506d.f6117q);
                    messageM5506d.m5516e().setMsgType(2);
                    messageM5506d.m5516e().setHost(messageM5506d.f6106f != null ? messageM5506d.f6106f.toString() : "");
                }
                m5588a(context, messageM5506d, 3, z);
            } else {
                this.f6172e.mo671w("bindUser not main process, ignored");
            }
            this.f6168a.m5637b(context.getApplicationContext());
        } catch (Throwable th) {
            this.f6172e.mo667e("bindUser", th);
        }
    }

    @Override // com.taobao.accs.IACCSManager
    public String sendData(Context context, String str, String str2, byte[] bArr, String str3, String str4) {
        return sendData(context, str, str2, bArr, str3, str4, null);
    }

    @Override // com.taobao.accs.IACCSManager
    public String sendRequest(Context context, String str, String str2, byte[] bArr, String str3, String str4, URL url) {
        return sendRequest(context, new ACCSManager.AccsRequest(str, str2, bArr, str3, str4, url, null));
    }

    @Override // com.taobao.accs.IACCSManager
    public void startInAppConnection(Context context, String str, String str2, String str3, IAppReceiver iAppReceiver) {
        if (iAppReceiver != null) {
            C1910a.m5471a().m5473a(this.f6171d, C1975c.m5774a(iAppReceiver));
        }
        if (!UtilityImpl.isMainProcess(context)) {
            this.f6172e.mo671w("inapp only init in main process!");
            return;
        }
        this.f6172e.mo670i("startInAppConnection", str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!TextUtils.equals(this.f6168a.m5646i(), str)) {
            AbstractC1940b abstractC1940b = this.f6168a;
            abstractC1940b.f6209a = str3;
            abstractC1940b.f6210b = str;
            abstractC1940b.f6217i.getAppSecret();
            UtilityImpl.m5762e(context, str);
        }
        this.f6168a.mo5625a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5589a(Context context, String str, String str2) {
        Intent intentM5586a = m5586a(context, 1);
        try {
            String str3 = GlobalClientInfo.getInstance(context).getPackageInfo().versionName;
            boolean z = UtilityImpl.m5755c(context) || UtilityImpl.utdidChanged(Constants.SP_FILE_NAME, context);
            if (z) {
                this.f6172e.mo664d("force bindApp");
                intentM5586a.putExtra(Constants.KEY_FOUCE_BIND, true);
            }
            intentM5586a.putExtra(Constants.KEY_APP_KEY, str);
            intentM5586a.putExtra(Constants.KEY_TTID, str2);
            intentM5586a.putExtra("appVersion", str3);
            intentM5586a.putExtra("app_sercet", this.f6168a.f6217i.getAppSecret());
            if (UtilityImpl.isMainProcess(context)) {
                Message messageM5485a = Message.m5485a(this.f6168a, context, intentM5586a);
                if (messageM5485a.m5516e() != null) {
                    messageM5485a.m5516e().setDataId(messageM5485a.f6117q);
                    messageM5485a.m5516e().setMsgType(1);
                    messageM5485a.m5516e().setHost(messageM5485a.f6106f != null ? messageM5485a.f6106f.toString() : "");
                }
                m5588a(context, messageM5485a, 1, z);
            } else {
                this.f6172e.mo671w("bindApp only allow in main process");
            }
            this.f6168a.m5637b(context.getApplicationContext());
        } catch (Throwable th) {
            this.f6172e.mo667e("bindApp exception", th);
        }
    }

    @Override // com.taobao.accs.IACCSManager
    public String sendData(Context context, String str, String str2, byte[] bArr, String str3, String str4, URL url) {
        return sendData(context, new ACCSManager.AccsRequest(str, str2, bArr, str3, str4, url, null));
    }

    @Override // com.taobao.accs.IACCSManager
    public String sendRequest(Context context, ACCSManager.AccsRequest accsRequest, String str, boolean z) {
        try {
        } catch (Throwable th) {
            if (accsRequest != null) {
                String str2 = accsRequest.serviceId;
                StringBuilder sbM1765j = C0948f6.m1765j("request ");
                sbM1765j.append(th.toString());
                AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, str2, "1", sbM1765j.toString());
                this.f6172e.mo668e("sendRequest", Constants.KEY_DATA_ID, accsRequest.dataId, th);
            }
        }
        if (accsRequest == null) {
            this.f6172e.mo666e("sendRequest request null");
            AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, null, "1", "request null");
            return null;
        }
        if (!UtilityImpl.isMainProcess(context)) {
            this.f6172e.mo666e("sendRequest not in mainprocess");
            return null;
        }
        if (TextUtils.isEmpty(accsRequest.dataId)) {
            synchronized (ACCSManagerImpl.class) {
                this.f6169b++;
                accsRequest.dataId = this.f6169b + "";
            }
        }
        if (TextUtils.isEmpty(this.f6168a.m5646i())) {
            AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, accsRequest.serviceId, "1", "request appkey null");
            this.f6172e.mo668e("sendRequest appkey null", Constants.KEY_DATA_ID, accsRequest.dataId);
            return null;
        }
        this.f6168a.mo5625a();
        if (str == null) {
            str = context.getPackageName();
        }
        Message messageM5488a = Message.m5488a(this.f6168a, context, str, Constants.TARGET_SERVICE_PRE, accsRequest, z);
        if (messageM5488a.m5516e() != null) {
            messageM5488a.m5516e().onSend();
        }
        this.f6168a.m5638b(messageM5488a, true);
        return accsRequest.dataId;
    }

    @Override // com.taobao.accs.IACCSManager
    public String sendData(Context context, ACCSManager.AccsRequest accsRequest) {
        try {
        } catch (Throwable th) {
            String str = accsRequest.serviceId;
            StringBuilder sbM1765j = C0948f6.m1765j("data ");
            sbM1765j.append(th.toString());
            AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, str, "1", sbM1765j.toString());
            this.f6172e.mo668e("sendData", Constants.KEY_DATA_ID, accsRequest.dataId, th);
        }
        if (!UtilityImpl.isMainProcess(context)) {
            this.f6172e.mo666e("sendData not in mainprocess");
            return null;
        }
        if (accsRequest == null) {
            AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, "", "1", "data null");
            this.f6172e.mo666e("sendData dataInfo null");
            return null;
        }
        if (TextUtils.isEmpty(accsRequest.dataId)) {
            synchronized (ACCSManagerImpl.class) {
                this.f6169b++;
                accsRequest.dataId = this.f6169b + "";
            }
        }
        if (TextUtils.isEmpty(this.f6168a.m5646i())) {
            AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_REQ_ERROR, accsRequest.serviceId, "1", "data appkey null");
            this.f6172e.mo668e("sendData appkey null", Constants.KEY_DATA_ID, accsRequest.dataId);
            return null;
        }
        this.f6168a.mo5625a();
        Message messageM5486a = Message.m5486a(this.f6168a, context, context.getPackageName(), accsRequest);
        if (messageM5486a.m5516e() != null) {
            messageM5486a.m5516e().onSend();
        }
        this.f6168a.m5638b(messageM5486a, true);
        return accsRequest.dataId;
    }

    /* renamed from: a */
    private void m5588a(Context context, Message message, int i, boolean z) {
        boolean z2;
        this.f6168a.mo5625a();
        if (message == null) {
            this.f6172e.mo666e("message is null");
            this.f6168a.m5627a(Message.m5493a(context.getPackageName(), i), AccsErrorCode.PARAMETER_ERROR);
            return;
        }
        if (i != 1) {
            if (i == 2 && this.f6168a.m5647j().m5482e(message.m5517f())) {
                this.f6172e.mo669i("unbind app, already unbind");
                this.f6168a.m5627a(message, AccsErrorCode.SUCCESS);
                z2 = false;
            }
            z2 = true;
        } else {
            String strM5517f = message.m5517f();
            if (this.f6168a.m5647j().m5481d(strM5517f) && !z) {
                this.f6172e.mo669i("bind app from cache");
                AccsState.getInstance().m5450a(this.f6171d, AccsState.BIND_APP_FROM_CACHE, Boolean.TRUE);
                this.f6168a.m5627a(message, AccsErrorCode.SUCCESS);
            } else if (!this.f6168a.m5647j().m5483f(strM5517f) || z) {
                this.f6168a.m5647j().m5480c(strM5517f);
                z2 = true;
            }
            z2 = false;
        }
        if (z2) {
            this.f6172e.mo670i("sendControlMessage", "command", Integer.valueOf(i));
            this.f6168a.m5638b(message, true);
        }
    }

    @Override // com.taobao.accs.IACCSManager
    public String sendRequest(Context context, ACCSManager.AccsRequest accsRequest) {
        return sendRequest(context, accsRequest, null, true);
    }

    /* renamed from: a */
    private boolean m5591a(Context context) {
        AbstractC1940b abstractC1940b = this.f6168a;
        return abstractC1940b == null || !abstractC1940b.m5647j().m5481d(context.getPackageName());
    }

    /* renamed from: a */
    private Intent m5586a(Context context, int i) {
        Intent intentM1768m = C0948f6.m1768m(Constants.ACTION_COMMAND);
        intentM1768m.setClassName(context.getPackageName(), AdapterUtilityImpl.channelService);
        intentM1768m.putExtra(Constants.KEY_PACKAGE_NAME, context.getPackageName());
        intentM1768m.putExtra("command", i);
        intentM1768m.putExtra(Constants.KEY_APP_KEY, this.f6168a.f6210b);
        intentM1768m.putExtra(Constants.KEY_CONFIG_TAG, this.f6171d);
        return intentM1768m;
    }

    /* renamed from: a */
    private void m5587a(Context context, int i, String str, String str2) {
        Intent intent = new Intent(Constants.ACTION_RECEIVE);
        intent.setPackage(context.getPackageName());
        intent.putExtra("command", i);
        intent.putExtra(Constants.KEY_SERVICE_ID, str);
        intent.putExtra(Constants.KEY_DATA_ID, str2);
        intent.putExtra(Constants.KEY_APP_KEY, this.f6168a.f6210b);
        intent.putExtra(Constants.KEY_CONFIG_TAG, this.f6171d);
        intent.putExtra(Constants.KEY_ERROR_OBJ, i == 2 ? AccsErrorCode.SUCCESS : AccsErrorCode.APP_NOT_BIND);
        C1924g.m5570a(context, intent);
    }
}
