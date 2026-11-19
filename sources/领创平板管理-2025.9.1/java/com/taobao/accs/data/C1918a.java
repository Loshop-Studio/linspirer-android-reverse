package com.taobao.accs.data;

import com.huawei.hms.common.internal.TransactionIdCreater;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.data.a */
/* loaded from: classes.dex */
public class C1918a {
    public static final int SPLITTED_DATA_INDEX = 17;
    public static final int SPLITTED_DATA_MD5 = 18;
    public static final int SPLITTED_DATA_NUMS = 16;
    public static final int SPLITTED_TIME_OUT = 15;

    /* renamed from: a */
    public static final char[] f6131a = {TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b */
    public String f6132b;

    /* renamed from: c */
    public int f6133c;

    /* renamed from: d */
    public String f6134d;

    /* renamed from: e */
    public long f6135e;

    /* renamed from: g */
    public ScheduledFuture<?> f6137g;

    /* renamed from: f */
    public volatile int f6136f = 0;

    /* renamed from: h */
    public Map<Integer, byte[]> f6138h = new TreeMap(new C1919b(this));

    public C1918a(String str, int i, String str2) {
        this.f6132b = str;
        this.f6133c = i;
        this.f6134d = str2;
    }

    /* renamed from: a */
    public void m5532a(long j) {
        if (j <= 0) {
            j = 30000;
        }
        this.f6137g = ThreadPoolExecutorFactory.getScheduledExecutor().schedule(new RunnableC1920c(this), j, TimeUnit.MILLISECONDS);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00e6  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] m5533a(int r13, int r14, byte[] r15) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.accs.data.C1918a.m5533a(int, int, byte[]):byte[]");
    }

    /* renamed from: a */
    public static char[] m5529a(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            char[] cArr2 = f6131a;
            cArr[i] = cArr2[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr[i3] = cArr2[bArr[i2] & 15];
        }
        return cArr;
    }
}
