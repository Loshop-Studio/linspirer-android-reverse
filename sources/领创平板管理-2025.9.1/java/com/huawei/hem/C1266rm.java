package com.huawei.hem;

import android.annotation.SuppressLint;
import android.net.ssl.SSLSockets;
import android.os.Build;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* compiled from: Android10Platform.java */
@SuppressLint({"NewApi"})
/* renamed from: com.huawei.hem.rm */
/* loaded from: classes.dex */
public class C1266rm extends C1291sm {
    public C1266rm(Class<?> cls) {
        super(cls, null, null, null, null, null);
    }

    @Nullable
    /* renamed from: q */
    public static C1391wm m2666q() {
        int i;
        if (!C1391wm.m2915l()) {
            return null;
        }
        try {
            try {
                i = Build.VERSION.SDK_INT;
            } catch (ReflectiveOperationException unused) {
            }
        } catch (NoClassDefFoundError unused2) {
            i = 0;
        }
        if (i >= 29) {
            return new C1266rm(Class.forName("com.android.org.conscrypt.SSLParametersImpl"));
        }
        return null;
    }

    @Override // com.huawei.hem.C1291sm, com.huawei.hem.C1391wm
    @SuppressLint({"NewApi"})
    @IgnoreJRERequirement
    /* renamed from: g */
    public void mo2667g(SSLSocket sSLSocket, String str, List<EnumC0936ek> list) throws IOException {
        try {
            if (SSLSockets.isSupportedSocket(sSLSocket)) {
                SSLSockets.setUseSessionTickets(sSLSocket, true);
            }
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            sSLParameters.setApplicationProtocols((String[]) ((ArrayList) C1391wm.m2913b(list)).toArray(new String[0]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalArgumentException e) {
            throw new IOException("Android internal error", e);
        }
    }

    @Override // com.huawei.hem.C1291sm, com.huawei.hem.C1391wm
    @Nullable
    @IgnoreJRERequirement
    /* renamed from: j */
    public String mo2668j(SSLSocket sSLSocket) {
        String applicationProtocol = sSLSocket.getApplicationProtocol();
        if (applicationProtocol == null || applicationProtocol.isEmpty()) {
            return null;
        }
        return applicationProtocol;
    }
}
