package anet.channel;

import anet.channel.security.ISecurity;
import anet.channel.strategy.dispatch.IAmdcSign;

/* compiled from: Taobao */
/* renamed from: anet.channel.d */
/* loaded from: classes.dex */
public class C0321d implements IAmdcSign {

    /* renamed from: a */
    public final /* synthetic */ String f182a;

    /* renamed from: b */
    public final /* synthetic */ ISecurity f183b;

    /* renamed from: c */
    public final /* synthetic */ SessionCenter f184c;

    public C0321d(SessionCenter sessionCenter, String str, ISecurity iSecurity) {
        this.f184c = sessionCenter;
        this.f182a = str;
        this.f183b = iSecurity;
    }

    @Override // anet.channel.strategy.dispatch.IAmdcSign
    public String getAppkey() {
        return this.f182a;
    }

    @Override // anet.channel.strategy.dispatch.IAmdcSign
    public String sign(String str) {
        return this.f183b.sign(this.f184c.f123b, ISecurity.SIGN_ALGORITHM_HMAC_SHA1, getAppkey(), str);
    }

    @Override // anet.channel.strategy.dispatch.IAmdcSign
    public boolean useSecurityGuard() {
        return !this.f183b.isSecOff();
    }
}
