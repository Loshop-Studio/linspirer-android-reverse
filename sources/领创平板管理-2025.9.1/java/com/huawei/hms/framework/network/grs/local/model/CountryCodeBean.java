package com.huawei.hms.framework.network.grs.local.model;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.framework.common.EmuiUtil;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.SystemPropUtils;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.Locale;

/* loaded from: classes.dex */
public class CountryCodeBean {
    public static final String ANDRIOD_SYSTEMPROP = "android.os.SystemProperties";
    public static final int COUNTRYCODE_SIZE = 2;
    public static final String LOCALE_COUNTRYSYSTEMPROP = "ro.product.locale";
    public static final String LOCALE_REGION_COUNTRYSYSTEMPROP = "ro.product.locale.region";
    public static final String SPECIAL_COUNTRYCODE_CN = "cn";
    public static final String SPECIAL_COUNTRYCODE_EU = "eu";
    public static final String SPECIAL_COUNTRYCODE_GB = "gb";
    public static final String SPECIAL_COUNTRYCODE_LA = "la";
    public static final String SPECIAL_COUNTRYCODE_UK = "uk";
    public static final String TAG = "CountryCodeBean";
    public static final String VENDORCOUNTRY_SYSTEMPROP = "ro.hw.country";
    public String countryCode;
    public String countrySource = GrsBaseInfo.CountryCodeSource.UNKNOWN;

    public CountryCodeBean(Context context, boolean z) {
        this.countryCode = GrsBaseInfo.CountryCodeSource.UNKNOWN;
        init(context, z);
        this.countryCode = this.countryCode.toUpperCase(Locale.ENGLISH);
    }

    private void checkCodeLenth() {
        String str = this.countryCode;
        if (str == null || str.length() != 2) {
            this.countryCode = GrsBaseInfo.CountryCodeSource.UNKNOWN;
            this.countrySource = GrsBaseInfo.CountryCodeSource.UNKNOWN;
        }
    }

    private void getLocaleCountryCode() throws ClassNotFoundException {
        if (EmuiUtil.isUpPVersion()) {
            getRegionSettingCountryCode();
        } else {
            getProductCountryCode();
        }
        this.countrySource = GrsBaseInfo.CountryCodeSource.LOCALE_INFO;
    }

    private void getProductCountryCode() throws ClassNotFoundException {
        int iLastIndexOf;
        this.countryCode = SystemPropUtils.getProperty("get", LOCALE_REGION_COUNTRYSYSTEMPROP, "android.os.SystemProperties", GrsBaseInfo.CountryCodeSource.UNKNOWN);
        String str = TAG;
        StringBuilder sbM1765j = C0948f6.m1765j("countryCode by ro.product.locale.region is:");
        sbM1765j.append(this.countryCode);
        Logger.m3434i(str, sbM1765j.toString());
        if (TextUtils.isEmpty(this.countryCode) || GrsBaseInfo.CountryCodeSource.UNKNOWN.equals(this.countryCode)) {
            String property = SystemPropUtils.getProperty("get", LOCALE_COUNTRYSYSTEMPROP, "android.os.SystemProperties", GrsBaseInfo.CountryCodeSource.UNKNOWN);
            if (!TextUtils.isEmpty(property) && (iLastIndexOf = property.lastIndexOf("-")) != -1) {
                this.countryCode = property.substring(iLastIndexOf + 1);
                String str2 = TAG;
                StringBuilder sbM1765j2 = C0948f6.m1765j("countryCode by ro.product.locale is:");
                sbM1765j2.append(this.countryCode);
                Logger.m3434i(str2, sbM1765j2.toString());
            }
        }
        if (SPECIAL_COUNTRYCODE_CN.equalsIgnoreCase(this.countryCode)) {
            return;
        }
        this.countryCode = GrsBaseInfo.CountryCodeSource.UNKNOWN;
    }

