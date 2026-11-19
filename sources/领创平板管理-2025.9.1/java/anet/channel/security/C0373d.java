package anet.channel.security;

/* compiled from: Taobao */
/* renamed from: anet.channel.security.d */
/* loaded from: classes.dex */
public final class C0373d implements ISecurityFactory {
    @Override // anet.channel.security.ISecurityFactory
    public ISecurity createNonSecurity(String str) {
        return new C0370a(str);
    }

    @Override // anet.channel.security.ISecurityFactory
    public ISecurity createSecurity(String str) {
        return new C0371b(str);
    }
}
