package com.loc;

import android.util.Base64;
import anet.channel.util.HttpConstant;
import anetwork.channel.util.RequestConstant;
import java.nio.charset.StandardCharsets;

/* compiled from: CollectionUploader.java */
/* renamed from: com.loc.cb */
/* loaded from: classes.dex */
public final class C1766cb {
    /* renamed from: a */
    public static boolean m4281a(byte[] bArr) {
        String str;
        if (bArr == null) {
            return false;
        }
        byte[] bArr2 = null;
        try {
            C1800di c1800di = new C1800di();
            c1800di.f5325b.put(HttpConstant.CONTENT_TYPE, "application/octet-stream");
            c1800di.f5325b.put("aps_c_src", Base64.encodeToString(C1800di.m4569a().getBytes(), 2));
            c1800di.f5325b.put("aps_c_key", Base64.encodeToString(C1800di.m4570b().getBytes(), 2));
            c1800di.f5327d = bArr;
            if (C1756bs.f5152a) {
                str = "http://cgicol.amap.com/collection/collectData?src=baseCol&ver=v74&";
            } else {
                str = (C1756bs.f5153b ? "https://" : "http://") + "cgicol.amap.com/collection/collectData?src=baseCol&ver=v74&";
            }
            c1800di.f5324a = str;
            C1801dj c1801djMo4571a = C1787cw.m4435b().mo4571a(c1800di);
            if (c1801djMo4571a != null && c1801djMo4571a.f5329a == 200) {
                bArr2 = c1801djMo4571a.f5331c;
            }
            if (bArr2 != null) {
                return RequestConstant.TRUE.equals(new String(bArr2, StandardCharsets.UTF_8));
            }
            return false;
        } catch (Exception e) {
            C1799dh.m4567a(e);
            return false;
        }
    }
}