    private void getRegionSettingCountryCode() {
        this.countryCode = Locale.getDefault().getCountry();
        String str = TAG;
        StringBuilder sbM1765j = C0948f6.m1765j("countryCode by system's region setting is: ");
        sbM1765j.append(this.countryCode);
        Logger.m3434i(str, sbM1765j.toString());
        if (TextUtils.isEmpty(this.countryCode)) {
            this.countryCode = GrsBaseInfo.CountryCodeSource.UNKNOWN;
        }
    }

    private void getSimCountryCode(Context context) {
        getSimCountryCode(context, false);
    }

    private void getSimCountryCode(Context context, boolean z) {
        String str;
        StringBuilder sb;
        String str2;
        TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
        if (telephonyManager != null) {
            if (!z || telephonyManager.getPhoneType() == 2) {
                this.countryCode = telephonyManager.getSimCountryIso();
                this.countrySource = GrsBaseInfo.CountryCodeSource.SIM_COUNTRY;
                str = TAG;
                sb = new StringBuilder();
                str2 = "countryCode by SimCountryIso is: ";
            } else {
                this.countryCode = telephonyManager.getNetworkCountryIso();
                this.countrySource = GrsBaseInfo.CountryCodeSource.NETWORK_COUNTRY;
                str = TAG;
                sb = new StringBuilder();
                str2 = "countryCode by NetworkCountryIso is: ";
            }
            sb.append(str2);
            sb.append(this.countryCode);
            Logger.m3434i(str, sb.toString());
        }
        checkCodeLenth();
    }

    private void getVendorCountryCode() {
        this.countrySource = GrsBaseInfo.CountryCodeSource.VENDOR_COUNTRY;
        this.countryCode = SystemPropUtils.getProperty("get", VENDORCOUNTRY_SYSTEMPROP, "android.os.SystemProperties", GrsBaseInfo.CountryCodeSource.UNKNOWN);
        String str = TAG;
        StringBuilder sbM1765j = C0948f6.m1765j("countryCode by ro.hw.country is: ");
        sbM1765j.append(this.countryCode);
        Logger.m3434i(str, sbM1765j.toString());
        if (SPECIAL_COUNTRYCODE_EU.equalsIgnoreCase(this.countryCode) || SPECIAL_COUNTRYCODE_LA.equalsIgnoreCase(this.countryCode)) {
            this.countryCode = GrsBaseInfo.CountryCodeSource.UNKNOWN;
            this.countrySource = GrsBaseInfo.CountryCodeSource.UNKNOWN;
        } else {
            if (!SPECIAL_COUNTRYCODE_UK.equalsIgnoreCase(this.countryCode)) {
                checkCodeLenth();
                return;
            }
            Logger.m3434i(TAG, "special country of UK to map GB.");
            this.countryCode = SPECIAL_COUNTRYCODE_GB;
            this.countrySource = GrsBaseInfo.CountryCodeSource.VENDOR_COUNTRY;
        }
    }

    private void init(Context context, boolean z) {
        if (context == null) {
            throw new NullPointerException("context must be not null.Please provide app's Context");
        }
        try {
            getVendorCountryCode();
            if (isCodeValidate()) {
                Logger.m3434i(TAG, "get issue_country code from VENDOR_COUNTRY");
                return;
            }
            getSimCountryCode(context);
            if (isCodeValidate()) {
                Logger.m3434i(TAG, "get issue_country code from SIM_COUNTRY");
                return;
            }
            getLocaleCountryCode();
            if (isCodeValidate()) {
                Logger.m3434i(TAG, "get issue_country code from LOCALE_INFO");
            }
        } catch (Exception unused) {
            Logger.m3438w(TAG, "get CountryCode error");
        }
    }

    private boolean isCodeValidate() {
        return !GrsBaseInfo.CountryCodeSource.UNKNOWN.equals(this.countryCode);
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    public String getCountrySource() {
        return this.countrySource;
    }
}
