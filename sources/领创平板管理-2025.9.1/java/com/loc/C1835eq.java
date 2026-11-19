package com.loc;

import com.taobao.accs.common.Constants;
import java.util.Calendar;
import java.util.Date;

/* compiled from: DateUtil.java */
/* renamed from: com.loc.eq */
/* loaded from: classes.dex */
public final class C1835eq {
    /* renamed from: a */
    public static long m5028a(long j) {
        return j - m5031b(j);
    }

    /* renamed from: a */
    public static long m5029a(long j, long j2) {
        long jM5031b = m5031b(j2) + m5028a(j);
        long jAbs = Math.abs(jM5031b - j2);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(jM5031b));
        int i = calendar.get(11);
        if (i == 23 && jAbs >= 82800000) {
            jM5031b -= Constants.CLIENT_FLUSH_INTERVAL;
        }
        return (i != 0 || jAbs < 82800000) ? jM5031b : jM5031b + Constants.CLIENT_FLUSH_INTERVAL;
    }

    /* renamed from: a */
    public static long m5030a(long j, long j2, int i) {
        if (i <= 0) {
            return j;
        }
        try {
            return Math.abs(j - j2) > ((long) i) * 31536000000L ? m5029a(j, j2) : j;
        } catch (Throwable unused) {
            return j;
        }
    }

    /* renamed from: b */
    public static long m5031b(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(j));
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }
}
