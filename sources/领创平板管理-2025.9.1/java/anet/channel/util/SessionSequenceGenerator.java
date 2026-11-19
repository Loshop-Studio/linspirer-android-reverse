package anet.channel.util;

import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Taobao */
/* renamed from: anet.channel.util.i */
/* loaded from: classes.dex */
public class SessionSequenceGenerator {

    /* renamed from: a */
    public static AtomicInteger f600a = new AtomicInteger();

    /* renamed from: a */
    public static String m364a(String str) {
        if (f600a.get() == Integer.MAX_VALUE) {
            f600a.set(0);
        }
        return !TextUtils.isEmpty(str) ? StringUtils.concatString(str, ".AWCN", String.valueOf(f600a.incrementAndGet())) : StringUtils.concatString("AWCN", String.valueOf(f600a.incrementAndGet()));
    }
}
