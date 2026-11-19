package com.huawei.hem;

import android.content.Context;
import android.util.Log;
import com.taobao.accs.utl.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.hem.w6 */
/* loaded from: classes.dex */
public class AgConnectConfigImpl extends AppGalleryConfigReader {

    /* renamed from: c */
    public final Context f3991c;

    /* renamed from: d */
    public final String f3992d;

    /* renamed from: e */
    public AppGalleryConfigStream f3993e;

    /* renamed from: f */
    public volatile AgConnectConfigValueReader f3994f;

    /* renamed from: g */
    public final Object f3995g = new Object();

    /* renamed from: h */
    public Map<String, String> f3996h = new HashMap();

    public AgConnectConfigImpl(Context context, String str) {
        this.f3991c = context;
        this.f3992d = str;
    }

    @Override // com.huawei.hem.AbstractC1275s6
    /* renamed from: c */
    public String mo2681c(String str) {
        if (str == null) {
            throw new NullPointerException("path must not be null.");
        }
        if (this.f3994f == null) {
            synchronized (this.f3995g) {
                if (this.f3994f == null) {
                    if (this.f3993e != null) {
                        AppGalleryConfigStream abstractC1300t6 = this.f3993e;
                        if (abstractC1300t6.f3770b == null) {
                            abstractC1300t6.f3770b = ((AgConnectInputStreamConfig) abstractC1300t6).f3927c;
                        }
                        this.f3994f = new AgConnectJsonConfigReader(abstractC1300t6.f3770b);
                        InputStream inputStream = this.f3993e.f3770b;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused) {
                                Log.e(Utils.TAG, "Exception when closing the 'Closeable'.");
                            }
                        }
                        this.f3993e = null;
                    } else {
                        this.f3994f = new AgConnectSecureResourceReader(this.f3991c, this.f3992d);
                    }
                }
            }
        }
        int i = 0;
        if (str.length() > 0) {
            while (str.charAt(i) == '/') {
                i++;
            }
        }
        String str2 = '/' + str.substring(i);
        if (!this.f3996h.containsKey(str2)) {
            return this.f3994f.mo1299a(str2, null);
        }
        if (this.f3996h.get(str2) != null) {
            return this.f3996h.get(str2);
        }
        return null;
    }
}
