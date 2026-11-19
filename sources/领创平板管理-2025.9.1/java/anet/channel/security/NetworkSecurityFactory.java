package anet.channel.security;

/* compiled from: Taobao */
/* renamed from: anet.channel.security.d */
/* loaded from: classes.dex */
public final class NetworkSecurityFactory implements ISecurityFactory {
    @Override // anet.channel.security.ISecurityFactory
    public ISecurity createNonSecurity(String str) {
        return new NetworkHmacSecurity(str);
    }

    @Override // anet.channel.security.ISecurityFactory
    public ISecurity createSecurity(String str) {
        return new NetworkSecurityGuardAdapter(str);
    }
}
