package com.huawei.hms.framework.common;

import android.content.Context;
import java.io.InputStream;

/* loaded from: classes.dex */
public class AssetsUtil {
    public static final String TAG = "AssetsUtil";

    public static String[] list(Context context, String str) {
        if (context == null) {
            Logger.m3438w(TAG, "context is null");
            return new String[0];
        }
        try {
            return context.getAssets().list(str);
        } catch (RuntimeException e) {
            Logger.m3432e(TAG, "AssetManager has been destroyed", e);
            return null;
        }
    }

    public static InputStream open(Context context, String str) {
        if (context == null) {
            Logger.m3438w(TAG, "context is null");
            return null;
        }
        try {
            return context.getAssets().open(str);
        } catch (RuntimeException e) {
            Logger.m3432e(TAG, "AssetManager has been destroyed", e);
            return null;
        }
    }
}
