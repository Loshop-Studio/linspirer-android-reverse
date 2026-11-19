package com.huawei.hms.framework.network.grs;

import android.content.Context;
import com.huawei.hms.framework.network.grs.local.model.CountryCodeBean;

/* loaded from: classes.dex */
public class GrsApp {
    public static GrsApp instance = new GrsApp();
    public String appConfigName;

    public static GrsApp getInstance() {
        return instance;
    }

    public String getAppConfigName() {
        return this.appConfigName;
    }

    public String getIssueCountryCode(Context context) {
        return new CountryCodeBean(context, false).getCountryCode();
    }

    public void setAppConfigName(String str) {
        this.appConfigName = str;
    }
}
