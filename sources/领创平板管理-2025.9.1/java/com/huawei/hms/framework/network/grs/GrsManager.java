package com.huawei.hms.framework.network.grs;

import android.annotation.SuppressLint;
import android.content.Context;
import com.huawei.hem.GrsPluginInterceptor;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.network.restclient.hwhttp.plugin.BasePlugin;
import com.huawei.hms.framework.network.restclient.hwhttp.plugin.PluginInterceptor;
import java.util.Locale;

/* loaded from: classes.dex */
public class GrsManager implements BasePlugin {
    public static final int GRS_KEY_INDEX = 1;
    public static final int GRS_PATH_INDEX = 2;
    public static final String GRS_SCHEMA = "grs://";
    public static final int GRS_SERVICE_INDEX = 0;
    public static final int MAX_GRS_SPLIT = 3;
    public static final String SEPARATOR = "/";
    public static final String TAG = "GrsManager";

    @SuppressLint({"StaticFieldLeak"})
    public static volatile GrsManager instance;
    public GrsConfig grsConfig;
    public GrsPluginInterceptor grsInterceptor;

    public static GrsManager getInstance() {
        if (instance == null) {
            synchronized (GrsManager.class) {
                if (instance == null) {
                    instance = new GrsManager();
                }
            }
        }
        return instance;
    }

    private String getServiceNameUrl(String str, String str2) {
        return GrsApi.synGetGrsUrl(str, str2);
    }

    public static boolean isGRSSchema(String str) {
        return str != null && str.startsWith(GRS_SCHEMA);
    }

    private String[] parseGRSSchema(String str) {
        return StringUtils.substring(str, str.toLowerCase(Locale.ENGLISH).indexOf(GRS_SCHEMA) + 6).split(SEPARATOR, 3);
    }

    public PluginInterceptor getInterceptor() {
        if (this.grsInterceptor == null) {
            this.grsInterceptor = new GrsPluginInterceptor();
        }
        return this.grsInterceptor;
    }

    public boolean initGrs(Context context, GrsConfig grsConfig) {
        GrsConfig grsConfig2 = this.grsConfig;
        if (grsConfig2 != null && grsConfig2.equal(grsConfig)) {
            return true;
        }
        this.grsConfig = grsConfig;
        Context applicationContext = context != null ? context.getApplicationContext() : null;
        GrsConfig grsConfig3 = this.grsConfig;
        GrsApi.grsSdkInit(applicationContext, grsConfig3 != null ? grsConfig3.getGrsBaseInfo(applicationContext) : null);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String parseGrs(java.lang.String r6) throws java.io.IOException {
        /*
            r5 = this;
            java.lang.String r0 = "/"
            boolean r1 = r6.endsWith(r0)
            r2 = 1
            if (r1 == 0) goto L18
            java.lang.String r1 = "grs://"
            int r1 = r6.indexOf(r1)
            int r3 = r6.length()
            int r3 = r3 - r2
            java.lang.String r6 = com.huawei.hms.framework.common.StringUtils.substring(r6, r1, r3)
        L18:
            java.lang.String[] r6 = r5.parseGRSSchema(r6)
            int r1 = r6.length
            r3 = 0
            r4 = 2
            if (r1 != r2) goto L26
            r1 = r6[r3]
            java.lang.String r2 = "ROOT"
            goto L2d
        L26:
            int r1 = r6.length
            if (r1 < r4) goto L32
            r1 = r6[r3]
            r2 = r6[r2]
        L2d:
            java.lang.String r1 = r5.getServiceNameUrl(r1, r2)
            goto L3b
        L32:
            java.lang.String r1 = "GrsManager"
            java.lang.String r2 = "parseGrs params.length<1."
            com.huawei.hms.framework.common.Logger.m3434i(r1, r2)
            java.lang.String r1 = ""
        L3b:
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L5f
            int r2 = r6.length
            if (r2 <= r4) goto L5e
            boolean r2 = r1.endsWith(r0)
            if (r2 == 0) goto L51
            java.lang.StringBuilder r0 = com.huawei.hem.C0948f6.m1765j(r1)
            r6 = r6[r4]
            goto L57
        L51:
            java.lang.StringBuilder r0 = com.huawei.hem.C0948f6.m1767l(r1, r0)
            r6 = r6[r4]
        L57:
            r0.append(r6)
            java.lang.String r1 = r0.toString()
        L5e:
            return r1
        L5f:
            java.io.IOException r6 = new java.io.IOException
            java.lang.String r0 = "can not get url, do grsUrl(serviceName or key) error?"
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.GrsManager.parseGrs(java.lang.String):java.lang.String");
    }
}
