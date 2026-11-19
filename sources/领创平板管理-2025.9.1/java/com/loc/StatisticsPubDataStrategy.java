package com.loc;

import com.huawei.hem.AMapCoreUtilities;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/* compiled from: StatisticsPubDataStrategy.java */
/* renamed from: com.loc.bf */
/* loaded from: classes.dex */
public final class StatisticsPubDataStrategy extends UpdateDataStrategy {
    public StatisticsPubDataStrategy() {
    }

    public StatisticsPubDataStrategy(UpdateDataStrategy abstractC1744bg) {
        super(abstractC1744bg);
    }

    @Override // com.loc.AbstractC1744bg
    /* renamed from: a */
    public final byte[] mo4202a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(new SimpleDateFormat("yyyyMMdd HHmmss").format(new Date()));
        stringBuffer.append(" ");
        stringBuffer.append(UUID.randomUUID().toString());
        stringBuffer.append(" ");
        if (stringBuffer.length() != 53) {
            return new byte[0];
        }
        byte[] bArrM2245n = AMapCoreUtilities.m2245n(stringBuffer.toString());
        byte[] bArr2 = new byte[bArrM2245n.length + bArr.length];
        System.arraycopy(bArrM2245n, 0, bArr2, 0, bArrM2245n.length);
        System.arraycopy(bArr, 0, bArr2, bArrM2245n.length, bArr.length);
        return bArr2;
    }
}
