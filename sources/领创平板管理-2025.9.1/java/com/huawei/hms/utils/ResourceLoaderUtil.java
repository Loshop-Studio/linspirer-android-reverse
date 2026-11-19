package com.huawei.hms.utils;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.alibaba.sdk.android.push.notification.CustomNotificationBuilder;
import org.android.agoo.common.AgooConstants;

/* loaded from: classes.dex */
public abstract class ResourceLoaderUtil {

    /* renamed from: a */
    public static Context f4614a;

    /* renamed from: b */
    public static String f4615b;

    public static int getAnimId(String str) {
        return f4614a.getResources().getIdentifier(str, "anim", f4615b);
    }

    public static int getColorId(String str) {
        return f4614a.getResources().getIdentifier(str, "color", f4615b);
    }

    public static Drawable getDrawable(String str) {
        return f4614a.getResources().getDrawable(getDrawableId(str));
    }

    public static int getDrawableId(String str) {
        return f4614a.getResources().getIdentifier(str, CustomNotificationBuilder.NOTIFICATION_ICON_RES_TYPE, f4615b);
    }

    public static int getIdId(String str) {
        return f4614a.getResources().getIdentifier(str, AgooConstants.MESSAGE_ID, f4615b);
    }

    public static int getLayoutId(String str) {
        return f4614a.getResources().getIdentifier(str, "layout", f4615b);
    }

    public static String getString(String str) {
        return f4614a.getResources().getString(getStringId(str));
    }

    public static int getStringId(String str) {
        return f4614a.getResources().getIdentifier(str, "string", f4615b);
    }

    public static int getStyleId(String str) {
        return f4614a.getResources().getIdentifier(str, "style", f4615b);
    }

    public static Context getmContext() {
        return f4614a;
    }

    public static void setmContext(Context context) {
        f4614a = context;
        f4615b = context.getPackageName();
    }

    public static String getString(String str, Object... objArr) {
        return f4614a.getResources().getString(getStringId(str), objArr);
    }
}
