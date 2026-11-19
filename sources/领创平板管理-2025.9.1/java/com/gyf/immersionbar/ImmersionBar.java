package com.gyf.immersionbar;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.app.DialogFragment;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

@TargetApi(19)
/* loaded from: classes.dex */
public final class ImmersionBar implements ImmersionCallback {
    public int mActionBarHeight;
    public Activity mActivity;
    public BarConfig mBarConfig;
    public BarParams mBarParams;
    public ViewGroup mContentView;
    public ViewGroup mDecorView;
    public Dialog mDialog;
    public FitsKeyboard mFitsKeyboard;
    public int mFitsStatusBarType;
    public Fragment mFragment;
    public boolean mInitialized;
    public boolean mIsActionBarBelowLOLLIPOP;
    public boolean mIsActivity;
    public boolean mIsDialog;
    public boolean mIsDialogFragment;
    public boolean mIsFragment;
    public boolean mKeyboardTempEnable;
    public int mNavigationBarHeight;
    public int mNavigationBarWidth;
    public int mPaddingBottom;
    public int mPaddingLeft;
    public int mPaddingRight;
    public int mPaddingTop;
    public ImmersionBar mParentBar;
    public android.support.v4.app.Fragment mSupportFragment;
    public Map<String, BarParams> mTagMap;
    public Window mWindow;

