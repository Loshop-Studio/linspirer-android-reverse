package com.taobao.accs.net;

import com.taobao.accs.utl.UtilityImpl;
import org.android.spdy.AccsSSLCallback;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.aa */
/* loaded from: classes.dex */
public class C1939aa implements AccsSSLCallback {

    /* renamed from: a */
    public final /* synthetic */ C1961w f6208a;

    public C1939aa(C1961w c1961w) {
        this.f6208a = c1961w;
    }

    @Override // org.android.spdy.AccsSSLCallback
    public byte[] getSSLPublicKey(int i, byte[] bArr) {
        return UtilityImpl.m5747a();
    }
}
