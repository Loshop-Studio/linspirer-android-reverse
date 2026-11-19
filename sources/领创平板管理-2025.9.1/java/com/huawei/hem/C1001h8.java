package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.android.agoo.message.MessageService;
import org.json.JSONException;

/* renamed from: com.huawei.hem.h8 */
/* loaded from: classes.dex */
public class C1001h8 {

    /* renamed from: a */
    public static final Set<String> f2818a = Collections.unmodifiableSet(new a(16));

    /* renamed from: com.huawei.hem.h8$a */
    public static class a extends HashSet<String> {
        public a(int i) {
            super(i);
            add("ser_country");
            add("reg_country");
            add("issue_country");
            add("geo_ip");
        }
    }

    /* renamed from: a */
    public static String m1941a(Context context, C0820a8 c0820a8, String str, GrsBaseInfo grsBaseInfo, boolean z) {
        String strM2991l;
        StringBuilder sb;
        String str2;
        if (TextUtils.isEmpty(str)) {
            Logger.m3438w("f", "routeBy must be not empty string or null.");
            return null;
        }
        if ("no_route".equals(str) || "unconditional".equals(str)) {
            Logger.m3436v("f", "routeBy equals NO_ROUTE_POLICY");
            return "no_route_country";
        }
        String serCountry = grsBaseInfo.getSerCountry();
        String regCountry = grsBaseInfo.getRegCountry();
        String issueCountry = grsBaseInfo.getIssueCountry();
        for (String str3 : str.split(">")) {
            if (f2818a.contains(str3.trim())) {
                if (!"ser_country".equals(str3.trim()) || TextUtils.isEmpty(serCountry) || GrsBaseInfo.CountryCodeSource.UNKNOWN.equals(serCountry)) {
                    if ("reg_country".equals(str3.trim()) && !TextUtils.isEmpty(regCountry) && !GrsBaseInfo.CountryCodeSource.UNKNOWN.equals(regCountry)) {
                        Logger.m3434i("f", "current route_by is regCountry and routerCountry is:" + regCountry);
                        return regCountry;
                    }
                    if ("issue_country".equals(str3.trim()) && !TextUtils.isEmpty(issueCountry) && !GrsBaseInfo.CountryCodeSource.UNKNOWN.equals(issueCountry)) {
                        Logger.m3434i("f", "current route_by is issueCountry and routerCountry is:" + issueCountry);
                        return issueCountry;
                    }
                    if ("geo_ip".equals(str3.trim())) {
                        GrsBaseInfo grsBaseInfo2 = new GrsBaseInfo();
                        String strM3138c = C1451z7.m3138c(c0820a8.f2188c.f2329a.getString("geoipCountryCode", ""), "geoip.countrycode", "ROOT");
                        Logger.m3434i("GeoipCountry", "geoIpCountry is: " + strM3138c);
                        String string = c0820a8.f2188c.f2329a.getString("geoipCountryCodetime", MessageService.MSG_DB_READY_REPORT);
                        long j = 0;
                        if (!TextUtils.isEmpty(string) && string.matches("\\d+")) {
                            try {
                                j = Long.parseLong(string);
                            } catch (NumberFormatException e) {
                                Logger.m3439w("GeoipCountry", "convert urlParamKey from String to Long catch NumberFormatException.", e);
                            }
                        }
                        if (TextUtils.isEmpty(strM3138c) || LauncherMenuHelper.m2986g(Long.valueOf(j))) {
                            C1152n8 c1152n8 = new C1152n8(grsBaseInfo2, context);
                            c1152n8.f3291c.add("geoip.countrycode");
                            C0872c8 c0872c8 = c0820a8.f2189d;
                            if (c0872c8 != null) {
                                try {
                                    strM2991l = LauncherMenuHelper.m2991l(c0872c8.f2329a.getString("services", ""), c1152n8.m2407a());
                                } catch (JSONException e2) {
                                    Logger.m3439w("GeoipCountry", "getGeoipCountry merge services occure jsonException.", e2);
                                    strM2991l = null;
                                }
                                if (!TextUtils.isEmpty(strM2991l)) {
                                    c0872c8.f2329a.putString("services", strM2991l);
                                }
                            }
                            if (z) {
                                C1252r8 c1252r8M2858a = c0820a8.f2190e.m2858a(c1152n8, "geoip.countrycode", c0872c8);
                                if (c1252r8M2858a != null) {
                                    strM3138c = C1451z7.m3138c(c1252r8M2858a.f3609g, "geoip.countrycode", "ROOT");
                                }
                                Logger.m3434i("GeoipCountry", "sync request to query geoip.countrycode is:" + strM3138c);
                            } else {
                                Logger.m3434i("GeoipCountry", "async request to query geoip.countrycode");
                                c0820a8.f2190e.m2859b(c1152n8, null, "geoip.countrycode", c0872c8);
                            }
                        }
                        serCountry = strM3138c;
                        sb = new StringBuilder();
                        str2 = "current route_by is geo_ip and routerCountry is: ";
                    }
                } else {
                    sb = new StringBuilder();
                    str2 = "current route_by is serCountry and routerCountry is:";
                }
                sb.append(str2);
                sb.append(serCountry);
                Logger.m3434i("f", sb.toString());
                return serCountry;
            }
        }
        return "";
    }
}
