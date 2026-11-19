package com.google.zxing.common;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class StringUtils {
    public static final boolean ASSUME_SHIFT_JIS;
    public static final String EUC_JP = "EUC_JP";
    public static final String GB2312 = "GB2312";
    public static final String ISO88591 = "ISO8859_1";
    public static final String PLATFORM_DEFAULT_ENCODING;
    public static final String SHIFT_JIS = "SJIS";
    public static final String UTF8 = "UTF8";

    static {
        String strName = Charset.defaultCharset().name();
        PLATFORM_DEFAULT_ENCODING = strName;
        ASSUME_SHIFT_JIS = SHIFT_JIS.equalsIgnoreCase(strName) || EUC_JP.equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0080 A[PHI: r10
      0x0080: PHI (r10v6 int) = (r10v1 int), (r10v5 int), (r10v1 int) binds: [B:32:0x0063, B:40:0x007b, B:27:0x0058] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String guessEncoding(byte[] r19, java.util.Map<com.google.zxing.DecodeHintType, ?> r20) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.StringUtils.guessEncoding(byte[], java.util.Map):java.lang.String");
    }
}
