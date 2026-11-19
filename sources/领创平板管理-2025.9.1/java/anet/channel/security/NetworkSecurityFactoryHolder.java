package anet.channel.security;

/* compiled from: Taobao */
/* renamed from: anet.channel.security.c */
/* loaded from: classes.dex */
public class NetworkSecurityFactoryHolder {

    /* renamed from: a */
    public static volatile ISecurityFactory f374a;

    /* renamed from: a */
    public static ISecurityFactory m205a() {
        if (f374a == null) {
            f374a = new NetworkSecurityFactory();
        }
        return f374a;
    }
}
