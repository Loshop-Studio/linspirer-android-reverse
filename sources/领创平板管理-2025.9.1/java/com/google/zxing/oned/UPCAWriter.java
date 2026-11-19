package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.huawei.hem.CompilerOutline;
import java.util.Map;
import org.android.agoo.message.MessageService;

/* loaded from: classes.dex */
public final class UPCAWriter implements Writer {
    public final EAN13Writer subWriter = new EAN13Writer();

    public static String preencode(String str) {
        int length = str.length();
        if (length == 11) {
            int iCharAt = 0;
            for (int i = 0; i < 11; i++) {
                iCharAt += (str.charAt(i) - '0') * (i % 2 == 0 ? 3 : 1);
            }
            StringBuilder sbM1765j = CompilerOutline.m1765j(str);
            sbM1765j.append((1000 - iCharAt) % 10);
            str = sbM1765j.toString();
        } else if (length != 12) {
            throw new IllegalArgumentException("Requested contents should be 11 or 12 digits long, but got " + str.length());
        }
        return MessageService.MSG_DB_READY_REPORT + str;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        if (barcodeFormat == BarcodeFormat.UPC_A) {
            return this.subWriter.encode(preencode(str), BarcodeFormat.EAN_13, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got " + barcodeFormat);
    }
}
