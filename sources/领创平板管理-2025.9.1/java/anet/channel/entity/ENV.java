package anet.channel.entity;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public enum ENV {
    ONLINE(0),
    PREPARE(1),
    TEST(2);

    public int envMode;

    ENV(int i) {
        this.envMode = i;
    }

    public int getEnvMode() {
        return this.envMode;
    }

    public void setEnvMode(int i) {
        this.envMode = i;
    }

    public static ENV valueOf(int i) {
        return i != 1 ? i != 2 ? ONLINE : TEST : PREPARE;
    }
}
