package com.alibaba.sdk.android.push.p015a;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.beacon.Beacon;
import com.huawei.hem.CompilerOutline;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.alibaba.sdk.android.push.a.a */
/* loaded from: classes.dex */
public class PushBeaconManager {

    /* renamed from: a */
    public static AmsLogger f993a = AmsLogger.getLogger("MPS:BeaconManager");

    /* renamed from: b */
    public static PushBeaconManager f994b = null;

    /* renamed from: c */
    public Context f995c = null;

    /* renamed from: d */
    public PushBeaconToggleListener f996d = null;

    /* renamed from: e */
    public Beacon f997e = null;

    /* renamed from: f */
    public final Beacon.OnUpdateListener f998f = new Beacon.OnUpdateListener() { // from class: com.alibaba.sdk.android.push.a.a.1
        @Override // com.alibaba.sdk.android.beacon.Beacon.OnUpdateListener
        public void onUpdate(List<Beacon.Config> list) {
            PushBeaconManager.this.m696a(list);
        }
    };

    /* renamed from: g */
    public final Beacon.OnServiceErrListener f999g = new Beacon.OnServiceErrListener() { // from class: com.alibaba.sdk.android.push.a.a.2
        @Override // com.alibaba.sdk.android.beacon.Beacon.OnServiceErrListener
        public void onErr(Beacon.Error error) {
            AmsLogger amsLogger = PushBeaconManager.f993a;
            StringBuilder sbM1765j = CompilerOutline.m1765j("beacon error. errorCode:");
            sbM1765j.append(error.errCode);
            sbM1765j.append(", errorMsg:");
            sbM1765j.append(error.errMsg);
            amsLogger.m501e(sbM1765j.toString());
        }
    };

    /* renamed from: a */
    public static PushBeaconManager m694a() {
        if (f994b == null) {
            synchronized (PushBeaconManager.class) {
                if (f994b == null) {
                    f994b = new PushBeaconManager();
                }
            }
        }
        return f994b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m696a(List<Beacon.Config> list) {
        f993a.m498d("parse beacon config");
        if (list == null || list.size() == 0) {
            return;
        }
        for (Beacon.Config config : list) {
            AmsLogger amsLogger = f993a;
            StringBuilder sbM1765j = CompilerOutline.m1765j("beacon key:");
            sbM1765j.append(config.key);
            sbM1765j.append("; beacon value:");
            sbM1765j.append(config.value);
            amsLogger.m498d(sbM1765j.toString());
            if (config.key.equalsIgnoreCase("___push_service___")) {
                m697a(config);
            }
        }
    }

    /* renamed from: a */
    private boolean m697a(Beacon.Config config) {
        if (config == null || !config.key.equalsIgnoreCase("___push_service___")) {
            return false;
        }
        String str = config.value;
        if (str != null) {
            f993a.m498d("push configs:" + str);
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("ut")) {
                    m698a(jSONObject.getString("ut"));
                }
            } catch (JSONException e) {
                f993a.m502e("parse push configs failed.", e);
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    private boolean m698a(String str) {
        if (str == null || this.f996d == null) {
            return false;
        }
        f993a.m498d("is report enabled:" + str);
        this.f996d.mo702a(str.equalsIgnoreCase("disabled") ^ true);
        return true;
    }

    /* renamed from: a */
    public void m700a(Context context, String str, String str2, String str3) {
        this.f995c = context;
        f993a.m498d("appkey:" + str);
        if (this.f995c == null) {
            f993a.m501e("context is null !!");
            return;
        }
        HashMap map = new HashMap();
        map.put("sdkId", "push");
        map.put("sdkVer", str3);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Beacon beaconBuild = new Beacon.Builder().appKey(str).appSecret(str2).extras(map).startPoll(false).build();
            this.f997e = beaconBuild;
            beaconBuild.addUpdateListener(this.f998f);
            this.f997e.addServiceErrListener(this.f999g);
            this.f997e.start(this.f995c.getApplicationContext());
            return;
        }
        f993a.m501e("invalid appkey or appsecret. appkey:" + str + ", appsecret:" + str2);
    }

    /* renamed from: a */
    public void m701a(PushBeaconToggleListener interfaceC0549b) {
        this.f996d = interfaceC0549b;
    }
}
