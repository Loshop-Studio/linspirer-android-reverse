package com.huawei.hms.framework.common;

import com.huawei.android.os.BuildEx;

/* loaded from: classes.dex */
public class EmuiUtil {
    public static final String BUILDEX_NAME = "com.huawei.android.os.BuildEx";
    public static final String BUILDEX_VERSION = "com.huawei.android.os.BuildEx$VERSION";
    public static final int EMUI_3_0 = 7;
    public static final int EMUI_3_1 = 8;
    public static final int EMUI_4_0 = 9;
    public static final int EMUI_4_1 = 10;
    public static final int EMUI_5_0 = 11;
    public static final int EMUI_6_0 = 14;
    public static final int EMUI_8_0_1 = 15;
    public static final int EMUI_9_0 = 17;
    public static final String EMUI_SDK_INT = "EMUI_SDK_INT";
    public static final int EMUI_TYPE_UNKOWN = -1;
    public static final String GET_PRIMARY_COLOR = "getPrimaryColor";
    public static final String GET_SUGGESTION_FOR_GROUND_COLOR_STYLE = "getSuggestionForgroundColorStyle";
    public static final String IMMERSION_STYLE = "com.huawei.android.immersion.ImmersionStyle";
    public static final String TAG = "KPMS_Util_Emui";
    public static final int TYPE_EMUI_30 = 30;
    public static final int TYPE_EMUI_31 = 31;
    public static final int TYPE_EMUI_40 = 40;
    public static final int TYPE_EMUI_41 = 41;
    public static final int TYPE_EMUI_50 = 50;
    public static final int TYPE_EMUI_60 = 60;
    public static final int TYPE_EMUI_801 = 81;
    public static final int TYPE_EMUI_90 = 90;
    public static int emuiType = -1;

    static {
        initEmuiType();
    }

    public static int getEMUIVersionCode() throws NoSuchFieldException {
        int iIntValue;
        Object staticFieldObj = ReflectionUtils.getStaticFieldObj(BUILDEX_VERSION, EMUI_SDK_INT);
        if (staticFieldObj != null) {
            try {
                iIntValue = ((Integer) staticFieldObj).intValue();
            } catch (ClassCastException e) {
                Logger.m3432e(TAG, "getEMUIVersionCode ClassCastException:", e);
            }
        } else {
            iIntValue = 0;
        }
        Logger.m3429d(TAG, "the emui version code is::" + iIntValue);
        return iIntValue;
    }

    public static void initEmuiType() throws NoSuchFieldException {
        int eMUIVersionCode = getEMUIVersionCode();
        Logger.m3429d(TAG, "getEmuiType emuiVersionCode=" + eMUIVersionCode);
        if (eMUIVersionCode >= 17) {
            emuiType = 90;
        } else if (eMUIVersionCode >= 15) {
            emuiType = 81;
        } else if (eMUIVersionCode >= 14) {
            emuiType = 60;
        } else if (eMUIVersionCode >= 11) {
            emuiType = 50;
        } else if (eMUIVersionCode >= 10) {
            emuiType = 41;
        } else if (eMUIVersionCode >= 9) {
            emuiType = 40;
        } else if (eMUIVersionCode >= 8) {
            emuiType = 31;
        } else if (eMUIVersionCode >= 7) {
            emuiType = 30;
        }
        if (emuiType == -1) {
            Logger.m3434i(TAG, "emuiType is unkown");
        }
    }

    public static boolean isEMUI() {
        return -1 != emuiType;
    }

    public static boolean isUpPVersion() {
        return ReflectionUtils.checkCompatible(BUILDEX_NAME) && BuildEx.VERSION.EMUI_SDK_INT >= 17;
    }
}
