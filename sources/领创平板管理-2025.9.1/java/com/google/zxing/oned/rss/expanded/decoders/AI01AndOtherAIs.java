package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
import com.huawei.hem.C0948f6;

/* loaded from: classes.dex */
public final class AI01AndOtherAIs extends AI01decoder {
    public static final int HEADER_SIZE = 4;

    public AI01AndOtherAIs(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() {
        StringBuilder sbM1765j = C0948f6.m1765j("(01)");
        int length = sbM1765j.length();
        sbM1765j.append(getGeneralDecoder().extractNumericValueFromBitArray(4, 4));
        encodeCompressedGtinWithoutAI(sbM1765j, 8, length);
        return getGeneralDecoder().decodeAllCodes(sbM1765j, 48);
    }
}
