package anet.channel.entity;

import anet.channel.strategy.IConnStrategy;
import com.huawei.hem.CompilerOutline;

/* compiled from: Taobao */
/* renamed from: anet.channel.entity.a */
/* loaded from: classes.dex */
public class SessionConnectionInfo {

    /* renamed from: a */
    public final IConnStrategy f247a;

    /* renamed from: b */
    public int f248b = 0;

    /* renamed from: c */
    public int f249c = 0;

    /* renamed from: d */
    public String f250d;

    /* renamed from: e */
    public String f251e;

    public SessionConnectionInfo(String str, String str2, IConnStrategy iConnStrategy) {
        this.f247a = iConnStrategy;
        this.f250d = str;
        this.f251e = str2;
    }

    /* renamed from: a */
    public String m132a() {
        IConnStrategy iConnStrategy = this.f247a;
        if (iConnStrategy != null) {
            return iConnStrategy.getIp();
        }
        return null;
    }

    /* renamed from: b */
    public int m133b() {
        IConnStrategy iConnStrategy = this.f247a;
        if (iConnStrategy != null) {
            return iConnStrategy.getPort();
        }
        return 0;
    }

    /* renamed from: c */
    public ConnType m134c() {
        IConnStrategy iConnStrategy = this.f247a;
        return iConnStrategy != null ? ConnType.valueOf(iConnStrategy.getProtocol()) : ConnType.HTTP;
    }

    /* renamed from: d */
    public int m135d() {
        IConnStrategy iConnStrategy = this.f247a;
        if (iConnStrategy == null || iConnStrategy.getConnectionTimeout() == 0) {
            return 20000;
        }
        return this.f247a.getConnectionTimeout();
    }

    /* renamed from: e */
    public int m136e() {
        IConnStrategy iConnStrategy = this.f247a;
        if (iConnStrategy == null || iConnStrategy.getReadTimeout() == 0) {
            return 20000;
        }
        return this.f247a.getReadTimeout();
    }

    /* renamed from: f */
    public String m137f() {
        return this.f250d;
    }

    /* renamed from: g */
    public int m138g() {
        IConnStrategy iConnStrategy = this.f247a;
        if (iConnStrategy != null) {
            return iConnStrategy.getHeartbeat();
        }
        return 45000;
    }

    /* renamed from: h */
    public String m139h() {
        return this.f251e;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("ConnInfo [ip=");
        sbM1765j.append(m132a());
        sbM1765j.append(",port=");
        sbM1765j.append(m133b());
        sbM1765j.append(",type=");
        sbM1765j.append(m134c());
        sbM1765j.append(",hb");
        sbM1765j.append(m138g());
        sbM1765j.append("]");
        return sbM1765j.toString();
    }
}
