package anet.channel.security;

import android.content.Context;
import android.text.TextUtils;
import anet.channel.util.HMacUtil;

/* compiled from: Taobao */
/* renamed from: anet.channel.security.a */
/* loaded from: classes.dex */
public class NetworkHmacSecurity implements ISecurity {

    /* renamed from: a */
    public String f369a;

    public NetworkHmacSecurity(String str) {
        this.f369a = null;
        this.f369a = str;
    }

    @Override // anet.channel.security.ISecurity
    public byte[] decrypt(Context context, String str, String str2, byte[] bArr) {
        return null;
    }

    @Override // anet.channel.security.ISecurity
    public byte[] getBytes(Context context, String str) {
        return null;
    }

    @Override // anet.channel.security.ISecurity
    public boolean isSecOff() {
        return true;
    }

    @Override // anet.channel.security.ISecurity
    public boolean saveBytes(Context context, String str, byte[] bArr) {
        return false;
    }

    @Override // anet.channel.security.ISecurity
    public String sign(Context context, String str, String str2, String str3) {
        if (!TextUtils.isEmpty(this.f369a) && ISecurity.SIGN_ALGORITHM_HMAC_SHA1.equalsIgnoreCase(str)) {
            return HMacUtil.hmacSha1Hex(this.f369a.getBytes(), str3.getBytes());
        }
        return null;
    }
}
