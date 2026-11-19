package com.google.zxing.integration.android;

import com.huawei.hem.C0948f6;

/* loaded from: classes.dex */
public final class IntentResult {
    public final String barcodeImagePath;
    public final String contents;
    public final String errorCorrectionLevel;
    public final String formatName;
    public final Integer orientation;
    public final byte[] rawBytes;

    public IntentResult() {
        this(null, null, null, null, null, null);
    }

    public String getBarcodeImagePath() {
        return this.barcodeImagePath;
    }

    public String getContents() {
        return this.contents;
    }

    public String getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    public String getFormatName() {
        return this.formatName;
    }

    public Integer getOrientation() {
        return this.orientation;
    }

    public byte[] getRawBytes() {
        return this.rawBytes;
    }

    public String toString() {
        byte[] bArr = this.rawBytes;
        int length = bArr == null ? 0 : bArr.length;
        StringBuilder sbM1765j = C0948f6.m1765j("Format: ");
        C0948f6.m1781z(sbM1765j, this.formatName, '\n', "Contents: ");
        sbM1765j.append(this.contents);
        sbM1765j.append('\n');
        sbM1765j.append("Raw bytes: (");
        sbM1765j.append(length);
        sbM1765j.append(" bytes)\nOrientation: ");
        sbM1765j.append(this.orientation);
        sbM1765j.append('\n');
        sbM1765j.append("EC level: ");
        C0948f6.m1781z(sbM1765j, this.errorCorrectionLevel, '\n', "Barcode image: ");
        sbM1765j.append(this.barcodeImagePath);
        sbM1765j.append('\n');
        return sbM1765j.toString();
    }

    public IntentResult(String str, String str2, byte[] bArr, Integer num, String str3, String str4) {
        this.contents = str;
        this.formatName = str2;
        this.rawBytes = bArr;
        this.orientation = num;
        this.errorCorrectionLevel = str3;
        this.barcodeImagePath = str4;
    }
}
