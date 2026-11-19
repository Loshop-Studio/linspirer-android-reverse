package anet.channel.monitor;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public enum NetworkSpeed {
    Slow("弱网络", 1),
    Fast("强网络", 5);


    /* renamed from: a */
    public final String f288a;

    /* renamed from: b */
    public final int f289b;

    NetworkSpeed(String str, int i) {
        this.f288a = str;
        this.f289b = i;
    }

    public static NetworkSpeed valueOfCode(int i) {
        return i == 1 ? Slow : Fast;
    }

    public int getCode() {
        return this.f289b;
    }

    public String getDesc() {
        return this.f288a;
    }
}
