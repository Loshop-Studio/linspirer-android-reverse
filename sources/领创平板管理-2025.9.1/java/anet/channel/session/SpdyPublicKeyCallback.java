package anet.channel.session;

import anet.channel.security.ISecurity;
import anet.channel.util.ALog;
import org.android.spdy.AccsSSLCallback;
import org.android.spdy.SpdyProtocol;

/* compiled from: Taobao */
/* renamed from: anet.channel.session.j */
/* loaded from: classes.dex */
public class SpdyPublicKeyCallback implements AccsSSLCallback {

    /* renamed from: a */
    public final /* synthetic */ TnetSpdySession f409a;

    public SpdyPublicKeyCallback(TnetSpdySession tnetSpdySession) {
        this.f409a = tnetSpdySession;
    }

    @Override // org.android.spdy.AccsSSLCallback
    public byte[] getSSLPublicKey(int i, byte[] bArr) {
        byte[] bArrDecrypt;
        try {
            bArrDecrypt = this.f409a.f381G.decrypt(this.f409a.f95a, ISecurity.CIPHER_ALGORITHM_AES128, SpdyProtocol.TNET_PUBKEY_SG_KEY, bArr);
            if (bArrDecrypt != null) {
                try {
                    if (ALog.isPrintLog(2)) {
                        ALog.m340i("getSSLPublicKey", null, "decrypt", new String(bArrDecrypt));
                    }
                } catch (Throwable th) {
                    th = th;
                    ALog.m338e("awcn.TnetSpdySession", "getSSLPublicKey", null, th, new Object[0]);
                    return bArrDecrypt;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            bArrDecrypt = null;
        }
        return bArrDecrypt;
    }
}
