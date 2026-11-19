package com.huawei.hms.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.v7.widget.TooltipCompatHandler;
import android.text.TextUtils;
import com.google.zxing.client.android.InactivityTimer;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiClient;
import com.huawei.hms.common.api.ConnectionPostProcessor;
import com.huawei.hms.common.internal.AutoLifecycleFragment;
import com.huawei.hms.core.aidl.CodecLookup;
import com.huawei.hms.core.aidl.C1541b;
import com.huawei.hms.core.aidl.MessageCodec;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.IAIDLCallback;
import com.huawei.hms.core.aidl.IAIDLInvoke;
import com.huawei.hms.core.aidl.RequestHeader;
import com.huawei.hms.core.aidl.ResponseHeader;
import com.huawei.hms.support.api.PendingResultImpl;
import com.huawei.hms.support.api.ResolveResult;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.BundleResult;
import com.huawei.hms.support.api.client.InnerApiClient;
import com.huawei.hms.support.api.client.PendingResult;
import com.huawei.hms.support.api.client.ResultCallback;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.client.SubAppInfo;
import com.huawei.hms.support.api.core.ConnectService;
import com.huawei.hms.support.api.entity.auth.PermissionInfo;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.api.entity.core.CheckConnectInfo;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.api.entity.core.ConnectInfo;
import com.huawei.hms.support.api.entity.core.ConnectResp;
import com.huawei.hms.support.api.entity.core.DisconnectInfo;
import com.huawei.hms.support.api.entity.core.DisconnectResp;
import com.huawei.hms.support.api.entity.core.JosGetNoticeResp;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.UIUtil;
import com.huawei.hms.utils.Util;
import com.huawei.updatesdk.UpdateSdkAPI;
import com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo;
import com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class HuaweiApiClientImpl extends HuaweiApiClient implements InnerApiClient, ServiceConnection {

    /* renamed from: B */
    public static final Object f4379B = new Object();

    /* renamed from: C */
    public static final Object f4380C = new Object();
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;

    /* renamed from: A */
    public CheckUpdateCallBack f4381A;

    /* renamed from: b */
    public final Context f4383b;

    /* renamed from: c */
    public final String f4384c;

    /* renamed from: d */
    public String f4385d;

    /* renamed from: e */
    public String f4386e;

    /* renamed from: f */
    public volatile IAIDLInvoke f4387f;

    /* renamed from: g */
    public String f4388g;

    /* renamed from: h */
    public WeakReference<Activity> f4389h;

    /* renamed from: i */
    public WeakReference<Activity> f4390i;

    /* renamed from: l */
    public List<Scope> f4393l;

    /* renamed from: m */
    public List<PermissionInfo> f4394m;

    /* renamed from: n */
    public Map<Api<?>, Api.ApiOptions> f4395n;

    /* renamed from: o */
    public SubAppInfo f4396o;

    /* renamed from: s */
    public final ReentrantLock f4400s;

    /* renamed from: t */
    public final Condition f4401t;

    /* renamed from: u */
    public ConnectionResult f4402u;

    /* renamed from: v */
    public HuaweiApiClient.ConnectionCallbacks f4403v;

    /* renamed from: w */
    public HuaweiApiClient.OnConnectionFailedListener f4404w;

    /* renamed from: x */
    public Handler f4405x;

    /* renamed from: y */
    public Handler f4406y;

    /* renamed from: z */
    public CheckUpdatelistener f4407z;

    /* renamed from: a */
    public int f4382a = -1;

    /* renamed from: j */
    public boolean f4391j = false;

    /* renamed from: k */
    public AtomicInteger f4392k = new AtomicInteger(1);

    /* renamed from: p */
    public long f4397p = 0;

    /* renamed from: q */
    public int f4398q = 0;

    /* renamed from: r */
    public final Object f4399r = new Object();

    /* renamed from: com.huawei.hms.api.HuaweiApiClientImpl$a */
    public class C1480a implements CheckUpdateCallBack {
        public C1480a() {
        }

        @Override // com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack
        public void onMarketInstallInfo(Intent intent) {
            if (intent != null) {
                int intExtra = intent.getIntExtra(UpdateKey.MARKET_DLD_STATUS, -99);
                HMSLog.m3463i("HuaweiApiClientImpl", "onMarketInstallInfo installState: " + intent.getIntExtra(UpdateKey.MARKET_INSTALL_STATE, -99) + ",installType: " + intent.getIntExtra(UpdateKey.MARKET_INSTALL_TYPE, -99) + ",downloadCode: " + intExtra);
            }
        }

        @Override // com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack
        public void onMarketStoreError(int i) {
            HMSLog.m3461e("HuaweiApiClientImpl", "onMarketStoreError responseCode: " + i);
        }

        @Override // com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack
        public void onUpdateInfo(Intent intent) {
            if (intent == null || HuaweiApiClientImpl.this.f4407z == null) {
                return;
            }
            try {
                int intExtra = intent.getIntExtra("status", -99);
                HMSLog.m3463i("HuaweiApiClientImpl", "onUpdateInfo status: " + intExtra + ",failcause: " + intent.getIntExtra(UpdateKey.FAIL_CODE, -99) + ",isExit: " + intent.getBooleanExtra(UpdateKey.MUST_UPDATE, false));
                if (intExtra == 7) {
                    ApkUpgradeInfo apkUpgradeInfo = (ApkUpgradeInfo) intent.getSerializableExtra(UpdateKey.INFO);
                    if (apkUpgradeInfo != null) {
                        StringBuilder sbM1765j = CompilerOutline.m1765j("onUpdateInfo: ");
                        sbM1765j.append(apkUpgradeInfo.toString());
                        HMSLog.m3463i("HuaweiApiClientImpl", sbM1765j.toString());
                    }
                    HuaweiApiClientImpl.this.f4407z.onResult(1);
                } else if (intExtra == 3) {
                    HuaweiApiClientImpl.this.f4407z.onResult(0);
                } else {
                    HuaweiApiClientImpl.this.f4407z.onResult(-1);
                }
                HuaweiApiClientImpl.this.f4407z = null;
            } catch (Exception e) {
                StringBuilder sbM1765j2 = CompilerOutline.m1765j("intent has some error");
                sbM1765j2.append(e.getMessage());
                HMSLog.m3461e("HuaweiApiClientImpl", sbM1765j2.toString());
                HuaweiApiClientImpl.this.f4407z.onResult(-1);
            }
        }

        @Override // com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack
        public void onUpdateStoreError(int i) {
            HMSLog.m3461e("HuaweiApiClientImpl", "onUpdateStoreError responseCode: " + i);
        }
    }

    /* renamed from: com.huawei.hms.api.HuaweiApiClientImpl$b */
    public class C1481b implements Handler.Callback {
        public C1481b() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message == null || message.what != 2) {
                return false;
            }
            HMSLog.m3461e("HuaweiApiClientImpl", "In connect, bind core service time out");
            if (HuaweiApiClientImpl.this.f4392k.get() == 5) {
                HuaweiApiClientImpl.this.m3228c(1);
                HuaweiApiClientImpl.this.m3223b();
            }
            return true;
        }
    }

    /* renamed from: com.huawei.hms.api.HuaweiApiClientImpl$c */
    public class C1482c implements Handler.Callback {
        public C1482c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message == null || message.what != 3) {
                return false;
            }
            HMSLog.m3461e("HuaweiApiClientImpl", "In connect, process time out");
            if (HuaweiApiClientImpl.this.f4392k.get() == 2) {
                HuaweiApiClientImpl.this.m3228c(1);
                HuaweiApiClientImpl.this.m3223b();
            }
            return true;
        }
    }

    /* renamed from: com.huawei.hms.api.HuaweiApiClientImpl$d */
    public class BinderC1483d extends IAIDLCallback.a {

        /* renamed from: a */
        public final /* synthetic */ ResultCallback f4411a;

        public BinderC1483d(HuaweiApiClientImpl huaweiApiClientImpl, ResultCallback resultCallback) {
            this.f4411a = resultCallback;
        }

        @Override // com.huawei.hms.core.aidl.InterfaceC1542c
        public void call(C1541b c1541b) {
            if (c1541b == null) {
                HMSLog.m3463i("HuaweiApiClientImpl", "Exit asyncRequest onResult -1");
                this.f4411a.onResult(new BundleResult(-1, null));
                return;
            }
            MessageCodec c1544eM3386a = CodecLookup.m3386a(c1541b.m3392c());
            ResponseHeader responseHeader = new ResponseHeader();
            c1544eM3386a.m3402a(c1541b.f4527b, responseHeader);
            BundleResult bundleResult = new BundleResult(responseHeader.getStatusCode(), c1541b.m3389a());
            HMSLog.m3463i("HuaweiApiClientImpl", "Exit asyncRequest onResult");
            this.f4411a.onResult(bundleResult);
        }
    }

    /* renamed from: com.huawei.hms.api.HuaweiApiClientImpl$e */
    public static class C1484e extends PendingResultImpl<Status, IMessageEntity> {
        public C1484e(ApiClient apiClient, String str, IMessageEntity iMessageEntity) {
            super(apiClient, str, iMessageEntity);
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        public Status onComplete(IMessageEntity iMessageEntity) {
            return new Status(0);
        }
    }

    /* renamed from: com.huawei.hms.api.HuaweiApiClientImpl$f */
    public class C1485f implements ResultCallback<ResolveResult<ConnectResp>> {

        /* renamed from: com.huawei.hms.api.HuaweiApiClientImpl$f$a */
        public class a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ ResolveResult f4413a;

            public a(ResolveResult resolveResult) {
                this.f4413a = resolveResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                HuaweiApiClientImpl.this.m3220a((ResolveResult<ConnectResp>) this.f4413a);
            }
        }

        public C1485f() {
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onResult(ResolveResult<ConnectResp> resolveResult) {
            new Handler(Looper.getMainLooper()).post(new a(resolveResult));
        }

        public /* synthetic */ C1485f(HuaweiApiClientImpl huaweiApiClientImpl, C1480a c1480a) {
            this();
        }
    }

    /* renamed from: com.huawei.hms.api.HuaweiApiClientImpl$g */
    public class C1486g implements ResultCallback<ResolveResult<DisconnectResp>> {

        /* renamed from: com.huawei.hms.api.HuaweiApiClientImpl$g$a */
        public class a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ ResolveResult f4416a;

            public a(ResolveResult resolveResult) {
                this.f4416a = resolveResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                HuaweiApiClientImpl.this.m3226b((ResolveResult<DisconnectResp>) this.f4416a);
            }
        }

        public C1486g() {
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onResult(ResolveResult<DisconnectResp> resolveResult) {
            new Handler(Looper.getMainLooper()).post(new a(resolveResult));
        }

        public /* synthetic */ C1486g(HuaweiApiClientImpl huaweiApiClientImpl, C1480a c1480a) {
            this();
        }
    }

    /* renamed from: com.huawei.hms.api.HuaweiApiClientImpl$h */
    public class C1487h implements ResultCallback<ResolveResult<JosGetNoticeResp>> {
        public C1487h() {
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onResult(ResolveResult<JosGetNoticeResp> resolveResult) {
            JosGetNoticeResp value;
            Intent noticeIntent;
            if (resolveResult == null || !resolveResult.getStatus().isSuccess() || (noticeIntent = (value = resolveResult.getValue()).getNoticeIntent()) == null || value.getStatusCode() != 0) {
                return;
            }
            HMSLog.m3463i("HuaweiApiClientImpl", "get notice has intent.");
            Activity validActivity = Util.getValidActivity((Activity) HuaweiApiClientImpl.this.f4389h.get(), HuaweiApiClientImpl.this.getTopActivity());
            if (validActivity == null) {
                HMSLog.m3461e("HuaweiApiClientImpl", "showNotice no valid activity!");
            } else {
                HuaweiApiClientImpl.this.f4391j = true;
                validActivity.startActivity(noticeIntent);
            }
        }

        public /* synthetic */ C1487h(HuaweiApiClientImpl huaweiApiClientImpl, C1480a c1480a) {
            this();
        }
    }

    public HuaweiApiClientImpl(Context context) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f4400s = reentrantLock;
        this.f4401t = reentrantLock.newCondition();
        this.f4405x = null;
        this.f4406y = null;
        this.f4407z = null;
        this.f4383b = context;
        String appId = Util.getAppId(context);
        this.f4384c = appId;
        this.f4385d = appId;
        this.f4386e = Util.getCpId(context);
    }

    /* renamed from: e */
    private int m3232e() {
        int hmsVersion = Util.getHmsVersion(this.f4383b);
        if (hmsVersion != 0 && hmsVersion >= 20503000) {
            return hmsVersion;
        }
        int iM3233f = m3233f();
        if (m3235h()) {
            if (iM3233f < 20503000) {
                return 20503000;
            }
            return iM3233f;
        }
        if (iM3233f < 20600000) {
            return 20600000;
        }
        return iM3233f;
    }

    /* renamed from: f */
    private int m3233f() {
        Integer num;
        int iIntValue;
        Map<Api<?>, Api.ApiOptions> apiMap = getApiMap();
        int i = 0;
        if (apiMap == null) {
            return 0;
        }
        Iterator<Api<?>> it = apiMap.keySet().iterator();
        while (it.hasNext()) {
            String apiName = it.next().getApiName();
            if (!TextUtils.isEmpty(apiName) && (num = HuaweiApiAvailability.getApiMap().get(apiName)) != null && (iIntValue = num.intValue()) > i) {
                i = iIntValue;
            }
        }
        return i;
    }

    /* renamed from: g */
    private void m3234g() {
        this.f4381A = new C1480a();
    }

    /* renamed from: h */
    private boolean m3235h() {
        Map<Api<?>, Api.ApiOptions> map = this.f4395n;
        if (map == null) {
            return false;
        }
        Iterator<Api<?>> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (HuaweiApiAvailability.HMS_API_NAME_GAME.equals(it.next().getApiName())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    private void m3236i() {
        Handler handler = this.f4405x;
        if (handler != null) {
            handler.removeMessages(2);
        } else {
            this.f4405x = new Handler(Looper.getMainLooper(), new C1481b());
        }
        this.f4405x.sendEmptyMessageDelayed(2, 5000L);
    }

    /* renamed from: j */
    private void m3237j() {
        synchronized (f4380C) {
            if (this.f4406y != null) {
                this.f4406y.removeMessages(3);
            } else {
                this.f4406y = new Handler(Looper.getMainLooper(), new C1482c());
            }
            HMSLog.m3458d("HuaweiApiClientImpl", "sendEmptyMessageDelayed for onConnectionResult 3 seconds. the result is : " + this.f4406y.sendEmptyMessageDelayed(3, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS));
        }
    }

    /* renamed from: k */
    private void m3238k() {
        HMSLog.m3463i("HuaweiApiClientImpl", "Enter sendConnectApiServceRequest.");
        ConnectService.connect(this, m3227c()).setResultCallback(new C1485f(this, null));
    }

    /* renamed from: l */
    private void m3239l() {
        ConnectService.disconnect(this, m3230d()).setResultCallback(new C1486g(this, null));
    }

    /* renamed from: m */
    private void m3240m() {
        HMSLog.m3463i("HuaweiApiClientImpl", "Enter sendForceConnectApiServceRequest.");
        ConnectService.forceConnect(this, m3227c()).setResultCallback(new C1485f(this, null));
    }

    /* renamed from: n */
    private void m3241n() {
        if (this.f4391j) {
            HMSLog.m3463i("HuaweiApiClientImpl", "Connect notice has been shown.");
        } else if (HuaweiApiAvailability.getInstance().isHuaweiMobileNoticeAvailable(this.f4383b) == 0) {
            ConnectService.getNotice(this, 0, "5.2.0.300").setResultCallback(new C1487h(this, null));
        }
    }

    /* renamed from: o */
    private void m3242o() {
        Util.unBindServiceCatchException(this.f4383b, this);
        this.f4387f = null;
    }

    public int asyncRequest(Bundle bundle, String str, int i, ResultCallback<BundleResult> resultCallback) {
        HMSLog.m3463i("HuaweiApiClientImpl", "Enter asyncRequest.");
        if (resultCallback == null || str == null || bundle == null) {
            HMSLog.m3461e("HuaweiApiClientImpl", "arguments is invalid.");
            return CommonCode.ErrorCode.ARGUMENTS_INVALID;
        }
        if (!innerIsConnected()) {
            HMSLog.m3461e("HuaweiApiClientImpl", "client is unConnect.");
            return CommonCode.ErrorCode.CLIENT_API_INVALID;
        }
        C1541b c1541b = new C1541b(str, i);
        MessageCodec c1544eM3386a = CodecLookup.m3386a(c1541b.m3392c());
        c1541b.m3390a(bundle);
        RequestHeader requestHeader = new RequestHeader(getAppID(), getPackageName(), 50200300, getSessionId());
        requestHeader.setApiNameList(getApiNameList());
        c1541b.f4527b = c1544eM3386a.m3401a(requestHeader, new Bundle());
        try {
            getService().mo3393a(c1541b, new BinderC1483d(this, resultCallback));
            return 0;
        } catch (RemoteException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("remote exception:");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("HuaweiApiClientImpl", sbM1765j.toString());
            return CommonCode.ErrorCode.INTERNAL_ERROR;
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void checkUpdate(Activity activity, CheckUpdatelistener checkUpdatelistener) {
        if (!Util.isAvailableLibExist(this.f4383b)) {
            HMSLog.m3463i("HuaweiApiClientImpl", "available lib does not exist.");
            return;
        }
        HMSLog.m3463i("HuaweiApiClientImpl", "Enter checkUpdate");
        if (checkUpdatelistener == null) {
            HMSLog.m3461e("HuaweiApiClientImpl", "listener is null!");
            return;
        }
        if (activity != null && !activity.isFinishing()) {
            this.f4407z = checkUpdatelistener;
            if (this.f4381A == null) {
                m3234g();
            }
            UpdateSdkAPI.checkClientOTAUpdate(activity, this.f4381A, true, 0, true);
            return;
        }
        HMSLog.m3461e("HuaweiApiClientImpl", "checkUpdate, activity is illegal: " + activity);
        checkUpdatelistener.onResult(-1);
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void connect(Activity activity) {
        HMSLog.m3463i("HuaweiApiClientImpl", "====== HMSSDK version: 50200300 ======");
        int i = this.f4392k.get();
        CompilerOutline.m1777v("Enter connect, Connection Status: ", i, "HuaweiApiClientImpl");
        if (i == 3 || i == 5 || i == 2 || i == 4) {
            return;
        }
        if (activity != null) {
            this.f4389h = new WeakReference<>(activity);
            this.f4390i = new WeakReference<>(activity);
        }
        this.f4385d = TextUtils.isEmpty(this.f4384c) ? Util.getAppId(this.f4383b) : this.f4384c;
        int iM3232e = m3232e();
        HMSLog.m3463i("HuaweiApiClientImpl", "connect minVersion:" + iM3232e);
        HuaweiApiAvailability.setServicesVersionCode(iM3232e);
        int iIsHuaweiMobileServicesAvailable = HuaweiMobileServicesUtil.isHuaweiMobileServicesAvailable(this.f4383b, iM3232e);
        CompilerOutline.m1777v("In connect, isHuaweiMobileServicesAvailable result: ", iIsHuaweiMobileServicesAvailable, "HuaweiApiClientImpl");
        this.f4398q = HMSPackageManager.getInstance(this.f4383b).getHmsVersionCode();
        if (iIsHuaweiMobileServicesAvailable != 0) {
            if (this.f4404w != null) {
                m3224b(iIsHuaweiMobileServicesAvailable);
                return;
            }
            return;
        }
        m3228c(5);
        if (this.f4387f == null) {
            m3216a();
            return;
        }
        m3228c(2);
        m3238k();
        m3237j();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void connectForeground() {
        HMSLog.m3463i("HuaweiApiClientImpl", "====== HMSSDK version: 50200300 ======");
        int i = this.f4392k.get();
        CompilerOutline.m1777v("Enter forceConnect, Connection Status: ", i, "HuaweiApiClientImpl");
        if (i == 3 || i == 5 || i == 2 || i == 4) {
            return;
        }
        this.f4385d = TextUtils.isEmpty(this.f4384c) ? Util.getAppId(this.f4383b) : this.f4384c;
        m3240m();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void disableLifeCycleManagement(Activity activity) {
        if (this.f4382a < 0) {
            throw new IllegalStateException("disableLifeCycleManagement failed");
        }
        AutoLifecycleFragment autoLifecycleFragment = AutoLifecycleFragment.getInstance(activity);
        if (autoLifecycleFragment == null) {
            return;
        }
        autoLifecycleFragment.stopAutoManage(this.f4382a);
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public PendingResult<Status> discardAndReconnect() {
        return new C1484e(this, null, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void disconnect() {
        int i = this.f4392k.get();
        CompilerOutline.m1777v("Enter disconnect, Connection Status: ", i, "HuaweiApiClientImpl");
        if (i == 2) {
            m3228c(4);
            return;
        }
        if (i == 3) {
            m3228c(4);
            m3239l();
        } else {
            if (i != 5) {
                return;
            }
            m3217a(2);
            m3228c(4);
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public Map<Api<?>, Api.ApiOptions> getApiMap() {
        return this.f4395n;
    }

    @Override // com.huawei.hms.support.api.client.AidlApiClient
    public List<String> getApiNameList() {
        ArrayList arrayList = new ArrayList();
        Map<Api<?>, Api.ApiOptions> map = this.f4395n;
        if (map != null) {
            Iterator<Api<?>> it = map.keySet().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getApiName());
            }
        }
        return arrayList;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getAppID() {
        return this.f4385d;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public ConnectionResult getConnectionResult(Api<?> api) {
        if (isConnected()) {
            this.f4402u = null;
            return new ConnectionResult(0, (PendingIntent) null);
        }
        ConnectionResult connectionResult = this.f4402u;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, (PendingIntent) null);
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public Context getContext() {
        return this.f4383b;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getCpID() {
        return this.f4386e;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getPackageName() {
        return this.f4383b.getPackageName();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public List<PermissionInfo> getPermissionInfos() {
        return this.f4394m;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public List<Scope> getScopes() {
        return this.f4393l;
    }

    @Override // com.huawei.hms.support.api.client.AidlApiClient
    public IAIDLInvoke getService() {
        return this.f4387f;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getSessionId() {
        return this.f4388g;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public final SubAppInfo getSubAppInfo() {
        return this.f4396o;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public Activity getTopActivity() {
        WeakReference<Activity> weakReference = this.f4390i;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getTransportName() {
        return IPCTransport.class.getName();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean hasConnectedApi(Api<?> api) {
        return isConnected();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean hasConnectionFailureListener(HuaweiApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Checker.checkNonNull(onConnectionFailedListener, "onConnectionFailedListener should not be null");
        synchronized (this.f4399r) {
            return this.f4404w == onConnectionFailedListener;
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean hasConnectionSuccessListener(HuaweiApiClient.ConnectionCallbacks connectionCallbacks) {
        Checker.checkNonNull(connectionCallbacks, "connectionCallbacksListener should not be null");
        synchronized (this.f4399r) {
            return this.f4403v == connectionCallbacks;
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public ConnectionResult holdUpConnect() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("blockingConnect must not be called on the UI thread");
        }
        this.f4400s.lock();
        try {
            connect((Activity) null);
            while (isConnecting()) {
                this.f4401t.await();
            }
            if (!isConnected()) {
                return this.f4402u != null ? this.f4402u : new ConnectionResult(13, (PendingIntent) null);
            }
            this.f4402u = null;
            return new ConnectionResult(0, (PendingIntent) null);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, (PendingIntent) null);
        } finally {
            this.f4400s.unlock();
        }
    }

    @Override // com.huawei.hms.support.api.client.InnerApiClient
    public boolean innerIsConnected() {
        return this.f4392k.get() == 3 || this.f4392k.get() == 4;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient, com.huawei.hms.support.api.client.ApiClient
    public boolean isConnected() {
        if (this.f4398q == 0) {
            this.f4398q = HMSPackageManager.getInstance(this.f4383b).getHmsVersionCode();
        }
        if (this.f4398q >= 20504000) {
            return innerIsConnected();
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f4397p;
        if (jCurrentTimeMillis > 0 && jCurrentTimeMillis < InactivityTimer.INACTIVITY_DELAY_MS) {
            return innerIsConnected();
        }
        if (!innerIsConnected()) {
            return false;
        }
        Status status = ((ResolveResult) ConnectService.checkconnect(this, new CheckConnectInfo()).awaitOnAnyThread(2000L, TimeUnit.MILLISECONDS)).getStatus();
        if (status.isSuccess()) {
            this.f4397p = System.currentTimeMillis();
            return true;
        }
        int statusCode = status.getStatusCode();
        CompilerOutline.m1777v("isConnected is false, statuscode:", statusCode, "HuaweiApiClientImpl");
        if (statusCode == 907135004) {
            return false;
        }
        m3242o();
        m3228c(1);
        this.f4397p = System.currentTimeMillis();
        return false;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean isConnecting() {
        int i = this.f4392k.get();
        return i == 2 || i == 5;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void onPause(Activity activity) {
        HMSLog.m3463i("HuaweiApiClientImpl", "onPause");
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void onResume(Activity activity) {
        if (activity != null) {
            HMSLog.m3463i("HuaweiApiClientImpl", "onResume");
            this.f4390i = new WeakReference<>(activity);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HMSLog.m3463i("HuaweiApiClientImpl", "Enter onServiceConnected.");
        m3217a(2);
        this.f4387f = IAIDLInvoke.a.m3395a(iBinder);
        if (this.f4387f != null) {
            if (this.f4392k.get() == 5) {
                m3228c(2);
                m3238k();
                m3237j();
                return;
            } else {
                if (this.f4392k.get() != 3) {
                    m3242o();
                    return;
                }
                return;
            }
        }
        HMSLog.m3461e("HuaweiApiClientImpl", "In onServiceConnected, mCoreService must not be null.");
        m3242o();
        m3228c(1);
        if (this.f4404w != null) {
            PendingIntent resolveErrorPendingIntent = null;
            WeakReference<Activity> weakReference = this.f4389h;
            if (weakReference != null && weakReference.get() != null) {
                resolveErrorPendingIntent = HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f4389h.get(), 10);
            }
            ConnectionResult connectionResult = new ConnectionResult(10, resolveErrorPendingIntent);
            this.f4404w.onConnectionFailed(connectionResult);
            this.f4402u = connectionResult;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        HMSLog.m3463i("HuaweiApiClientImpl", "Enter onServiceDisconnected.");
        this.f4387f = null;
        m3228c(1);
        HuaweiApiClient.ConnectionCallbacks connectionCallbacks = this.f4403v;
        if (connectionCallbacks != null) {
            connectionCallbacks.onConnectionSuspended(1);
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void print(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void reconnect() {
        disconnect();
        connect((Activity) null);
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void removeConnectionFailureListener(HuaweiApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Checker.checkNonNull(onConnectionFailedListener, "onConnectionFailedListener should not be null");
        synchronized (this.f4399r) {
            if (this.f4404w != onConnectionFailedListener) {
                HMSLog.m3464w("HuaweiApiClientImpl", "unregisterConnectionFailedListener: this onConnectionFailedListener has not been registered");
            } else {
                this.f4404w = null;
            }
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void removeConnectionSuccessListener(HuaweiApiClient.ConnectionCallbacks connectionCallbacks) {
        Checker.checkNonNull(connectionCallbacks, "connectionCallbacksListener should not be null");
        synchronized (this.f4399r) {
            if (this.f4403v != connectionCallbacks) {
                HMSLog.m3464w("HuaweiApiClientImpl", "unregisterConnectionCallback: this connectionCallbacksListener has not been registered");
            } else {
                this.f4403v = null;
            }
        }
    }

    public void setApiMap(Map<Api<?>, Api.ApiOptions> map) {
        this.f4395n = map;
    }

    public void setAutoLifecycleClientId(int i) {
        this.f4382a = i;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void setConnectionCallbacks(HuaweiApiClient.ConnectionCallbacks connectionCallbacks) {
        this.f4403v = connectionCallbacks;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void setConnectionFailedListener(HuaweiApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f4404w = onConnectionFailedListener;
    }

    public void setHasShowNotice(boolean z) {
        this.f4391j = z;
    }

    public void setPermissionInfos(List<PermissionInfo> list) {
        this.f4394m = list;
    }

    public void setScopes(List<Scope> list) {
        this.f4393l = list;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean setSubAppInfo(SubAppInfo subAppInfo) {
        HMSLog.m3463i("HuaweiApiClientImpl", "Enter setSubAppInfo");
        if (subAppInfo == null) {
            HMSLog.m3461e("HuaweiApiClientImpl", "subAppInfo is null");
            return false;
        }
        String subAppID = subAppInfo.getSubAppID();
        if (TextUtils.isEmpty(subAppID)) {
            HMSLog.m3461e("HuaweiApiClientImpl", "subAppId is empty");
            return false;
        }
        if (subAppID.equals(TextUtils.isEmpty(this.f4384c) ? Util.getAppId(this.f4383b) : this.f4384c)) {
            HMSLog.m3461e("HuaweiApiClientImpl", "subAppId is host appid");
            return false;
        }
        this.f4396o = new SubAppInfo(subAppInfo);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3228c(int i) {
        this.f4392k.set(i);
        if (i == 1 || i == 3 || i == 2) {
            this.f4400s.lock();
            try {
                this.f4401t.signalAll();
            } finally {
                this.f4400s.unlock();
            }
        }
    }

    /* renamed from: d */
    private DisconnectInfo m3230d() {
        ArrayList arrayList = new ArrayList();
        Map<Api<?>, Api.ApiOptions> map = this.f4395n;
        if (map != null) {
            Iterator<Api<?>> it = map.keySet().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getApiName());
            }
        }
        return new DisconnectInfo(this.f4393l, arrayList);
    }

    /* renamed from: b */
    private void m3224b(int i) {
        PendingIntent resolveErrorPendingIntent;
        WeakReference<Activity> weakReference = this.f4389h;
        if (weakReference == null || weakReference.get() == null) {
            resolveErrorPendingIntent = null;
        } else {
            resolveErrorPendingIntent = HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f4389h.get(), i);
            CompilerOutline.m1777v("connect 2.0 fail: ", i, "HuaweiApiClientImpl");
        }
        ConnectionResult connectionResult = new ConnectionResult(i, resolveErrorPendingIntent);
        this.f4404w.onConnectionFailed(connectionResult);
        this.f4402u = connectionResult;
    }

    /* renamed from: a */
    private void m3216a() {
        Intent intent = new Intent("com.huawei.hms.core.aidlservice");
        HMSPackageManager.getInstance(this.f4383b).refresh();
        intent.setPackage(HMSPackageManager.getInstance(this.f4383b).getHMSPackageName());
        synchronized (f4379B) {
            if (this.f4383b.bindService(intent, this, 1)) {
                m3236i();
                return;
            }
            m3228c(1);
            HMSLog.m3461e("HuaweiApiClientImpl", "In connect, bind core service fail");
            m3223b();
        }
    }

    /* renamed from: c */
    private ConnectInfo m3227c() {
        String packageSignature = new PackageManagerHelper(this.f4383b).getPackageSignature(this.f4383b.getPackageName());
        if (packageSignature == null) {
            packageSignature = "";
        }
        SubAppInfo subAppInfo = this.f4396o;
        return new ConnectInfo(getApiNameList(), this.f4393l, packageSignature, subAppInfo == null ? null : subAppInfo.getSubAppID());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3223b() {
        m3242o();
        if (this.f4404w != null) {
            int i = UIUtil.isBackground(this.f4383b) ? 7 : 6;
            PendingIntent resolveErrorPendingIntent = null;
            WeakReference<Activity> weakReference = this.f4389h;
            if (weakReference != null && weakReference.get() != null) {
                resolveErrorPendingIntent = HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f4389h.get(), i);
            }
            ConnectionResult connectionResult = new ConnectionResult(i, resolveErrorPendingIntent);
            this.f4404w.onConnectionFailed(connectionResult);
            this.f4402u = connectionResult;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3226b(ResolveResult<DisconnectResp> resolveResult) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("Enter onDisconnectionResult, disconnect from server result: ");
        sbM1765j.append(resolveResult.getStatus().getStatusCode());
        HMSLog.m3463i("HuaweiApiClientImpl", sbM1765j.toString());
        m3242o();
        m3228c(1);
    }

    /* renamed from: a */
    private void m3217a(int i) {
        if (i == 2) {
            synchronized (f4379B) {
                if (this.f4405x != null) {
                    this.f4405x.removeMessages(i);
                    this.f4405x = null;
                }
            }
        }
        if (i == 3) {
            synchronized (f4380C) {
                if (this.f4406y != null) {
                    this.f4406y.removeMessages(i);
                    this.f4406y = null;
                }
            }
        }
        synchronized (f4379B) {
            if (this.f4405x != null) {
                this.f4405x.removeMessages(2);
                this.f4405x = null;
            }
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public ConnectionResult holdUpConnect(long j, TimeUnit timeUnit) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.f4400s.lock();
            try {
                connect((Activity) null);
                long nanos = timeUnit.toNanos(j);
                while (isConnecting()) {
                    if (nanos <= 0) {
                        disconnect();
                        return new ConnectionResult(14, (PendingIntent) null);
                    }
                    nanos = this.f4401t.awaitNanos(nanos);
                }
                if (isConnected()) {
                    this.f4402u = null;
                    return new ConnectionResult(0, (PendingIntent) null);
                }
                if (this.f4402u != null) {
                    return this.f4402u;
                }
                return new ConnectionResult(13, (PendingIntent) null);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, (PendingIntent) null);
            } finally {
                this.f4400s.unlock();
            }
        }
        throw new IllegalStateException("blockingConnect must not be called on the UI thread");
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void connect(int i) {
        connect((Activity) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3220a(ResolveResult<ConnectResp> resolveResult) {
        HMSLog.m3463i("HuaweiApiClientImpl", "Enter onConnectionResult");
        if (this.f4387f != null && this.f4392k.get() == 2) {
            m3217a(3);
            ConnectResp value = resolveResult.getValue();
            if (value != null) {
                this.f4388g = value.sessionId;
            }
            SubAppInfo subAppInfo = this.f4396o;
            PendingIntent resolveErrorPendingIntent = null;
            String subAppID = subAppInfo == null ? null : subAppInfo.getSubAppID();
            if (!TextUtils.isEmpty(subAppID)) {
                this.f4385d = subAppID;
            }
            int statusCode = resolveResult.getStatus().getStatusCode();
            CompilerOutline.m1777v("Enter onConnectionResult, connect to server result: ", statusCode, "HuaweiApiClientImpl");
            if (Status.SUCCESS.equals(resolveResult.getStatus())) {
                if (resolveResult.getValue() != null) {
                    ProtocolNegotiate.getInstance().negotiate(resolveResult.getValue().protocolVersion);
                }
                m3228c(3);
                this.f4402u = null;
                HuaweiApiClient.ConnectionCallbacks connectionCallbacks = this.f4403v;
                if (connectionCallbacks != null) {
                    connectionCallbacks.onConnected();
                }
                if (this.f4389h != null) {
                    m3241n();
                }
                for (Map.Entry<Api<?>, Api.ApiOptions> entry : getApiMap().entrySet()) {
                    if (entry.getKey().getmConnetctPostList() != null && !entry.getKey().getmConnetctPostList().isEmpty()) {
                        HMSLog.m3463i("HuaweiApiClientImpl", "Enter onConnectionResult, get the ConnetctPostList ");
                        for (ConnectionPostProcessor connectionPostProcessor : entry.getKey().getmConnetctPostList()) {
                            HMSLog.m3463i("HuaweiApiClientImpl", "Enter onConnectionResult, processor.run");
                            connectionPostProcessor.run(this, this.f4389h);
                        }
                    }
                }
                return;
            }
            if (resolveResult.getStatus() != null && resolveResult.getStatus().getStatusCode() == 1001) {
                m3242o();
                m3228c(1);
                HuaweiApiClient.ConnectionCallbacks connectionCallbacks2 = this.f4403v;
                if (connectionCallbacks2 != null) {
                    connectionCallbacks2.onConnectionSuspended(3);
                    return;
                }
                return;
            }
            m3242o();
            m3228c(1);
            if (this.f4404w != null) {
                WeakReference<Activity> weakReference = this.f4389h;
                if (weakReference != null && weakReference.get() != null) {
                    resolveErrorPendingIntent = HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f4389h.get(), statusCode);
                }
                ConnectionResult connectionResult = new ConnectionResult(statusCode, resolveErrorPendingIntent);
                this.f4404w.onConnectionFailed(connectionResult);
                this.f4402u = connectionResult;
                return;
            }
            return;
        }
        HMSLog.m3461e("HuaweiApiClientImpl", "Invalid onConnectionResult");
    }
}
