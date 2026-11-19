package com.huawei.hms.framework.common;

import android.content.Context;
import android.os.PowerManager;
import com.huawei.hem.CompilerOutline;

/* loaded from: classes.dex */
public class PowerUtils {
    public static final String TAG = "PowerUtils";

    public static final class PowerMode {
        public static int POWER_MODE_DEFAULT_RETURN_VALUE = 0;
        public static int POWER_SAVER_MODE = 4;
        public static String SMART_MODE_STATUS = "SmartModeStatus";
    }

    public static boolean isDozeIdleMode(Context context) {
        if (context == null) {
            Logger.m3434i(TAG, "isDozeIdleMode Context is null!");
            return false;
        }
        Object systemService = ContextCompat.getSystemService(context, "power");
        PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
        if (powerManager == null) {
            Logger.m3434i(TAG, "isDozeIdleMode powerManager is null!");
            return false;
        }
        try {
            return powerManager.isDeviceIdleMode();
        } catch (RuntimeException e) {
            Logger.m3432e(TAG, "dealType rethrowFromSystemServer:", e);
            return false;
        }
    }

    public static boolean isInteractive(Context context) {
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "power");
            if (systemService instanceof PowerManager) {
                try {
                    return ((PowerManager) systemService).isInteractive();
                } catch (RuntimeException e) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j("getActiveNetworkInfo failed, exception:");
                    sbM1765j.append(e.getClass().getSimpleName());
                    sbM1765j.append(e.getMessage());
                    Logger.m3434i(TAG, sbM1765j.toString());
                }
            }
        }
        return false;
    }

    public static boolean isWhilteList(Context context) {
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "power");
            PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
            String packageName = context.getPackageName();
            if (powerManager != null) {
                try {
                    return powerManager.isIgnoringBatteryOptimizations(packageName);
                } catch (RuntimeException e) {
                    Logger.m3432e(TAG, "dealType rethrowFromSystemServer:", e);
                }
            }
        }
        return false;
    }

    public static int readPowerSaverMode(Context context) {
        if (context == null) {
            Logger.m3434i(TAG, "readPowerSaverMode Context is null!");
            return 0;
        }
        int systemInt = SettingUtil.getSystemInt(context.getContentResolver(), PowerMode.SMART_MODE_STATUS, PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE);
        if (systemInt != PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE) {
            return systemInt;
        }
        Object systemService = ContextCompat.getSystemService(context, "power");
        PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
        if (powerManager == null) {
            return systemInt;
        }
        try {
            return powerManager.isPowerSaveMode() ? PowerMode.POWER_SAVER_MODE : PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE;
        } catch (RuntimeException e) {
            Logger.m3432e(TAG, "dealType rethrowFromSystemServer:", e);
            return systemInt;
        }
    }
}
