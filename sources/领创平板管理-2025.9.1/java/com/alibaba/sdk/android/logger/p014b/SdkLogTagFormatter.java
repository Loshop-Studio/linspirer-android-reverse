package com.alibaba.sdk.android.logger.p014b;

import com.huawei.hem.CompilerOutline;
import com.taobao.accs.AccsClientConfig;

/* renamed from: com.alibaba.sdk.android.logger.b.g */
/* loaded from: classes.dex */
public class SdkLogTagFormatter {

    /* renamed from: a */
    public String f980a;

    public SdkLogTagFormatter(String str) {
        this.f980a = str;
        if (str == null) {
            this.f980a = AccsClientConfig.DEFAULT_CONFIGTAG;
        }
    }

    /* renamed from: a */
    public String m686a(Object obj) {
        String simpleName;
        if (obj == null) {
            simpleName = "";
        } else if (obj instanceof Class) {
            simpleName = ((Class) obj).getSimpleName();
        } else if (obj instanceof String) {
            simpleName = (String) obj;
        } else {
            simpleName = obj.getClass().getSimpleName() + "@" + obj.hashCode();
        }
        return CompilerOutline.m1763h(new StringBuilder(), this.f980a, "_", simpleName);
    }
}
