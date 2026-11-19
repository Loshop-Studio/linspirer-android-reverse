package com.huawei.hms.common.internal;

import android.support.v4.app.FrameMetricsAggregator;
import com.huawei.hms.utils.StringUtil;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

/* loaded from: classes.dex */
public class TransactionIdCreater {
    public static final int API_SIZE = 6;
    public static final int APPID_SIZE = 9;
    public static final char FILL_BYTE = '0';

    public static String getId(String str, String str2) {
        return StringUtil.addByteForNum(str, 9, FILL_BYTE) + StringUtil.addByteForNum(str2, 6, FILL_BYTE) + new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.ENGLISH).format(new Date()) + String.format(Locale.ENGLISH, "%06d", Integer.valueOf(new Random().nextInt(FrameMetricsAggregator.FrameMetricsApi24Impl.NANOS_PER_MS)));
    }
}
