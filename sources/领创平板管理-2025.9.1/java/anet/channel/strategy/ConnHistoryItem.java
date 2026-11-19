package anet.channel.strategy;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.google.zxing.client.android.InactivityTimer;
import com.taobao.accs.common.Constants;
import java.io.Serializable;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ConnHistoryItem implements Serializable {

    /* renamed from: a */
    public byte f445a = 0;

    /* renamed from: b */
    public long f446b = 0;

    /* renamed from: c */
    public long f447c = 0;

    /* renamed from: a */
    public void m251a(boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - (z ? this.f446b : this.f447c) > 10000) {
            this.f445a = (byte) ((this.f445a << 1) | (!z ? 1 : 0));
            if (z) {
                this.f446b = jCurrentTimeMillis;
            } else {
                this.f447c = jCurrentTimeMillis;
            }
        }
    }

    /* renamed from: b */
    public boolean m252b() {
        return (this.f445a & 1) == 1;
    }

    /* renamed from: c */
    public boolean m253c() {
        return m250a() >= 3 && System.currentTimeMillis() - this.f447c <= InactivityTimer.INACTIVITY_DELAY_MS;
    }

    /* renamed from: d */
    public boolean m254d() {
        long j = this.f446b;
        long j2 = this.f447c;
        if (j <= j2) {
            j = j2;
        }
        return j != 0 && System.currentTimeMillis() - j > Constants.CLIENT_FLUSH_INTERVAL;
    }

    /* renamed from: a */
    public int m250a() {
        int i = 0;
        for (int i2 = this.f445a & Base64.EQUALS_SIGN_ENC; i2 > 0; i2 >>= 1) {
            i += i2 & 1;
        }
        return i;
    }
}
