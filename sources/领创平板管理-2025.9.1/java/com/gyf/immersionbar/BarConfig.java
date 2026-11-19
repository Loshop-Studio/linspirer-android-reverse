package com.gyf.immersionbar;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import anet.channel.strategy.dispatch.DispatchConstants;

/* loaded from: classes.dex */
public class BarConfig {
    public final int mActionBarHeight;
    public final boolean mHasNavigationBar;
    public final boolean mInPortrait;
    public final int mNavigationBarHeight;
    public final int mNavigationBarWidth;
    public final float mSmallestWidthDp;
    public final int mStatusBarHeight;

    public BarConfig(Activity activity) {
        this.mInPortrait = activity.getResources().getConfiguration().orientation == 1;
        this.mSmallestWidthDp = getSmallestWidthDp(activity);
        this.mStatusBarHeight = getInternalDimensionSize(activity, Constants.IMMERSION_STATUS_BAR_HEIGHT);
        this.mActionBarHeight = getActionBarHeight(activity);
        this.mNavigationBarHeight = getNavigationBarHeight(activity);
        this.mNavigationBarWidth = getNavigationBarWidth(activity);
        this.mHasNavigationBar = this.mNavigationBarHeight > 0;
    }

    @TargetApi(14)
    private int getActionBarHeight(Activity activity) {
        View viewFindViewById = activity.getWindow().findViewById(C0808R.id.action_bar_container);
        int measuredHeight = viewFindViewById != null ? viewFindViewById.getMeasuredHeight() : 0;
        if (measuredHeight != 0) {
            return measuredHeight;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(android.R.attr.actionBarSize, typedValue, true);
        return TypedValue.complexToDimensionPixelSize(typedValue.data, activity.getResources().getDisplayMetrics());
    }

    private int getInternalDimensionSize(Context context, String str) throws Resources.NotFoundException {
        try {
            int identifier = Resources.getSystem().getIdentifier(str, "dimen", DispatchConstants.ANDROID);
            if (identifier > 0) {
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(identifier);
                int dimensionPixelSize2 = Resources.getSystem().getDimensionPixelSize(identifier);
                if (dimensionPixelSize2 >= dimensionPixelSize) {
                    return dimensionPixelSize2;
                }
                float f = (dimensionPixelSize * Resources.getSystem().getDisplayMetrics().density) / context.getResources().getDisplayMetrics().density;
                return (int) (f >= 0.0f ? f + 0.5f : f - 0.5f);
            }
        } catch (Resources.NotFoundException unused) {
        }
        return 0;
    }

    @TargetApi(14)
    private int getNavigationBarHeight(Context context) {
        if (hasNavBar((Activity) context)) {
            return getInternalDimensionSize(context, this.mInPortrait ? Constants.IMMERSION_NAVIGATION_BAR_HEIGHT : Constants.IMMERSION_NAVIGATION_BAR_HEIGHT_LANDSCAPE);
        }
        return 0;
    }

    @TargetApi(14)
    private int getNavigationBarWidth(Context context) {
        if (hasNavBar((Activity) context)) {
            return getInternalDimensionSize(context, Constants.IMMERSION_NAVIGATION_BAR_WIDTH);
        }
        return 0;
    }

    @SuppressLint({"NewApi"})
    private float getSmallestWidthDp(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        float f = displayMetrics.widthPixels;
        float f2 = displayMetrics.density;
        return Math.min(f / f2, displayMetrics.heightPixels / f2);
    }

    @TargetApi(14)
    private boolean hasNavBar(Activity activity) {
        if (Settings.Global.getInt(activity.getContentResolver(), Constants.IMMERSION_MIUI_NAVIGATION_BAR_HIDE_SHOW, 0) != 0) {
            return false;
        }
        if (OSUtils.isEMUI()) {
            if (OSUtils.isEMUI3_x()) {
                if (Settings.System.getInt(activity.getContentResolver(), Constants.IMMERSION_EMUI_NAVIGATION_BAR_HIDE_SHOW, 0) != 0) {
                    return false;
                }
            } else if (Settings.Global.getInt(activity.getContentResolver(), Constants.IMMERSION_EMUI_NAVIGATION_BAR_HIDE_SHOW, 0) != 0) {
                return false;
            }
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        int i = displayMetrics.heightPixels;
        int i2 = displayMetrics.widthPixels;
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics2);
        return i2 - displayMetrics2.widthPixels > 0 || i - displayMetrics2.heightPixels > 0;
    }

    public int getStatusBarHeight() {
        return this.mStatusBarHeight;
    }

    public boolean hasNavigationBar() {
        return this.mHasNavigationBar;
    }

    public boolean isNavigationAtBottom() {
        return this.mSmallestWidthDp >= 600.0f || this.mInPortrait;
    }

    public int getNavigationBarWidth() {
        return this.mNavigationBarWidth;
    }

    public int getNavigationBarHeight() {
        return this.mNavigationBarHeight;
    }

    public int getActionBarHeight() {
        return this.mActionBarHeight;
    }
}
