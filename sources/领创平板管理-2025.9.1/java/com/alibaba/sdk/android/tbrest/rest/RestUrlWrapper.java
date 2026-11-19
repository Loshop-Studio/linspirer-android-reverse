package com.alibaba.sdk.android.tbrest.rest;

import android.content.Context;
import com.alibaba.sdk.android.tbrest.utils.MD5Utils;
import com.huawei.hem.CompilerOutline;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class RestUrlWrapper {
    public static final String FIELD_APPKEY = "appkey";
    public static final String FIELD_APPVERSION = "app_version";
    public static final String FIELD_CHANNEL = "channel";
    public static final String FIELD_PLATFORM = "platform";
    public static final String FIELD_SDK_VERSION = "sdk_version";
    public static final String FIELD_T = "t";
    public static final String FIELD_UTDID = "utdid";
    public static final String FIELD_V = "v";
    public static boolean enableSecuritySDK = false;
    public static Context mContext;

    public static void enableSecuritySDK() {
        enableSecuritySDK = true;
    }

    public static String getEncoded(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String getSignedTransferUrl(String str, Map<String, Object> map, Map<String, Object> map2, Context context, String str2, String str3, String str4, String str5, String str6, String str7) {
        String string = "";
        if (map2 != null && map2.size() > 0) {
            Set<String> setKeySet = map2.keySet();
            String[] strArr = new String[setKeySet.size()];
            setKeySet.toArray(strArr);
            for (String str8 : RestKeyArraySorter.m981a().m982a(strArr, true)) {
                byte[] bArr = (byte[]) map2.get(str8);
                StringBuilder sbM1767l = CompilerOutline.m1767l(string, str8);
                sbM1767l.append(MD5Utils.getMd5Hex(bArr));
                string = sbM1767l.toString();
            }
        }
        try {
            return wrapUrl(str, null, null, string, context, str2, str3, str4, str5, str6, str7);
        } catch (Exception unused) {
            return wrapUrl(RestConstants.getTransferUrl(), null, null, string, context, str2, str3, str4, str5, str6, str7);
        }
    }

    public static void setContext(Context context) {
        mContext = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String wrapUrl(java.lang.String r4, java.lang.String r5, java.lang.String r6, java.lang.String r7, android.content.Context r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            long r0 = java.lang.System.currentTimeMillis()
            java.lang.String r8 = java.lang.String.valueOf(r0)
            boolean r13 = com.alibaba.sdk.android.tbrest.rest.RestUrlWrapper.enableSecuritySDK
            java.lang.String r0 = ""
            java.lang.String r1 = "4.1.0"
            java.lang.String r2 = "3.0"
            if (r13 == 0) goto L6e
            android.content.Context r13 = com.alibaba.sdk.android.tbrest.rest.RestUrlWrapper.mContext
            if (r13 == 0) goto L6e
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L64
            r13.<init>()     // Catch: java.lang.Exception -> L64
            r13.append(r9)     // Catch: java.lang.Exception -> L64
            r13.append(r10)     // Catch: java.lang.Exception -> L64
            r13.append(r11)     // Catch: java.lang.Exception -> L64
            r13.append(r12)     // Catch: java.lang.Exception -> L64
            r13.append(r1)     // Catch: java.lang.Exception -> L64
            r13.append(r14)     // Catch: java.lang.Exception -> L64
            r13.append(r8)     // Catch: java.lang.Exception -> L64
            r13.append(r2)     // Catch: java.lang.Exception -> L64
            r13.append(r0)     // Catch: java.lang.Exception -> L64
            if (r6 != 0) goto L39
            r6 = r0
        L39:
            r13.append(r6)     // Catch: java.lang.Exception -> L64
            if (r7 != 0) goto L3f
            r7 = r0
        L3f:
            r13.append(r7)     // Catch: java.lang.Exception -> L64
            java.lang.String r6 = r13.toString()     // Catch: java.lang.Exception -> L64
            byte[] r6 = r6.getBytes()     // Catch: java.lang.Exception -> L64
            java.lang.String r6 = com.alibaba.sdk.android.tbrest.utils.MD5Utils.getMd5Hex(r6)     // Catch: java.lang.Exception -> L64
            com.alibaba.sdk.android.tbrest.rest.g r7 = new com.alibaba.sdk.android.tbrest.rest.g     // Catch: java.lang.Exception -> L64
            android.content.Context r13 = com.alibaba.sdk.android.tbrest.rest.RestUrlWrapper.mContext     // Catch: java.lang.Exception -> L64
            r7.<init>(r13, r9)     // Catch: java.lang.Exception -> L64
            java.lang.String r6 = r7.m995b(r6)     // Catch: java.lang.Exception -> L64
            boolean r7 = com.alibaba.sdk.android.tbrest.utils.StringUtils.isNotBlank(r1)     // Catch: java.lang.Exception -> L62
            if (r7 == 0) goto L6c
            java.lang.String r7 = "1"
            goto L70
        L62:
            r7 = move-exception
            goto L67
        L64:
            r6 = move-exception
            r7 = r6
            r6 = r0
        L67:
            java.lang.String r13 = "security sdk signed"
            com.alibaba.sdk.android.tbrest.utils.LogUtil.m1000w(r13, r7)
        L6c:
            r7 = r0
            goto L70
        L6e:
            r6 = r0
            r7 = r6
        L70:
            boolean r13 = com.alibaba.sdk.android.tbrest.utils.StringUtils.isEmpty(r5)
            if (r13 != 0) goto L7d
            java.lang.String r13 = "&"
            java.lang.String r5 = com.huawei.hem.C0948f6.m1760e(r5, r13)
            goto L7e
        L7d:
            r5 = r0
        L7e:
            r13 = 13
            java.lang.Object[] r13 = new java.lang.Object[r13]
            r3 = 0
            r13[r3] = r4
            r4 = 1
            r13[r4] = r5
            r4 = 2
            java.lang.String r5 = getEncoded(r9)
            r13[r4] = r5
            r4 = 3
            java.lang.String r5 = getEncoded(r11)
            r13[r4] = r5
            r4 = 4
            java.lang.String r5 = getEncoded(r10)
            r13[r4] = r5
            r4 = 5
            java.lang.String r5 = getEncoded(r2)
            r13[r4] = r5
            r4 = 6
            java.lang.String r5 = getEncoded(r6)
            r13[r4] = r5
            r4 = 7
            java.lang.String r5 = getEncoded(r14)
            r13[r4] = r5
            r4 = 8
            r13[r4] = r1
            r4 = 9
            r13[r4] = r12
            r4 = 10
            r13[r4] = r8
            r4 = 11
            r13[r4] = r0
            r4 = 12
            r13[r4] = r7
            java.lang.String r4 = "%s?%sak=%s&av=%s&c=%s&v=%s&s=%s&d=%s&sv=%s&p=%s&t=%s&u=%s&is=%s"
            java.lang.String r4 = java.lang.String.format(r4, r13)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.tbrest.rest.RestUrlWrapper.wrapUrl(java.lang.String, java.lang.String, java.lang.String, java.lang.String, android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }
}
