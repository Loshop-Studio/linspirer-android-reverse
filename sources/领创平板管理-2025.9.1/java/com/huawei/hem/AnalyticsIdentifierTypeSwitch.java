package com.huawei.hem;

/* renamed from: com.huawei.hem.i9 */
/* loaded from: classes.dex */
public /* synthetic */ class AnalyticsIdentifierTypeSwitch {

    /* renamed from: a */
    public static final /* synthetic */ int[] f2906a;

    static {
        int[] iArr = new int[AnalyticsDeviceIdentifierType.values().length];
        f2906a = iArr;
        try {
            AnalyticsDeviceIdentifierType enumC1279sa = AnalyticsDeviceIdentifierType.SN;
            iArr[2] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            int[] iArr2 = f2906a;
            AnalyticsDeviceIdentifierType enumC1279sa2 = AnalyticsDeviceIdentifierType.IMEI;
            iArr2[0] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            int[] iArr3 = f2906a;
            AnalyticsDeviceIdentifierType enumC1279sa3 = AnalyticsDeviceIdentifierType.UDID;
            iArr3[1] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
