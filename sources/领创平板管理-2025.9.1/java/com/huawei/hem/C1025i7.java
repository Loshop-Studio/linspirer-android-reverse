package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.hem.i7 */
/* loaded from: classes.dex */
public class C1025i7 {

    /* renamed from: g */
    public Context f2900g;

    /* renamed from: i */
    public Intent f2902i;

    /* renamed from: j */
    public a f2903j;

    /* renamed from: a */
    public String f2894a = "AppGallery Verification";

    /* renamed from: b */
    public String f2895b = "Huawei CBG Cloud Security Signer";

    /* renamed from: c */
    public String f2896c = "com.huawei.appgallery.fingerprint_signature";

    /* renamed from: d */
    public String f2897d = "com.huawei.appgallery.sign_certchain";

    /* renamed from: e */
    public Map<String, String[]> f2898e = new HashMap();

    /* renamed from: f */
    public Map<String, Integer> f2899f = new HashMap();

    /* renamed from: h */
    public int f2901h = 0;

    /* renamed from: k */
    public String f2904k = "verify_match_property";

    /* renamed from: com.huawei.hem.i7$a */
    public enum a {
        ACTIVITY,
        SERVICE,
        BROADCAST
    }

    /* renamed from: a */
    public C1025i7 m2038a(String str, String str2) {
        String[] strArr = this.f2898e.get(str);
        if (strArr != null) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    String[] strArr2 = new String[length + 1];
                    System.arraycopy(strArr, 0, strArr2, 0, length);
                    strArr2[length] = str2;
                    strArr = strArr2;
                    break;
                }
                if (TextUtils.equals(strArr[i], str2)) {
                    break;
                }
                i++;
            }
        } else {
            strArr = new String[]{str2};
        }
        this.f2898e.put(str, strArr);
        this.f2899f.put(str, Integer.valueOf(this.f2901h));
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x04ca  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x04e7  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x04ff  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0510  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x05a3  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x05a5  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x05c9  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x05d0  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x05eb  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:373:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01f2  */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v121, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v41, types: [java.util.List] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m2039b() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1025i7.m2039b():java.lang.String");
    }
}
