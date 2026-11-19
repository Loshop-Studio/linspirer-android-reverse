package com.huawei.updatesdk.p048b.p055e;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.GrsClient;
import com.huawei.updatesdk.p034a.p035a.UpdateSdkLog;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import com.huawei.updatesdk.p034a.p043b.p044a.UpdateApplicationContext;
import com.huawei.updatesdk.p048b.p052b.UpdateDeviceSession;
import com.huawei.updatesdk.p048b.p058h.UpdatePackageInfo;
import com.huawei.updatesdk.service.otaupdate.MarketStoreOptions;
import com.taobao.accs.common.Constants;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: com.huawei.updatesdk.b.e.a */
/* loaded from: classes.dex */
public abstract class UpdateRegionTaskInitializer {
    /* renamed from: a */
    private String m3726a(Context context, String str) {
        String strSynGetGrsUrl;
        try {
            GrsBaseInfo grsBaseInfo = new GrsBaseInfo();
            grsBaseInfo.setSerCountry(str);
            strSynGetGrsUrl = new GrsClient(context, grsBaseInfo).synGetGrsUrl(mo3729a(), "ROOT");
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("UpdateSDK Get url from GRS_SDK error: ");
            sbM1765j.append(th.toString());
            UpdateSdkLog.m3502c("AbstractTaskInit", sbM1765j.toString());
            strSynGetGrsUrl = null;
        }
        if (TextUtils.isEmpty(strSynGetGrsUrl)) {
            UpdateSdkLog.m3501b("AbstractTaskInit", "UpdateSDK Get url is default url");
            return mo3730a(context);
        }
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("UpdateSDK Get url from GRS_SDK Success!");
        sbM1765j2.append(m3727a(strSynGetGrsUrl));
        UpdateSdkLog.m3501b("AbstractTaskInit", sbM1765j2.toString());
        return strSynGetGrsUrl;
    }

    /* renamed from: a */
    private String m3727a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return str.substring(0, str.indexOf(46));
        } catch (Exception e) {
            UpdateLogWriter.m3516b("AbstractTaskInit", e.toString());
            return null;
        }
    }

    /* renamed from: b */
    private boolean m3728b(Context context, String str) {
        if (!UpdatePackageInfo.m3768d(context, str)) {
            return false;
        }
        if (Math.abs(System.currentTimeMillis() - UpdateDeviceSession.m3665d().m3672b(str)) >= Constants.CLIENT_FLUSH_INTERVAL) {
            return true;
        }
        MarketStoreOptions.m3889f().m3891a(UpdateDeviceSession.m3665d().m3667a(str));
        return false;
    }

    /* renamed from: a */
    public abstract String mo3729a();

    /* renamed from: a */
    public abstract String mo3730a(Context context);

    /* renamed from: b */
    public abstract String mo3731b();

    /* renamed from: b */
    public String m3732b(Context context) {
        String strM3890a = MarketStoreOptions.m3889f().m3890a();
        if (!TextUtils.isEmpty(strM3890a)) {
            return m3726a(context, strM3890a);
        }
        UpdateSdkLog.m3501b("AbstractTaskInit", "UpdateSDK accoutZone is empty, so url is default");
        return mo3730a(context);
    }

    /* renamed from: c */
    public void m3733c() throws ExecutionException, InterruptedException, TimeoutException {
        Context contextM3592a = UpdateApplicationContext.m3591c().m3592a();
        String strMo3731b = mo3731b();
        if (m3728b(contextM3592a, strMo3731b)) {
            AccountZoneQueryTask asyncTaskC1631d = new AccountZoneQueryTask(String.format(Locale.ROOT, "content://%s.commondata/item/1", strMo3731b), strMo3731b);
            asyncTaskC1631d.executeOnExecutor(Executors.newSingleThreadExecutor(), new Void[0]);
            try {
                asyncTaskC1631d.get(1000L, TimeUnit.MILLISECONDS);
            } catch (Exception e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("init AccountZone error: ");
                sbM1765j.append(e.toString());
                UpdateSdkLog.m3500a("AbstractTaskInit", sbM1765j.toString());
            }
        }
    }

    /* renamed from: d */
    public abstract void mo3734d();
}
