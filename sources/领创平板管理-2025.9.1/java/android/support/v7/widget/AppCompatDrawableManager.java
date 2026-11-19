package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.graphics.drawable.AnimatedVectorDrawableCompat;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.LruCache;
import android.support.v4.util.SparseArrayCompat;
import android.support.v7.appcompat.SupportAppcompatResources;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.graphics.drawable.AnimatedStateListDrawableCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class AppCompatDrawableManager {
    public static final boolean DEBUG = false;
    public static AppCompatDrawableManager INSTANCE = null;
    public static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
    public static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
    public static final String TAG = "AppCompatDrawableManag";
    public ArrayMap<String, InflateDelegate> mDelegates;
    public final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> mDrawableCaches = new WeakHashMap<>(0);
    public boolean mHasCheckedVectorDrawableSetup;
    public SparseArrayCompat<String> mKnownDrawableIdTags;
    public WeakHashMap<Context, SparseArrayCompat<ColorStateList>> mTintLists;
    public TypedValue mTypedValue;
    public static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    public static final ColorFilterLruCache COLOR_FILTER_CACHE = new ColorFilterLruCache(6);
    public static final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL = {SupportAppcompatResources.drawable.abc_textfield_search_default_mtrl_alpha, SupportAppcompatResources.drawable.abc_textfield_default_mtrl_alpha, SupportAppcompatResources.drawable.abc_ab_share_pack_mtrl_alpha};
    public static final int[] TINT_COLOR_CONTROL_NORMAL = {SupportAppcompatResources.drawable.abc_ic_commit_search_api_mtrl_alpha, SupportAppcompatResources.drawable.abc_seekbar_tick_mark_material, SupportAppcompatResources.drawable.abc_ic_menu_share_mtrl_alpha, SupportAppcompatResources.drawable.abc_ic_menu_copy_mtrl_am_alpha, SupportAppcompatResources.drawable.abc_ic_menu_cut_mtrl_alpha, SupportAppcompatResources.drawable.abc_ic_menu_selectall_mtrl_alpha, SupportAppcompatResources.drawable.abc_ic_menu_paste_mtrl_am_alpha};
    public static final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED = {SupportAppcompatResources.drawable.abc_textfield_activated_mtrl_alpha, SupportAppcompatResources.drawable.abc_textfield_search_activated_mtrl_alpha, SupportAppcompatResources.drawable.abc_cab_background_top_mtrl_alpha, SupportAppcompatResources.drawable.abc_text_cursor_material, SupportAppcompatResources.drawable.abc_text_select_handle_left_mtrl_dark, SupportAppcompatResources.drawable.abc_text_select_handle_middle_mtrl_dark, SupportAppcompatResources.drawable.abc_text_select_handle_right_mtrl_dark, SupportAppcompatResources.drawable.abc_text_select_handle_left_mtrl_light, SupportAppcompatResources.drawable.abc_text_select_handle_middle_mtrl_light, SupportAppcompatResources.drawable.abc_text_select_handle_right_mtrl_light};
    public static final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY = {SupportAppcompatResources.drawable.abc_popup_background_mtrl_mult, SupportAppcompatResources.drawable.abc_cab_background_internal_bg, SupportAppcompatResources.drawable.abc_menu_hardkey_panel_mtrl_mult};
    public static final int[] TINT_COLOR_CONTROL_STATE_LIST = {SupportAppcompatResources.drawable.abc_tab_indicator_material, SupportAppcompatResources.drawable.abc_textfield_search_material};
    public static final int[] TINT_CHECKABLE_BUTTON_LIST = {SupportAppcompatResources.drawable.abc_btn_check_material, SupportAppcompatResources.drawable.abc_btn_radio_material};

    @RequiresApi(11)
    public static class AsldcInflateDelegate implements InflateDelegate {
        @Override // android.support.v7.widget.AppCompatDrawableManager.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedStateListDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    public static class AvdcInflateDelegate implements InflateDelegate {
        @Override // android.support.v7.widget.AppCompatDrawableManager.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    public static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int i) {
            super(i);
        }

        public static int generateCacheKey(int i, PorterDuff.Mode mode) {
            return mode.hashCode() + ((i + 31) * 31);
        }

        public PorterDuffColorFilter get(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(generateCacheKey(i, mode)));
        }

        public PorterDuffColorFilter put(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(generateCacheKey(i, mode)), porterDuffColorFilter);
        }
    }

    public interface InflateDelegate {
        Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    public static class VdcInflateDelegate implements InflateDelegate {
        @Override // android.support.v7.widget.AppCompatDrawableManager.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    private void addDelegate(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        if (this.mDelegates == null) {
            this.mDelegates = new ArrayMap<>();
        }
        this.mDelegates.put(str, inflateDelegate);
    }

    private synchronized boolean addDrawableToCache(@NonNull Context context, long j, @NonNull Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
        if (longSparseArray == null) {
            longSparseArray = new LongSparseArray<>();
            this.mDrawableCaches.put(context, longSparseArray);
        }
        longSparseArray.put(j, new WeakReference<>(constantState));
        return true;
    }

    private void addTintListToCache(@NonNull Context context, @DrawableRes int i, @NonNull ColorStateList colorStateList) {
        if (this.mTintLists == null) {
            this.mTintLists = new WeakHashMap<>();
        }
        SparseArrayCompat<ColorStateList> sparseArrayCompat = this.mTintLists.get(context);
        if (sparseArrayCompat == null) {
            sparseArrayCompat = new SparseArrayCompat<>();
            this.mTintLists.put(context, sparseArrayCompat);
        }
        sparseArrayCompat.append(i, colorStateList);
    }

    public static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private void checkVectorDrawableSetup(@NonNull Context context) {
        if (this.mHasCheckedVectorDrawableSetup) {
            return;
        }
        this.mHasCheckedVectorDrawableSetup = true;
        Drawable drawable = getDrawable(context, SupportAppcompatResources.drawable.abc_vector_test);
        if (drawable == null || !isVectorDrawable(drawable)) {
            this.mHasCheckedVectorDrawableSetup = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private ColorStateList createBorderlessButtonColorStateList(@NonNull Context context) {
        return createButtonColorStateList(context, 0);
    }

    private ColorStateList createButtonColorStateList(@NonNull Context context, @ColorInt int i) {
        int themeAttrColor = ThemeUtils.getThemeAttrColor(context, SupportAppcompatResources.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.PRESSED_STATE_SET, ThemeUtils.FOCUSED_STATE_SET, ThemeUtils.EMPTY_STATE_SET}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, SupportAppcompatResources.attr.colorButtonNormal), ColorUtils.compositeColors(themeAttrColor, i), ColorUtils.compositeColors(themeAttrColor, i), i});
    }

    public static long createCacheKey(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    private ColorStateList createColoredButtonColorStateList(@NonNull Context context) {
        return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, SupportAppcompatResources.attr.colorAccent));
    }

    private ColorStateList createDefaultButtonColorStateList(@NonNull Context context) {
        return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, SupportAppcompatResources.attr.colorButtonNormal));
    }

    private Drawable createDrawableIfNeeded(@NonNull Context context, @DrawableRes int i) throws Resources.NotFoundException {
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        context.getResources().getValue(i, typedValue, true);
        long jCreateCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, jCreateCacheKey);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        if (i == SupportAppcompatResources.drawable.abc_cab_background_top_material) {
            cachedDrawable = new LayerDrawable(new Drawable[]{getDrawable(context, SupportAppcompatResources.drawable.abc_cab_background_internal_bg), getDrawable(context, SupportAppcompatResources.drawable.abc_cab_background_top_mtrl_alpha)});
        }
        if (cachedDrawable != null) {
            cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            addDrawableToCache(context, jCreateCacheKey, cachedDrawable);
        }
        return cachedDrawable;
    }

    private ColorStateList createSwitchThumbColorStateList(Context context) {
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, SupportAppcompatResources.attr.colorSwitchThumbNormal);
        if (themeAttrColorStateList == null || !themeAttrColorStateList.isStateful()) {
            iArr[0] = ThemeUtils.DISABLED_STATE_SET;
            iArr2[0] = ThemeUtils.getDisabledThemeAttrColor(context, SupportAppcompatResources.attr.colorSwitchThumbNormal);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, SupportAppcompatResources.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = ThemeUtils.getThemeAttrColor(context, SupportAppcompatResources.attr.colorSwitchThumbNormal);
        } else {
            iArr[0] = ThemeUtils.DISABLED_STATE_SET;
            iArr2[0] = themeAttrColorStateList.getColorForState(iArr[0], 0);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, SupportAppcompatResources.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = themeAttrColorStateList.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    public static PorterDuffColorFilter createTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized AppCompatDrawableManager get() {
        if (INSTANCE == null) {
            AppCompatDrawableManager appCompatDrawableManager = new AppCompatDrawableManager();
            INSTANCE = appCompatDrawableManager;
            installDefaultInflateDelegates(appCompatDrawableManager);
        }
        return INSTANCE;
    }

    private synchronized Drawable getCachedDrawable(@NonNull Context context, long j) {
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
        if (longSparseArray == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReference = longSparseArray.get(j);
        if (weakReference != null) {
            Drawable.ConstantState constantState = weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            longSparseArray.delete(j);
        }
        return null;
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        porterDuffColorFilter = COLOR_FILTER_CACHE.get(i, mode);
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
            COLOR_FILTER_CACHE.put(i, mode, porterDuffColorFilter);
        }
        return porterDuffColorFilter;
    }

    private ColorStateList getTintListFromCache(@NonNull Context context, @DrawableRes int i) {
        SparseArrayCompat<ColorStateList> sparseArrayCompat;
        WeakHashMap<Context, SparseArrayCompat<ColorStateList>> weakHashMap = this.mTintLists;
        if (weakHashMap == null || (sparseArrayCompat = weakHashMap.get(context)) == null) {
            return null;
        }
        return sparseArrayCompat.get(i);
    }

    public static PorterDuff.Mode getTintMode(int i) {
        if (i == SupportAppcompatResources.drawable.abc_switch_thumb_material) {
            return PorterDuff.Mode.MULTIPLY;
        }
        return null;
    }

    public static void installDefaultInflateDelegates(@NonNull AppCompatDrawableManager appCompatDrawableManager) {
        if (Build.VERSION.SDK_INT < 24) {
            appCompatDrawableManager.addDelegate(VectorDrawableCompat.SHAPE_VECTOR, new VdcInflateDelegate());
            appCompatDrawableManager.addDelegate(AnimatedVectorDrawableCompat.ANIMATED_VECTOR, new AvdcInflateDelegate());
            appCompatDrawableManager.addDelegate("animated-selector", new AsldcInflateDelegate());
        }
    }

    public static boolean isVectorDrawable(@NonNull Drawable drawable) {
        return (drawable instanceof VectorDrawableCompat) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    private Drawable loadDrawableFromDelegates(@NonNull Context context, @DrawableRes int i) throws XmlPullParserException, Resources.NotFoundException, IOException {
        int next;
        ArrayMap<String, InflateDelegate> arrayMap = this.mDelegates;
        if (arrayMap == null || arrayMap.isEmpty()) {
            return null;
        }
        SparseArrayCompat<String> sparseArrayCompat = this.mKnownDrawableIdTags;
        if (sparseArrayCompat != null) {
            String str = sparseArrayCompat.get(i);
            if (SKIP_DRAWABLE_TAG.equals(str) || (str != null && this.mDelegates.get(str) == null)) {
                return null;
            }
        } else {
            this.mKnownDrawableIdTags = new SparseArrayCompat<>();
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long jCreateCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, jCreateCacheKey);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(ActivityChooserModel.HISTORY_FILE_EXTENSION)) {
            try {
                XmlResourceParser xml = resources.getXml(i);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.mKnownDrawableIdTags.append(i, name);
                InflateDelegate inflateDelegate = this.mDelegates.get(name);
                if (inflateDelegate != null) {
                    cachedDrawable = inflateDelegate.createFromXmlInner(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (cachedDrawable != null) {
                    cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
                    addDrawableToCache(context, jCreateCacheKey, cachedDrawable);
                }
            } catch (Exception e) {
                Log.e(TAG, "Exception while inflating drawable", e);
            }
        }
        if (cachedDrawable == null) {
            this.mKnownDrawableIdTags.append(i, SKIP_DRAWABLE_TAG);
        }
        return cachedDrawable;
    }

    private void removeDelegate(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        ArrayMap<String, InflateDelegate> arrayMap = this.mDelegates;
        if (arrayMap == null || arrayMap.get(str) != inflateDelegate) {
            return;
        }
        this.mDelegates.remove(str);
    }

    public static void setPorterDuffColorFilter(Drawable drawable, int i, PorterDuff.Mode mode) {
        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = DEFAULT_MODE;
        }
        drawable.setColorFilter(getPorterDuffColorFilter(i, mode));
    }

    private Drawable tintDrawable(@NonNull Context context, @DrawableRes int i, boolean z, @NonNull Drawable drawable) {
        ColorStateList tintList = getTintList(context, i);
        if (tintList != null) {
            if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable drawableWrap = DrawableCompat.wrap(drawable);
            DrawableCompat.setTintList(drawableWrap, tintList);
            PorterDuff.Mode tintMode = getTintMode(i);
            if (tintMode == null) {
                return drawableWrap;
            }
            DrawableCompat.setTintMode(drawableWrap, tintMode);
            return drawableWrap;
        }
        if (i == SupportAppcompatResources.drawable.abc_seekbar_track_material) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.background), ThemeUtils.getThemeAttrColor(context, SupportAppcompatResources.attr.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), ThemeUtils.getThemeAttrColor(context, SupportAppcompatResources.attr.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.progress), ThemeUtils.getThemeAttrColor(context, SupportAppcompatResources.attr.colorControlActivated), DEFAULT_MODE);
            return drawable;
        }
        if (i != SupportAppcompatResources.drawable.abc_ratingbar_material && i != SupportAppcompatResources.drawable.abc_ratingbar_indicator_material && i != SupportAppcompatResources.drawable.abc_ratingbar_small_material) {
            if (tintDrawableUsingColorFilter(context, i, drawable) || !z) {
                return drawable;
            }
            return null;
        }
        LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
        setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.background), ThemeUtils.getDisabledThemeAttrColor(context, SupportAppcompatResources.attr.colorControlNormal), DEFAULT_MODE);
        setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), ThemeUtils.getThemeAttrColor(context, SupportAppcompatResources.attr.colorControlActivated), DEFAULT_MODE);
        setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.progress), ThemeUtils.getThemeAttrColor(context, SupportAppcompatResources.attr.colorControlActivated), DEFAULT_MODE);
        return drawable;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean tintDrawableUsingColorFilter(@android.support.annotation.NonNull android.content.Context r6, @android.support.annotation.DrawableRes int r7, @android.support.annotation.NonNull android.graphics.drawable.Drawable r8) {
        /*
            android.graphics.PorterDuff$Mode r0 = android.support.v7.widget.AppCompatDrawableManager.DEFAULT_MODE
            int[] r1 = android.support.v7.widget.AppCompatDrawableManager.COLORFILTER_TINT_COLOR_CONTROL_NORMAL
            boolean r1 = arrayContains(r1, r7)
            r2 = 16842801(0x1010031, float:2.3693695E-38)
            r3 = -1
            r4 = 0
            r5 = 1
            if (r1 == 0) goto L15
            int r2 = android.support.v7.appcompat.C0200R.attr.colorControlNormal
        L12:
            r7 = r3
        L13:
            r1 = r5
            goto L42
        L15:
            int[] r1 = android.support.v7.widget.AppCompatDrawableManager.COLORFILTER_COLOR_CONTROL_ACTIVATED
            boolean r1 = arrayContains(r1, r7)
            if (r1 == 0) goto L20
            int r2 = android.support.v7.appcompat.C0200R.attr.colorControlActivated
            goto L12
        L20:
            int[] r1 = android.support.v7.widget.AppCompatDrawableManager.COLORFILTER_COLOR_BACKGROUND_MULTIPLY
            boolean r1 = arrayContains(r1, r7)
            if (r1 == 0) goto L2b
            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L12
        L2b:
            int r1 = android.support.v7.appcompat.C0200R.drawable.abc_list_divider_mtrl_alpha
            if (r7 != r1) goto L3a
            r2 = 16842800(0x1010030, float:2.3693693E-38)
            r7 = 1109603123(0x42233333, float:40.8)
            int r7 = java.lang.Math.round(r7)
            goto L13
        L3a:
            int r1 = android.support.v7.appcompat.C0200R.drawable.abc_dialog_material_background
            if (r7 != r1) goto L3f
            goto L12
        L3f:
            r7 = r3
            r1 = r4
            r2 = r1
        L42:
            if (r1 == 0) goto L5f
            boolean r1 = android.support.v7.widget.DrawableUtils.canSafelyMutateDrawable(r8)
            if (r1 == 0) goto L4e
            android.graphics.drawable.Drawable r8 = r8.mutate()
        L4e:
            int r6 = android.support.v7.widget.ThemeUtils.getThemeAttrColor(r6, r2)
            android.graphics.PorterDuffColorFilter r6 = getPorterDuffColorFilter(r6, r0)
            r8.setColorFilter(r6)
            if (r7 == r3) goto L5e
            r8.setAlpha(r7)
        L5e:
            return r5
        L5f:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.AppCompatDrawableManager.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }

    public synchronized Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        return getDrawable(context, i, false);
    }

    public synchronized ColorStateList getTintList(@NonNull Context context, @DrawableRes int i) {
        ColorStateList tintListFromCache;
        tintListFromCache = getTintListFromCache(context, i);
        if (tintListFromCache == null) {
            if (i == SupportAppcompatResources.drawable.abc_edit_text_material) {
                tintListFromCache = AppCompatResources.getColorStateList(context, SupportAppcompatResources.color.abc_tint_edittext);
            } else if (i == SupportAppcompatResources.drawable.abc_switch_track_mtrl_alpha) {
                tintListFromCache = AppCompatResources.getColorStateList(context, SupportAppcompatResources.color.abc_tint_switch_track);
            } else if (i == SupportAppcompatResources.drawable.abc_switch_thumb_material) {
                tintListFromCache = createSwitchThumbColorStateList(context);
            } else if (i == SupportAppcompatResources.drawable.abc_btn_default_mtrl_shape) {
                tintListFromCache = createDefaultButtonColorStateList(context);
            } else if (i == SupportAppcompatResources.drawable.abc_btn_borderless_material) {
                tintListFromCache = createBorderlessButtonColorStateList(context);
            } else if (i == SupportAppcompatResources.drawable.abc_btn_colored_material) {
                tintListFromCache = createColoredButtonColorStateList(context);
            } else if (i == SupportAppcompatResources.drawable.abc_spinner_mtrl_am_alpha || i == SupportAppcompatResources.drawable.abc_spinner_textfield_background_material) {
                tintListFromCache = AppCompatResources.getColorStateList(context, SupportAppcompatResources.color.abc_tint_spinner);
            } else if (arrayContains(TINT_COLOR_CONTROL_NORMAL, i)) {
                tintListFromCache = ThemeUtils.getThemeAttrColorStateList(context, SupportAppcompatResources.attr.colorControlNormal);
            } else if (arrayContains(TINT_COLOR_CONTROL_STATE_LIST, i)) {
                tintListFromCache = AppCompatResources.getColorStateList(context, SupportAppcompatResources.color.abc_tint_default);
            } else if (arrayContains(TINT_CHECKABLE_BUTTON_LIST, i)) {
                tintListFromCache = AppCompatResources.getColorStateList(context, SupportAppcompatResources.color.abc_tint_btn_checkable);
            } else if (i == SupportAppcompatResources.drawable.abc_seekbar_thumb_material) {
                tintListFromCache = AppCompatResources.getColorStateList(context, SupportAppcompatResources.color.abc_tint_seek_thumb);
            }
            if (tintListFromCache != null) {
                addTintListToCache(context, i, tintListFromCache);
            }
        }
        return tintListFromCache;
    }

    public synchronized void onConfigurationChanged(@NonNull Context context) {
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public synchronized Drawable onDrawableLoadedFromResources(@NonNull Context context, @NonNull VectorEnabledTintResources vectorEnabledTintResources, @DrawableRes int i) {
        Drawable drawableLoadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (drawableLoadDrawableFromDelegates == null) {
            drawableLoadDrawableFromDelegates = vectorEnabledTintResources.superGetDrawable(i);
        }
        if (drawableLoadDrawableFromDelegates == null) {
            return null;
        }
        return tintDrawable(context, i, false, drawableLoadDrawableFromDelegates);
    }

    public synchronized Drawable getDrawable(@NonNull Context context, @DrawableRes int i, boolean z) {
        Drawable drawableLoadDrawableFromDelegates;
        checkVectorDrawableSetup(context);
        drawableLoadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (drawableLoadDrawableFromDelegates == null) {
            drawableLoadDrawableFromDelegates = createDrawableIfNeeded(context, i);
        }
        if (drawableLoadDrawableFromDelegates == null) {
            drawableLoadDrawableFromDelegates = ContextCompat.getDrawable(context, i);
        }
        if (drawableLoadDrawableFromDelegates != null) {
            drawableLoadDrawableFromDelegates = tintDrawable(context, i, z, drawableLoadDrawableFromDelegates);
        }
        if (drawableLoadDrawableFromDelegates != null) {
            DrawableUtils.fixDrawable(drawableLoadDrawableFromDelegates);
        }
        return drawableLoadDrawableFromDelegates;
    }

    public static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        if (DrawableUtils.canSafelyMutateDrawable(drawable) && drawable.mutate() != drawable) {
            Log.d(TAG, "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            drawable.setColorFilter(createTintFilter(tintInfo.mHasTintList ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : DEFAULT_MODE, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }
}