    /* renamed from: com.gyf.immersionbar.ImmersionBar$2 */
    public static /* synthetic */ class ImmersionBarHideSwitch {
        public static final /* synthetic */ int[] $SwitchMap$com$gyf$immersionbar$BarHide;

        static {
            int[] iArr = new int[BarHide.values().length];
            $SwitchMap$com$gyf$immersionbar$BarHide = iArr;
            try {
                BarHide barHide = BarHide.FLAG_HIDE_BAR;
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$gyf$immersionbar$BarHide;
                BarHide barHide2 = BarHide.FLAG_HIDE_STATUS_BAR;
                iArr2[0] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$gyf$immersionbar$BarHide;
                BarHide barHide3 = BarHide.FLAG_HIDE_NAVIGATION_BAR;
                iArr3[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$gyf$immersionbar$BarHide;
                BarHide barHide4 = BarHide.FLAG_SHOW_BAR;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ImmersionBar(Activity activity) {
        this.mIsActivity = false;
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsActivity = true;
        this.mActivity = activity;
        initCommonParameter(activity.getWindow());
    }

    private void adjustDarkModeParams() {
        int i;
        int i2;
        BarParams barParams = this.mBarParams;
        if (barParams.autoStatusBarDarkModeEnable && (i2 = barParams.statusBarColor) != 0) {
            statusBarDarkFont(i2 > -4539718, this.mBarParams.autoStatusBarDarkModeAlpha);
        }
        BarParams barParams2 = this.mBarParams;
        if (!barParams2.autoNavigationBarDarkModeEnable || (i = barParams2.navigationBarColor) == 0) {
            return;
        }
        navigationBarDarkIcon(i > -4539718, this.mBarParams.autoNavigationBarDarkModeAlpha);
    }

    private void cancelListener() {
        if (this.mActivity != null) {
            FitsKeyboard fitsKeyboard = this.mFitsKeyboard;
            if (fitsKeyboard != null) {
                fitsKeyboard.cancel();
                this.mFitsKeyboard = null;
            }
            EMUI3NavigationBarObserver.getInstance().removeOnNavigationBarListener(this);
            NavigationBarObserver.getInstance().removeOnNavigationBarListener(this.mBarParams.onNavigationBarListener);
        }
    }

    public static boolean checkFitsSystemWindows(View view) {
        if (view == null) {
            return false;
        }
        if (view.getFitsSystemWindows()) {
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (((childAt instanceof DrawerLayout) && checkFitsSystemWindows(childAt)) || childAt.getFitsSystemWindows()) {
                    return true;
                }
            }
        }
        return false;
    }

    private void checkInitWithActivity() {
        if (this.mParentBar == null) {
            this.mParentBar = with(this.mActivity);
        }
        ImmersionBar immersionBar = this.mParentBar;
        if (immersionBar == null || immersionBar.mInitialized) {
            return;
        }
        immersionBar.init();
    }

    public static void destroy(@NonNull android.support.v4.app.Fragment fragment) {
        getRetriever().destroy(fragment, false);
    }

    private void fitsKeyboard() {
        if (!this.mIsFragment) {
            if (this.mBarParams.keyboardEnable) {
                if (this.mFitsKeyboard == null) {
                    this.mFitsKeyboard = new FitsKeyboard(this);
                }
                this.mFitsKeyboard.enable(this.mBarParams.keyboardMode);
                return;
            } else {
                FitsKeyboard fitsKeyboard = this.mFitsKeyboard;
                if (fitsKeyboard != null) {
                    fitsKeyboard.disable();
                    return;
                }
                return;
            }
        }
        ImmersionBar immersionBar = this.mParentBar;
        if (immersionBar != null) {
            if (immersionBar.mBarParams.keyboardEnable) {
                if (immersionBar.mFitsKeyboard == null) {
                    immersionBar.mFitsKeyboard = new FitsKeyboard(immersionBar);
                }
                ImmersionBar immersionBar2 = this.mParentBar;
                immersionBar2.mFitsKeyboard.enable(immersionBar2.mBarParams.keyboardMode);
                return;
            }
            FitsKeyboard fitsKeyboard2 = immersionBar.mFitsKeyboard;
            if (fitsKeyboard2 != null) {
                fitsKeyboard2.disable();
            }
        }
    }

    private void fitsLayoutOverlap() {
        int statusBarHeight = this.mBarParams.fitsLayoutOverlapEnable ? getStatusBarHeight(this.mActivity) : 0;
        int i = this.mFitsStatusBarType;
        if (i == 1) {
            setTitleBar(this.mActivity, statusBarHeight, this.mBarParams.titleBarView);
        } else if (i == 2) {
            setTitleBarMarginTop(this.mActivity, statusBarHeight, this.mBarParams.titleBarView);
        } else {
            if (i != 3) {
                return;
            }
            setStatusBarView(this.mActivity, statusBarHeight, this.mBarParams.statusBarView);
        }
    }

    private void fitsNotchScreen() {
        if (Build.VERSION.SDK_INT < 28 || this.mInitialized) {
            return;
        }
        WindowManager.LayoutParams attributes = this.mWindow.getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        this.mWindow.setAttributes(attributes);
    }

    private void fitsWindows() {
        if (OSUtils.isEMUI3_x()) {
            fitsWindowsBelowLOLLIPOP();
        } else {
            fitsWindowsAboveLOLLIPOP();
        }
        fitsLayoutOverlap();
    }

    private void fitsWindowsAboveLOLLIPOP() {
        updateBarConfig();
        if (checkFitsSystemWindows(this.mDecorView.findViewById(android.R.id.content))) {
            setPadding(0, 0, 0, 0);
            return;
        }
        int statusBarHeight = (this.mBarParams.fits && this.mFitsStatusBarType == 4) ? this.mBarConfig.getStatusBarHeight() : 0;
        if (this.mBarParams.isSupportActionBar) {
            statusBarHeight = this.mBarConfig.getStatusBarHeight() + this.mActionBarHeight;
        }
        setPadding(0, statusBarHeight, 0, 0);
    }

    private void fitsWindowsBelowLOLLIPOP() {
        if (this.mBarParams.isSupportActionBar) {
            this.mIsActionBarBelowLOLLIPOP = true;
            this.mContentView.post(this);
        } else {
            this.mIsActionBarBelowLOLLIPOP = false;
            postFitsWindowsBelowLOLLIPOP();
        }
    }

    private void fitsWindowsEMUI() {
        View viewFindViewById = this.mDecorView.findViewById(Constants.IMMERSION_ID_NAVIGATION_BAR_VIEW);
        BarParams barParams = this.mBarParams;
        if (!barParams.navigationBarEnable || !barParams.navigationBarWithKitkatEnable) {
            EMUI3NavigationBarObserver.getInstance().removeOnNavigationBarListener(this);
            viewFindViewById.setVisibility(8);
        } else if (viewFindViewById != null) {
            EMUI3NavigationBarObserver.getInstance().addOnNavigationBarListener(this);
            EMUI3NavigationBarObserver.getInstance().register(this.mActivity.getApplication());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void fitsWindowsKITKAT() {
        /*
            r5 = this;
            android.view.ViewGroup r0 = r5.mDecorView
            r1 = 16908290(0x1020002, float:2.3877235E-38)
            android.view.View r0 = r0.findViewById(r1)
            boolean r0 = checkFitsSystemWindows(r0)
            r1 = 0
            if (r0 == 0) goto L14
            r5.setPadding(r1, r1, r1, r1)
            return
        L14:
            com.gyf.immersionbar.BarParams r0 = r5.mBarParams
            boolean r0 = r0.fits
            if (r0 == 0) goto L26
            int r0 = r5.mFitsStatusBarType
            r2 = 4
            if (r0 != r2) goto L26
            com.gyf.immersionbar.BarConfig r0 = r5.mBarConfig
            int r0 = r0.getStatusBarHeight()
            goto L27
        L26:
            r0 = r1
        L27:
            com.gyf.immersionbar.BarParams r2 = r5.mBarParams
            boolean r2 = r2.isSupportActionBar
            if (r2 == 0) goto L36
            com.gyf.immersionbar.BarConfig r0 = r5.mBarConfig
            int r0 = r0.getStatusBarHeight()
            int r2 = r5.mActionBarHeight
            int r0 = r0 + r2
        L36:
            com.gyf.immersionbar.BarConfig r2 = r5.mBarConfig
            boolean r2 = r2.hasNavigationBar()
            if (r2 == 0) goto L88
            com.gyf.immersionbar.BarParams r2 = r5.mBarParams
            boolean r3 = r2.navigationBarEnable
            if (r3 == 0) goto L88
            boolean r3 = r2.navigationBarWithKitkatEnable
            if (r3 == 0) goto L88
            boolean r2 = r2.fullScreen
            if (r2 != 0) goto L65
            com.gyf.immersionbar.BarConfig r2 = r5.mBarConfig
            boolean r2 = r2.isNavigationAtBottom()
            if (r2 == 0) goto L5d
            com.gyf.immersionbar.BarConfig r2 = r5.mBarConfig
            int r2 = r2.getNavigationBarHeight()
            r3 = r2
            r2 = r1
            goto L67
        L5d:
            com.gyf.immersionbar.BarConfig r2 = r5.mBarConfig
            int r2 = r2.getNavigationBarWidth()
            r3 = r1
            goto L67
        L65:
            r2 = r1
            r3 = r2
        L67:
            com.gyf.immersionbar.BarParams r4 = r5.mBarParams
            boolean r4 = r4.hideNavigationBar
            if (r4 == 0) goto L79
            com.gyf.immersionbar.BarConfig r4 = r5.mBarConfig
            boolean r4 = r4.isNavigationAtBottom()
            if (r4 == 0) goto L77
            r3 = r1
            goto L8a
        L77:
            r2 = r1
            goto L8a
        L79:
            com.gyf.immersionbar.BarConfig r4 = r5.mBarConfig
            boolean r4 = r4.isNavigationAtBottom()
            if (r4 != 0) goto L8a
            com.gyf.immersionbar.BarConfig r2 = r5.mBarConfig
            int r2 = r2.getNavigationBarWidth()
            goto L8a
        L88:
            r2 = r1
            r3 = r2
        L8a:
            r5.setPadding(r1, r0, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gyf.immersionbar.ImmersionBar.fitsWindowsKITKAT():void");
    }

    @TargetApi(14)
    public static int getNavigationBarHeight(@NonNull Activity activity) {
        return new BarConfig(activity).getNavigationBarHeight();
    }

    @TargetApi(14)
    public static int getNavigationBarWidth(@NonNull Activity activity) {
        return new BarConfig(activity).getNavigationBarWidth();
    }

    public static int getNotchHeight(@NonNull Activity activity) {
        if (hasNotchScreen(activity)) {
            return NotchUtils.getNotchHeight(activity);
        }
        return 0;
    }

    public static RequestManagerRetriever getRetriever() {
        return RequestManagerRetriever.getInstance();
    }

    @TargetApi(14)
    public static int getStatusBarHeight(@NonNull Activity activity) {
        return new BarConfig(activity).getStatusBarHeight();
    }

    @TargetApi(14)
    public static boolean hasNavigationBar(@NonNull Activity activity) {
        return new BarConfig(activity).hasNavigationBar();
    }

    public static boolean hasNotchScreen(@NonNull Activity activity) {
        return NotchUtils.hasNotchScreen(activity);
    }

    private int hideBar(int i) {
        int iOrdinal = this.mBarParams.barHide.ordinal();
        if (iOrdinal == 0) {
            i |= 1028;
        } else if (iOrdinal == 1) {
            i |= 514;
        } else if (iOrdinal == 2) {
            i |= 518;
        } else if (iOrdinal == 3) {
            i |= 0;
        }
        return i | 4096;
    }

    public static void hideStatusBar(@NonNull Window window) {
        window.setFlags(1024, 1024);
    }

    @RequiresApi(api = 21)
    private int initBarAboveLOLLIPOP(int i) {
        if (!this.mInitialized) {
            this.mBarParams.defaultNavigationBarColor = this.mWindow.getNavigationBarColor();
        }
        int i2 = i | 1024;
        BarParams barParams = this.mBarParams;
        if (barParams.fullScreen && barParams.navigationBarEnable) {
            i2 |= 512;
        }
        this.mWindow.clearFlags(67108864);
        if (this.mBarConfig.hasNavigationBar()) {
            this.mWindow.clearFlags(134217728);
        }
        this.mWindow.addFlags(Integer.MIN_VALUE);
        BarParams barParams2 = this.mBarParams;
        if (barParams2.statusBarColorEnabled) {
            this.mWindow.setStatusBarColor(ColorUtils.blendARGB(barParams2.statusBarColor, barParams2.statusBarColorTransform, barParams2.statusBarAlpha));
        } else {
            this.mWindow.setStatusBarColor(ColorUtils.blendARGB(barParams2.statusBarColor, 0, barParams2.statusBarAlpha));
        }
        BarParams barParams3 = this.mBarParams;
        if (barParams3.navigationBarEnable) {
            this.mWindow.setNavigationBarColor(ColorUtils.blendARGB(barParams3.navigationBarColor, barParams3.navigationBarColorTransform, barParams3.navigationBarAlpha));
        } else {
            this.mWindow.setNavigationBarColor(barParams3.defaultNavigationBarColor);
        }
        return i2;
    }

    private void initBarBelowLOLLIPOP() {
        this.mWindow.addFlags(67108864);
        setupStatusBarView();
        if (this.mBarConfig.hasNavigationBar() || OSUtils.isEMUI3_x()) {
            BarParams barParams = this.mBarParams;
            if (barParams.navigationBarEnable && barParams.navigationBarWithKitkatEnable) {
                this.mWindow.addFlags(134217728);
            } else {
                this.mWindow.clearFlags(134217728);
            }
            if (this.mNavigationBarHeight == 0) {
                this.mNavigationBarHeight = this.mBarConfig.getNavigationBarHeight();
            }
            if (this.mNavigationBarWidth == 0) {
                this.mNavigationBarWidth = this.mBarConfig.getNavigationBarWidth();
            }
            setupNavBarView();
        }
    }

    private void initCommonParameter(Window window) {
        this.mWindow = window;
        this.mBarParams = new BarParams();
        ViewGroup viewGroup = (ViewGroup) this.mWindow.getDecorView();
        this.mDecorView = viewGroup;
        this.mContentView = (ViewGroup) viewGroup.findViewById(android.R.id.content);
    }

    public static boolean isEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }

    @TargetApi(14)
    public static boolean isNavigationAtBottom(@NonNull Activity activity) {
        return new BarConfig(activity).isNavigationAtBottom();
    }

    public static boolean isSupportNavigationIconDark() {
        return OSUtils.isMIUI6Later() || Build.VERSION.SDK_INT >= 26;
    }

    public static boolean isSupportStatusBarDarkFont() {
        if (OSUtils.isMIUI6Later()) {
            return true;
        }
        OSUtils.isFlymeOS4Later();
        return true;
    }

    private void postFitsWindowsBelowLOLLIPOP() {
        updateBarConfig();
        fitsWindowsKITKAT();
        if (this.mIsFragment || !OSUtils.isEMUI3_x()) {
            return;
        }
        fitsWindowsEMUI();
    }

    public static void setFitsSystemWindows(Activity activity, boolean z) {
        if (activity == null) {
            return;
        }
        setFitsSystemWindows(((ViewGroup) activity.findViewById(android.R.id.content)).getChildAt(0), z);
    }

    private int setNavigationIconDark(int i) {
        return (Build.VERSION.SDK_INT < 26 || !this.mBarParams.navigationBarDarkIcon) ? i : i | 16;
    }

    private void setPadding(int i, int i2, int i3, int i4) {
        ViewGroup viewGroup = this.mContentView;
        if (viewGroup != null) {
            viewGroup.setPadding(i, i2, i3, i4);
        }
        this.mPaddingLeft = i;
        this.mPaddingTop = i2;
        this.mPaddingRight = i3;
        this.mPaddingBottom = i4;
    }

    private void setSpecialBarDarkMode() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (OSUtils.isMIUI6Later()) {
            SpecialBarFontUtils.setMIUIBarDark(this.mWindow, Constants.IMMERSION_MIUI_STATUS_BAR_DARK, this.mBarParams.statusBarDarkFont);
            BarParams barParams = this.mBarParams;
            if (barParams.navigationBarEnable) {
                SpecialBarFontUtils.setMIUIBarDark(this.mWindow, Constants.IMMERSION_MIUI_NAVIGATION_BAR_DARK, barParams.navigationBarDarkIcon);
            }
        }
        if (OSUtils.isFlymeOS4Later()) {
            BarParams barParams2 = this.mBarParams;
            int i = barParams2.flymeOSStatusBarFontColor;
            if (i != 0) {
                SpecialBarFontUtils.setStatusBarDarkIcon(this.mActivity, i);
            } else {
                SpecialBarFontUtils.setStatusBarDarkIcon(this.mActivity, barParams2.statusBarDarkFont);
            }
        }
    }

    private int setStatusBarDarkFont(int i) {
        return this.mBarParams.statusBarDarkFont ? i | 8192 : i;
    }

    public static void setStatusBarView(Activity activity, int i, View... viewArr) {
        if (activity == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        for (View view : viewArr) {
            if (view != null) {
                Integer num = (Integer) view.getTag(GyfImmersionbarResources.id.immersion_fits_layout_overlap);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i) {
                    view.setTag(GyfImmersionbarResources.id.immersion_fits_layout_overlap, Integer.valueOf(i));
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.LayoutParams(-1, 0);
                    }
                    layoutParams.height = i;
                    view.setLayoutParams(layoutParams);
                }
            }
        }
    }

    public static void setTitleBar(Activity activity, final int i, View... viewArr) {
        if (activity == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        for (final View view : viewArr) {
            if (view != null) {
                final Integer num = (Integer) view.getTag(GyfImmersionbarResources.id.immersion_fits_layout_overlap);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i) {
                    view.setTag(GyfImmersionbarResources.id.immersion_fits_layout_overlap, Integer.valueOf(i));
                    final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.LayoutParams(-1, -2);
                    }
                    int i2 = layoutParams.height;
                    if (i2 == -2 || i2 == -1) {
                        view.post(new Runnable() { // from class: com.gyf.immersionbar.ImmersionBar.1
                            @Override // java.lang.Runnable
                            public void run() {
                                layoutParams.height = (view.getHeight() + i) - num.intValue();
                                View view2 = view;
                                view2.setPadding(view2.getPaddingLeft(), (view.getPaddingTop() + i) - num.intValue(), view.getPaddingRight(), view.getPaddingBottom());
                                view.setLayoutParams(layoutParams);
                            }
                        });
                    } else {
                        layoutParams.height = (i - num.intValue()) + i2;
                        view.setPadding(view.getPaddingLeft(), (view.getPaddingTop() + i) - num.intValue(), view.getPaddingRight(), view.getPaddingBottom());
                        view.setLayoutParams(layoutParams);
                    }
                }
            }
        }
    }

    public static void setTitleBarMarginTop(Activity activity, int i, View... viewArr) {
        if (activity == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        for (View view : viewArr) {
            if (view != null) {
                Integer num = (Integer) view.getTag(GyfImmersionbarResources.id.immersion_fits_layout_overlap);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i) {
                    view.setTag(GyfImmersionbarResources.id.immersion_fits_layout_overlap, Integer.valueOf(i));
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.MarginLayoutParams(-1, -2);
                    }
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams.setMargins(marginLayoutParams.leftMargin, (marginLayoutParams.topMargin + i) - num.intValue(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                    view.setLayoutParams(marginLayoutParams);
                }
            }
        }
    }

    private void setupNavBarView() {
        FrameLayout.LayoutParams layoutParams;
        View viewFindViewById = this.mDecorView.findViewById(Constants.IMMERSION_ID_NAVIGATION_BAR_VIEW);
        if (viewFindViewById == null) {
            viewFindViewById = new View(this.mActivity);
            viewFindViewById.setId(Constants.IMMERSION_ID_NAVIGATION_BAR_VIEW);
            this.mDecorView.addView(viewFindViewById);
        }
        if (this.mBarConfig.isNavigationAtBottom()) {
            layoutParams = new FrameLayout.LayoutParams(-1, this.mBarConfig.getNavigationBarHeight());
            layoutParams.gravity = 80;
        } else {
            layoutParams = new FrameLayout.LayoutParams(this.mBarConfig.getNavigationBarWidth(), -1);
            layoutParams.gravity = 8388613;
        }
        viewFindViewById.setLayoutParams(layoutParams);
        BarParams barParams = this.mBarParams;
        viewFindViewById.setBackgroundColor(ColorUtils.blendARGB(barParams.navigationBarColor, barParams.navigationBarColorTransform, barParams.navigationBarAlpha));
        BarParams barParams2 = this.mBarParams;
        if (barParams2.navigationBarEnable && barParams2.navigationBarWithKitkatEnable && !barParams2.hideNavigationBar) {
            viewFindViewById.setVisibility(0);
        } else {
            viewFindViewById.setVisibility(8);
        }
    }

    private void setupStatusBarView() {
        View viewFindViewById = this.mDecorView.findViewById(Constants.IMMERSION_ID_STATUS_BAR_VIEW);
        if (viewFindViewById == null) {
            viewFindViewById = new View(this.mActivity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.mBarConfig.getStatusBarHeight());
            layoutParams.gravity = 48;
            viewFindViewById.setLayoutParams(layoutParams);
            viewFindViewById.setVisibility(0);
            viewFindViewById.setId(Constants.IMMERSION_ID_STATUS_BAR_VIEW);
            this.mDecorView.addView(viewFindViewById);
        }
        BarParams barParams = this.mBarParams;
        if (barParams.statusBarColorEnabled) {
            viewFindViewById.setBackgroundColor(ColorUtils.blendARGB(barParams.statusBarColor, barParams.statusBarColorTransform, barParams.statusBarAlpha));
        } else {
            viewFindViewById.setBackgroundColor(ColorUtils.blendARGB(barParams.statusBarColor, 0, barParams.statusBarAlpha));
        }
    }

    public static void showStatusBar(@NonNull Window window) {
        window.clearFlags(1024);
    }

    private void transformView() {
        if (this.mBarParams.viewMap.size() != 0) {
            for (Map.Entry<View, Map<Integer, Integer>> entry : this.mBarParams.viewMap.entrySet()) {
                View key = entry.getKey();
                Map<Integer, Integer> value = entry.getValue();
                Integer numValueOf = Integer.valueOf(this.mBarParams.statusBarColor);
                Integer numValueOf2 = Integer.valueOf(this.mBarParams.statusBarColorTransform);
                for (Map.Entry<Integer, Integer> entry2 : value.entrySet()) {
                    Integer key2 = entry2.getKey();
                    numValueOf2 = entry2.getValue();
                    numValueOf = key2;
                }
                if (key != null) {
                    if (Math.abs(this.mBarParams.viewAlpha - 0.0f) == 0.0f) {
                        key.setBackgroundColor(ColorUtils.blendARGB(numValueOf.intValue(), numValueOf2.intValue(), this.mBarParams.statusBarAlpha));
                    } else {
                        key.setBackgroundColor(ColorUtils.blendARGB(numValueOf.intValue(), numValueOf2.intValue(), this.mBarParams.viewAlpha));
                    }
                }
            }
        }
    }

    private void updateBarConfig() {
        this.mBarConfig = new BarConfig(this.mActivity);
        if (!this.mInitialized || this.mIsActionBarBelowLOLLIPOP) {
            this.mActionBarHeight = this.mBarConfig.getActionBarHeight();
        }
    }

    private void updateBarParams() {
        adjustDarkModeParams();
        updateBarConfig();
        ImmersionBar immersionBar = this.mParentBar;
        if (immersionBar != null) {
            if (this.mIsFragment) {
                immersionBar.mBarParams = this.mBarParams;
            }
            if (this.mIsDialog) {
                ImmersionBar immersionBar2 = this.mParentBar;
                if (immersionBar2.mKeyboardTempEnable) {
                    immersionBar2.mBarParams.keyboardEnable = false;
                }
            }
        }
    }

    public static ImmersionBar with(@NonNull Activity activity) {
        return getRetriever().get(activity);
    }

    public ImmersionBar addTag(String str) {
        if (isEmpty(str)) {
            throw new IllegalArgumentException("tag不能为空");
        }
        this.mTagMap.put(str, this.mBarParams.m5895clone());
        return this;
    }

    public ImmersionBar addViewSupportTransformColor(View view) {
        return addViewSupportTransformColorInt(view, this.mBarParams.statusBarColorTransform);
    }

    public ImmersionBar addViewSupportTransformColorInt(View view, @ColorInt int i) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        HashMap map = new HashMap();
        map.put(Integer.valueOf(this.mBarParams.statusBarColor), Integer.valueOf(i));
        this.mBarParams.viewMap.put(view, map);
        return this;
    }

    public ImmersionBar applySystemFits(boolean z) {
        this.mBarParams.fitsLayoutOverlapEnable = !z;
        setFitsSystemWindows(this.mActivity, z);
        return this;
    }

    public ImmersionBar autoDarkModeEnable(boolean z) {
        return autoDarkModeEnable(z, 0.2f);
    }

    public ImmersionBar autoNavigationBarDarkModeEnable(boolean z) {
        return autoNavigationBarDarkModeEnable(z, 0.2f);
    }

    public ImmersionBar autoStatusBarDarkModeEnable(boolean z) {
        return autoStatusBarDarkModeEnable(z, 0.2f);
    }

    public ImmersionBar barAlpha(@FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarAlpha = f;
        barParams.statusBarTempAlpha = f;
        barParams.navigationBarAlpha = f;
        barParams.navigationBarTempAlpha = f;
        return this;
    }

    public ImmersionBar barColor(@ColorRes int i) {
        return barColorInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar barColorInt(@ColorInt int i) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = i;
        barParams.navigationBarColor = i;
        return this;
    }

    public ImmersionBar barColorTransform(@ColorRes int i) {
        return barColorTransformInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar barColorTransformInt(@ColorInt int i) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColorTransform = i;
        barParams.navigationBarColorTransform = i;
        return this;
    }

    public ImmersionBar barEnable(boolean z) {
        this.mBarParams.barEnable = z;
        return this;
    }

    public ImmersionBar fitsLayoutOverlapEnable(boolean z) {
        this.mBarParams.fitsLayoutOverlapEnable = z;
        return this;
    }

    public ImmersionBar fitsSystemWindows(boolean z) {
        this.mBarParams.fits = z;
        if (!z) {
            this.mFitsStatusBarType = 0;
        } else if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 4;
        }
        return this;
    }

    public ImmersionBar fitsSystemWindowsInt(boolean z, @ColorInt int i) {
        return fitsSystemWindowsInt(z, i, -16777216, 0.0f);
    }

    public ImmersionBar flymeOSStatusBarFontColor(@ColorRes int i) {
        this.mBarParams.flymeOSStatusBarFontColor = ContextCompat.getColor(this.mActivity, i);
        BarParams barParams = this.mBarParams;
        barParams.flymeOSStatusBarFontTempColor = barParams.flymeOSStatusBarFontColor;
        return this;
    }

    public ImmersionBar flymeOSStatusBarFontColorInt(@ColorInt int i) {
        BarParams barParams = this.mBarParams;
        barParams.flymeOSStatusBarFontColor = i;
        barParams.flymeOSStatusBarFontTempColor = i;
        return this;
    }

    public ImmersionBar fullScreen(boolean z) {
        this.mBarParams.fullScreen = z;
        return this;
    }

    public int getActionBarHeight() {
        return this.mActionBarHeight;
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public BarConfig getBarConfig() {
        if (this.mBarConfig == null) {
            this.mBarConfig = new BarConfig(this.mActivity);
        }
        return this.mBarConfig;
    }

    public BarParams getBarParams() {
        return this.mBarParams;
    }

    public Fragment getFragment() {
        return this.mFragment;
    }

    public int getPaddingBottom() {
        return this.mPaddingBottom;
    }

    public int getPaddingLeft() {
        return this.mPaddingLeft;
    }

    public int getPaddingRight() {
        return this.mPaddingRight;
    }

    public int getPaddingTop() {
        return this.mPaddingTop;
    }

    public android.support.v4.app.Fragment getSupportFragment() {
        return this.mSupportFragment;
    }

    public ImmersionBar getTag(String str) {
        if (isEmpty(str)) {
            throw new IllegalArgumentException("tag不能为空");
        }
        BarParams barParams = this.mTagMap.get(str);
        if (barParams != null) {
            this.mBarParams = barParams.m5895clone();
        }
        return this;
    }

    public Window getWindow() {
        return this.mWindow;
    }

    public void init() {
        if (this.mBarParams.barEnable) {
            updateBarParams();
            setBar();
            fitsWindows();
            fitsKeyboard();
            transformView();
            this.mInitialized = true;
        }
    }

    public boolean initialized() {
        return this.mInitialized;
    }

    public boolean isDialogFragment() {
        return this.mIsDialogFragment;
    }

    public boolean isFragment() {
        return this.mIsFragment;
    }

    public ImmersionBar keyboardEnable(boolean z) {
        return keyboardEnable(z, this.mBarParams.keyboardMode);
    }

    public ImmersionBar keyboardMode(int i) {
        this.mBarParams.keyboardMode = i;
        return this;
    }

    public ImmersionBar navigationBarAlpha(@FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.navigationBarAlpha = f;
        barParams.navigationBarTempAlpha = f;
        return this;
    }

    public ImmersionBar navigationBarColor(@ColorRes int i) {
        return navigationBarColorInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar navigationBarColorInt(@ColorInt int i) {
        this.mBarParams.navigationBarColor = i;
        return this;
    }

    public ImmersionBar navigationBarColorTransform(@ColorRes int i) {
        return navigationBarColorTransformInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar navigationBarColorTransformInt(@ColorInt int i) {
        this.mBarParams.navigationBarColorTransform = i;
        return this;
    }

    public ImmersionBar navigationBarDarkIcon(boolean z) {
        return navigationBarDarkIcon(z, 0.2f);
    }

    public ImmersionBar navigationBarEnable(boolean z) {
        this.mBarParams.navigationBarEnable = z;
        return this;
    }

    public ImmersionBar navigationBarWithEMUI3Enable(boolean z) {
        if (OSUtils.isEMUI3_x()) {
            BarParams barParams = this.mBarParams;
            barParams.navigationBarWithEMUI3Enable = z;
            barParams.navigationBarWithKitkatEnable = z;
        }
        return this;
    }

    public ImmersionBar navigationBarWithKitkatEnable(boolean z) {
        this.mBarParams.navigationBarWithKitkatEnable = z;
        return this;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!OSUtils.isEMUI3_x()) {
            fitsWindows();
        } else if (this.mInitialized && !this.mIsFragment && this.mBarParams.navigationBarWithKitkatEnable) {
            init();
        } else {
            fitsWindows();
        }
    }

    public void onDestroy() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ImmersionBar immersionBar;
        cancelListener();
        if (this.mIsDialog && (immersionBar = this.mParentBar) != null) {
            BarParams barParams = immersionBar.mBarParams;
            barParams.keyboardEnable = immersionBar.mKeyboardTempEnable;
            if (barParams.barHide != BarHide.FLAG_SHOW_BAR) {
                immersionBar.setBar();
            }
        }
        this.mInitialized = false;
    }

    @Override // com.gyf.immersionbar.OnNavigationBarListener
    public void onNavigationBarChange(boolean z) {
        View viewFindViewById = this.mDecorView.findViewById(Constants.IMMERSION_ID_NAVIGATION_BAR_VIEW);
        if (viewFindViewById != null) {
            this.mBarConfig = new BarConfig(this.mActivity);
            int paddingBottom = this.mContentView.getPaddingBottom();
            int paddingRight = this.mContentView.getPaddingRight();
            if (z) {
                viewFindViewById.setVisibility(0);
                if (!checkFitsSystemWindows(this.mDecorView.findViewById(android.R.id.content))) {
                    if (this.mNavigationBarHeight == 0) {
                        this.mNavigationBarHeight = this.mBarConfig.getNavigationBarHeight();
                    }
                    if (this.mNavigationBarWidth == 0) {
                        this.mNavigationBarWidth = this.mBarConfig.getNavigationBarWidth();
                    }
                    if (!this.mBarParams.hideNavigationBar) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewFindViewById.getLayoutParams();
                        if (this.mBarConfig.isNavigationAtBottom()) {
                            layoutParams.gravity = 80;
                            paddingBottom = this.mNavigationBarHeight;
                            layoutParams.height = paddingBottom;
                            if (this.mBarParams.fullScreen) {
                                paddingBottom = 0;
                            }
                            paddingRight = 0;
                        } else {
                            layoutParams.gravity = 8388613;
                            int i = this.mNavigationBarWidth;
                            layoutParams.width = i;
                            if (this.mBarParams.fullScreen) {
                                i = 0;
                            }
                            paddingRight = i;
                            paddingBottom = 0;
                        }
                        viewFindViewById.setLayoutParams(layoutParams);
                    }
                }
                setPadding(0, this.mContentView.getPaddingTop(), paddingRight, paddingBottom);
            }
            viewFindViewById.setVisibility(8);
            paddingBottom = 0;
            paddingRight = 0;
            setPadding(0, this.mContentView.getPaddingTop(), paddingRight, paddingBottom);
        }
    }

    public void onResume() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.mIsFragment || !this.mInitialized || this.mBarParams == null) {
            return;
        }
        if (OSUtils.isEMUI3_x() && this.mBarParams.navigationBarWithEMUI3Enable) {
            init();
        } else if (this.mBarParams.barHide != BarHide.FLAG_SHOW_BAR) {
            setBar();
        }
    }

    public ImmersionBar removeSupportAllView() {
        if (this.mBarParams.viewMap.size() != 0) {
            this.mBarParams.viewMap.clear();
        }
        return this;
    }

    public ImmersionBar removeSupportView(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        Map<Integer, Integer> map = this.mBarParams.viewMap.get(view);
        if (map != null && map.size() != 0) {
            this.mBarParams.viewMap.remove(view);
        }
        return this;
    }

    public ImmersionBar reset() {
        this.mBarParams = new BarParams();
        this.mFitsStatusBarType = 0;
        return this;
    }

    @Override // java.lang.Runnable
    public void run() {
        postFitsWindowsBelowLOLLIPOP();
    }

    public void setBar() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int navigationIconDark = 256;
        if (OSUtils.isEMUI3_x()) {
            initBarBelowLOLLIPOP();
        } else {
            fitsNotchScreen();
            navigationIconDark = setNavigationIconDark(setStatusBarDarkFont(initBarAboveLOLLIPOP(256)));
        }
        this.mDecorView.setSystemUiVisibility(hideBar(navigationIconDark));
        setSpecialBarDarkMode();
        if (this.mBarParams.onNavigationBarListener != null) {
            NavigationBarObserver.getInstance().register(this.mActivity.getApplication());
        }
    }

    public ImmersionBar setOnBarListener(OnBarListener onBarListener) {
        if (onBarListener != null) {
            BarParams barParams = this.mBarParams;
            if (barParams.onBarListener == null) {
                barParams.onBarListener = onBarListener;
            }
        } else {
            BarParams barParams2 = this.mBarParams;
            if (barParams2.onBarListener != null) {
                barParams2.onBarListener = null;
            }
        }
        return this;
    }

    public ImmersionBar setOnKeyboardListener(@Nullable OnKeyboardListener onKeyboardListener) {
        BarParams barParams = this.mBarParams;
        if (barParams.onKeyboardListener == null) {
            barParams.onKeyboardListener = onKeyboardListener;
        }
        return this;
    }

    public ImmersionBar setOnNavigationBarListener(OnNavigationBarListener onNavigationBarListener) {
        if (onNavigationBarListener != null) {
            BarParams barParams = this.mBarParams;
            if (barParams.onNavigationBarListener == null) {
                barParams.onNavigationBarListener = onNavigationBarListener;
                NavigationBarObserver.getInstance().addOnNavigationBarListener(this.mBarParams.onNavigationBarListener);
            }
        } else if (this.mBarParams.onNavigationBarListener != null) {
            NavigationBarObserver.getInstance().removeOnNavigationBarListener(this.mBarParams.onNavigationBarListener);
            this.mBarParams.onNavigationBarListener = null;
        }
        return this;
    }

    public ImmersionBar statusBarAlpha(@FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarAlpha = f;
        barParams.statusBarTempAlpha = f;
        return this;
    }

    public ImmersionBar statusBarColor(@ColorRes int i) {
        return statusBarColorInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar statusBarColorInt(@ColorInt int i) {
        this.mBarParams.statusBarColor = i;
        return this;
    }

    public ImmersionBar statusBarColorTransform(@ColorRes int i) {
        return statusBarColorTransformInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar statusBarColorTransformEnable(boolean z) {
        this.mBarParams.statusBarColorEnabled = z;
        return this;
    }

    public ImmersionBar statusBarColorTransformInt(@ColorInt int i) {
        this.mBarParams.statusBarColorTransform = i;
        return this;
    }

    public ImmersionBar statusBarDarkFont(boolean z) {
        return statusBarDarkFont(z, 0.2f);
    }

    public ImmersionBar statusBarView(View view) {
        if (view == null) {
            return this;
        }
        this.mBarParams.statusBarView = view;
        if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 3;
        }
        return this;
    }

    public ImmersionBar supportActionBar(boolean z) {
        this.mBarParams.isSupportActionBar = z;
        return this;
    }

    public ImmersionBar titleBar(View view) {
        return view == null ? this : titleBar(view, true);
    }

    public ImmersionBar titleBarMarginTop(@IdRes int i) {
        android.support.v4.app.Fragment fragment = this.mSupportFragment;
        if (fragment != null && fragment.getView() != null) {
            return titleBarMarginTop(this.mSupportFragment.getView().findViewById(i));
        }
        Fragment fragment2 = this.mFragment;
        return (fragment2 == null || fragment2.getView() == null) ? titleBarMarginTop(this.mActivity.findViewById(i)) : titleBarMarginTop(this.mFragment.getView().findViewById(i));
    }

    public ImmersionBar transparentBar() {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = 0;
        barParams.navigationBarColor = 0;
        barParams.fullScreen = true;
        return this;
    }

    public ImmersionBar transparentNavigationBar() {
        BarParams barParams = this.mBarParams;
        barParams.navigationBarColor = 0;
        barParams.fullScreen = true;
        return this;
    }

    public ImmersionBar transparentStatusBar() {
        this.mBarParams.statusBarColor = 0;
        return this;
    }

    public ImmersionBar viewAlpha(@FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        this.mBarParams.viewAlpha = f;
        return this;
    }

    public static void destroy(@NonNull android.support.v4.app.Fragment fragment, boolean z) {
        getRetriever().destroy(fragment, z);
    }

    @TargetApi(14)
    public static int getActionBarHeight(@NonNull Activity activity) {
        return new BarConfig(activity).getActionBarHeight();
    }

    public static boolean hasNotchScreen(@NonNull android.support.v4.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNotchScreen(fragment.getActivity());
    }

    public static void setFitsSystemWindows(Activity activity) {
        setFitsSystemWindows(activity, true);
    }

    public static ImmersionBar with(@NonNull android.support.v4.app.Fragment fragment) {
        return getRetriever().get(fragment, false);
    }

    public ImmersionBar addViewSupportTransformColor(View view, @ColorRes int i) {
        return addViewSupportTransformColorInt(view, ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar autoDarkModeEnable(boolean z, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.autoStatusBarDarkModeEnable = z;
        barParams.autoStatusBarDarkModeAlpha = f;
        barParams.autoNavigationBarDarkModeEnable = z;
        barParams.autoNavigationBarDarkModeAlpha = f;
        return this;
    }

    public ImmersionBar autoNavigationBarDarkModeEnable(boolean z, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.autoNavigationBarDarkModeEnable = z;
        barParams.autoNavigationBarDarkModeAlpha = f;
        return this;
    }

    public ImmersionBar autoStatusBarDarkModeEnable(boolean z, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.autoStatusBarDarkModeEnable = z;
        barParams.autoStatusBarDarkModeAlpha = f;
        return this;
    }

    public ImmersionBar barColor(@ColorRes int i, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return barColorInt(ContextCompat.getColor(this.mActivity, i), i);
    }

    public ImmersionBar barColorTransform(String str) {
        return barColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar fitsSystemWindowsInt(boolean z, @ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.fits = z;
        barParams.contentColor = i;
        barParams.contentColorTransform = i2;
        barParams.contentAlpha = f;
        if (!z) {
            this.mFitsStatusBarType = 0;
        } else if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 4;
        }
        ViewGroup viewGroup = this.mContentView;
        BarParams barParams2 = this.mBarParams;
        viewGroup.setBackgroundColor(ColorUtils.blendARGB(barParams2.contentColor, barParams2.contentColorTransform, barParams2.contentAlpha));
        return this;
    }

    public ImmersionBar hideBar(BarHide barHide) {
        this.mBarParams.barHide = barHide;
        if (OSUtils.isEMUI3_x()) {
            BarParams barParams = this.mBarParams;
            BarHide barHide2 = barParams.barHide;
            barParams.hideNavigationBar = barHide2 == BarHide.FLAG_HIDE_NAVIGATION_BAR || barHide2 == BarHide.FLAG_HIDE_BAR;
        }
        return this;
    }

    public ImmersionBar keyboardEnable(boolean z, int i) {
        BarParams barParams = this.mBarParams;
        barParams.keyboardEnable = z;
        barParams.keyboardMode = i;
        this.mKeyboardTempEnable = z;
        return this;
    }

    public ImmersionBar navigationBarColor(@ColorRes int i, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return navigationBarColorInt(ContextCompat.getColor(this.mActivity, i), f);
    }

    public ImmersionBar navigationBarColorInt(@ColorInt int i, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.navigationBarColor = i;
        barParams.navigationBarAlpha = f;
        return this;
    }

    public ImmersionBar navigationBarColorTransform(String str) {
        return navigationBarColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar navigationBarDarkIcon(boolean z, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        this.mBarParams.navigationBarDarkIcon = z;
        if (!z || isSupportNavigationIconDark()) {
            BarParams barParams = this.mBarParams;
            barParams.navigationBarAlpha = barParams.navigationBarTempAlpha;
        } else {
            this.mBarParams.navigationBarAlpha = f;
        }
        return this;
    }

    public ImmersionBar statusBarColor(@ColorRes int i, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return statusBarColorInt(ContextCompat.getColor(this.mActivity, i), f);
    }

    public ImmersionBar statusBarColorInt(@ColorInt int i, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = i;
        barParams.statusBarAlpha = f;
        return this;
    }

    public ImmersionBar statusBarColorTransform(String str) {
        return statusBarColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar statusBarDarkFont(boolean z, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        this.mBarParams.statusBarDarkFont = z;
        if (!z || isSupportStatusBarDarkFont()) {
            BarParams barParams = this.mBarParams;
            barParams.flymeOSStatusBarFontColor = barParams.flymeOSStatusBarFontTempColor;
            barParams.statusBarAlpha = barParams.statusBarTempAlpha;
        } else {
            this.mBarParams.statusBarAlpha = f;
        }
        return this;
    }

    public ImmersionBar titleBar(View view, boolean z) {
        if (view == null) {
            return this;
        }
        if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 1;
        }
        BarParams barParams = this.mBarParams;
        barParams.titleBarView = view;
        barParams.statusBarColorEnabled = z;
        return this;
    }

    public static void destroy(@NonNull Activity activity, @NonNull Dialog dialog) {
        getRetriever().destroy(activity, dialog);
    }

    @TargetApi(14)
    public static int getNavigationBarHeight(@NonNull android.support.v4.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static int getNavigationBarWidth(@NonNull android.support.v4.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarWidth(fragment.getActivity());
    }

    public static int getNotchHeight(@NonNull android.support.v4.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNotchHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static int getStatusBarHeight(@NonNull android.support.v4.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getStatusBarHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean hasNavigationBar(@NonNull android.support.v4.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNavigationBar(fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean isNavigationAtBottom(@NonNull android.support.v4.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return isNavigationAtBottom(fragment.getActivity());
    }

    public static void setFitsSystemWindows(android.support.v4.app.Fragment fragment, boolean z) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity(), z);
    }

    public static ImmersionBar with(@NonNull android.support.v4.app.Fragment fragment, boolean z) {
        return getRetriever().get(fragment, z);
    }

    public ImmersionBar addViewSupportTransformColor(View view, @ColorRes int i, @ColorRes int i2) {
        return addViewSupportTransformColorInt(view, ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2));
    }

    public ImmersionBar barColor(@ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return barColorInt(ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2), f);
    }

    public ImmersionBar barColorInt(@ColorInt int i, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = i;
        barParams.navigationBarColor = i;
        barParams.statusBarAlpha = f;
        barParams.navigationBarAlpha = f;
        return this;
    }

    public ImmersionBar flymeOSStatusBarFontColor(String str) {
        this.mBarParams.flymeOSStatusBarFontColor = Color.parseColor(str);
        BarParams barParams = this.mBarParams;
        barParams.flymeOSStatusBarFontTempColor = barParams.flymeOSStatusBarFontColor;
        return this;
    }

    public ImmersionBar navigationBarColor(@ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return navigationBarColorInt(ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2), f);
    }

    public ImmersionBar statusBarColor(@ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return statusBarColorInt(ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2), f);
    }

    @TargetApi(14)
    public static int getActionBarHeight(@NonNull android.support.v4.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getActionBarHeight(fragment.getActivity());
    }

    public static boolean hasNotchScreen(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNotchScreen(fragment.getActivity());
    }

    public static void setFitsSystemWindows(android.support.v4.app.Fragment fragment) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity());
    }

    public static ImmersionBar with(@NonNull Fragment fragment) {
        return getRetriever().get(fragment, false);
    }

    public ImmersionBar navigationBarColorInt(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.navigationBarColor = i;
        barParams.navigationBarColorTransform = i2;
        barParams.navigationBarAlpha = f;
        return this;
    }

    public ImmersionBar statusBarColorInt(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = i;
        barParams.statusBarColorTransform = i2;
        barParams.statusBarAlpha = f;
        return this;
    }

    public ImmersionBar statusBarView(@IdRes int i) {
        return statusBarView(this.mActivity.findViewById(i));
    }

    @TargetApi(14)
    public static int getNavigationBarHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static int getNavigationBarWidth(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarWidth(fragment.getActivity());
    }

    public static int getNotchHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNotchHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static int getStatusBarHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getStatusBarHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean hasNavigationBar(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNavigationBar(fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean isNavigationAtBottom(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return isNavigationAtBottom(fragment.getActivity());
    }

    public static void setFitsSystemWindows(Fragment fragment, boolean z) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity(), z);
    }

    public static ImmersionBar with(@NonNull Fragment fragment, boolean z) {
        return getRetriever().get(fragment, z);
    }

    public ImmersionBar addViewSupportTransformColorInt(View view, @ColorInt int i, @ColorInt int i2) {
        if (view != null) {
            HashMap map = new HashMap();
            map.put(Integer.valueOf(i), Integer.valueOf(i2));
            this.mBarParams.viewMap.put(view, map);
            return this;
        }
        throw new IllegalArgumentException("View参数不能为空");
    }

    public ImmersionBar fitsSystemWindows(boolean z, @ColorRes int i) {
        return fitsSystemWindowsInt(z, ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar statusBarView(@IdRes int i, View view) {
        return statusBarView(view.findViewById(i));
    }

    @TargetApi(14)
    public static int getActionBarHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getActionBarHeight(fragment.getActivity());
    }

    public static boolean hasNotchScreen(@NonNull View view) {
        return NotchUtils.hasNotchScreen(view);
    }

    public static void setFitsSystemWindows(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity());
    }

    public static ImmersionBar with(@NonNull DialogFragment dialogFragment) {
        return getRetriever().get((android.support.v4.app.Fragment) dialogFragment, false);
    }

    public ImmersionBar barColor(String str) {
        return barColorInt(Color.parseColor(str));
    }

    public ImmersionBar fitsSystemWindows(boolean z, @ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return fitsSystemWindowsInt(z, ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2), f);
    }

    public ImmersionBar navigationBarColor(String str) {
        return navigationBarColorInt(Color.parseColor(str));
    }

    public ImmersionBar statusBarColor(String str) {
        return statusBarColorInt(Color.parseColor(str));
    }

    public ImmersionBar titleBar(@IdRes int i) {
        return titleBar(i, true);
    }

    public ImmersionBar titleBarMarginTop(@IdRes int i, View view) {
        return titleBarMarginTop(view.findViewById(i));
    }

    public static void setFitsSystemWindows(View view, boolean z) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup instanceof DrawerLayout) {
                setFitsSystemWindows(viewGroup.getChildAt(0), z);
                return;
            } else {
                viewGroup.setFitsSystemWindows(z);
                viewGroup.setClipToPadding(true);
                return;
            }
        }
        view.setFitsSystemWindows(z);
    }

    public static ImmersionBar with(@NonNull android.app.DialogFragment dialogFragment) {
        return getRetriever().get((Fragment) dialogFragment, false);
    }

    public ImmersionBar addViewSupportTransformColor(View view, String str) {
        return addViewSupportTransformColorInt(view, Color.parseColor(str));
    }

    public ImmersionBar barColor(String str, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return barColorInt(Color.parseColor(str), f);
    }

    public ImmersionBar barColorInt(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = i;
        barParams.navigationBarColor = i;
        barParams.statusBarColorTransform = i2;
        barParams.navigationBarColorTransform = i2;
        barParams.statusBarAlpha = f;
        barParams.navigationBarAlpha = f;
        return this;
    }

    public ImmersionBar navigationBarColor(String str, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return navigationBarColorInt(Color.parseColor(str), f);
    }

    public ImmersionBar statusBarColor(String str, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return statusBarColorInt(Color.parseColor(str), f);
    }

    public ImmersionBar titleBar(@IdRes int i, boolean z) {
        android.support.v4.app.Fragment fragment = this.mSupportFragment;
        if (fragment != null && fragment.getView() != null) {
            return titleBar(this.mSupportFragment.getView().findViewById(i), z);
        }
        Fragment fragment2 = this.mFragment;
        if (fragment2 != null && fragment2.getView() != null) {
            return titleBar(this.mFragment.getView().findViewById(i), z);
        }
        return titleBar(this.mActivity.findViewById(i), z);
    }

    public ImmersionBar titleBarMarginTop(View view) {
        if (view == null) {
            return this;
        }
        if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 2;
        }
        this.mBarParams.titleBarView = view;
        return this;
    }

    public static ImmersionBar with(@NonNull Activity activity, @NonNull Dialog dialog) {
        return getRetriever().get(activity, dialog);
    }

    public ImmersionBar addViewSupportTransformColor(View view, String str, String str2) {
        return addViewSupportTransformColorInt(view, Color.parseColor(str), Color.parseColor(str2));
    }

    public ImmersionBar barColor(String str, String str2, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return barColorInt(Color.parseColor(str), Color.parseColor(str2), f);
    }

    public ImmersionBar navigationBarColor(String str, String str2, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return navigationBarColorInt(Color.parseColor(str), Color.parseColor(str2), f);
    }

    public ImmersionBar statusBarColor(String str, String str2, @FloatRange(from = 0.0d, m14to = 1.0d) float f) {
        return statusBarColorInt(Color.parseColor(str), Color.parseColor(str2), f);
    }

    public static void setStatusBarView(Activity activity, View... viewArr) {
        setStatusBarView(activity, getStatusBarHeight(activity), viewArr);
    }

    public static void setStatusBarView(android.support.v4.app.Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), i, viewArr);
    }

    public static void setStatusBarView(android.support.v4.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), viewArr);
    }

    public ImmersionBar titleBar(@IdRes int i, View view) {
        return titleBar(view.findViewById(i), true);
    }

    public static void setStatusBarView(Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), i, viewArr);
    }

    public static void setTitleBarMarginTop(Activity activity, View... viewArr) {
        setTitleBarMarginTop(activity, getStatusBarHeight(activity), viewArr);
    }

    public ImmersionBar titleBar(@IdRes int i, View view, boolean z) {
        return titleBar(view.findViewById(i), z);
    }

    public static void setStatusBarView(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), viewArr);
    }

    public static void setTitleBarMarginTop(android.support.v4.app.Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), i, viewArr);
    }

    public static void setTitleBar(Activity activity, View... viewArr) {
        setTitleBar(activity, getStatusBarHeight(activity), viewArr);
    }

    public static void setTitleBarMarginTop(android.support.v4.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), viewArr);
    }

    public static void setTitleBar(android.support.v4.app.Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), i, viewArr);
    }

    public static void setTitleBarMarginTop(Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), i, viewArr);
    }

    public static void setTitleBar(android.support.v4.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), viewArr);
    }

    public static void setTitleBarMarginTop(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), viewArr);
    }

    public static void setTitleBar(Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), i, viewArr);
    }

    public ImmersionBar(android.support.v4.app.Fragment fragment) {
        this.mIsActivity = false;
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsFragment = true;
        this.mActivity = fragment.getActivity();
        this.mSupportFragment = fragment;
        checkInitWithActivity();
        initCommonParameter(this.mActivity.getWindow());
    }

    public static void setTitleBar(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), viewArr);
    }

    public ImmersionBar(Fragment fragment) {
        this.mIsActivity = false;
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsFragment = true;
        this.mActivity = fragment.getActivity();
        this.mFragment = fragment;
        checkInitWithActivity();
        initCommonParameter(this.mActivity.getWindow());
    }

    public ImmersionBar(DialogFragment dialogFragment) {
        this.mIsActivity = false;
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsDialog = true;
        this.mIsDialogFragment = true;
        this.mActivity = dialogFragment.getActivity();
        this.mSupportFragment = dialogFragment;
        this.mDialog = dialogFragment.getDialog();
        checkInitWithActivity();
        initCommonParameter(this.mDialog.getWindow());
    }

    public ImmersionBar(android.app.DialogFragment dialogFragment) {
        this.mIsActivity = false;
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsDialog = true;
        this.mIsDialogFragment = true;
        this.mActivity = dialogFragment.getActivity();
        this.mFragment = dialogFragment;
        this.mDialog = dialogFragment.getDialog();
        checkInitWithActivity();
        initCommonParameter(this.mDialog.getWindow());
    }

    public ImmersionBar(Activity activity, Dialog dialog) {
        this.mIsActivity = false;
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsDialog = true;
        this.mActivity = activity;
        this.mDialog = dialog;
        checkInitWithActivity();
        initCommonParameter(this.mDialog.getWindow());
    }
}
