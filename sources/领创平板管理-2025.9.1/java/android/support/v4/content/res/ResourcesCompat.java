package android.support.v4.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.FontRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.util.Preconditions;
import android.util.TypedValue;
import com.huawei.hem.CompilerOutline;

/* loaded from: classes.dex */
public final class ResourcesCompat {
    public static final String TAG = "ResourcesCompat";

    public static abstract class FontCallback {
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void callbackFailAsync(final int i, @Nullable Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() { // from class: android.support.v4.content.res.ResourcesCompat.FontCallback.2
                @Override // java.lang.Runnable
                public void run() {
                    FontCallback.this.onFontRetrievalFailed(i);
                }
            });
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void callbackSuccessAsync(final Typeface typeface, @Nullable Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() { // from class: android.support.v4.content.res.ResourcesCompat.FontCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    FontCallback.this.onFontRetrieved(typeface);
                }
            });
        }

        public abstract void onFontRetrievalFailed(int i);

        public abstract void onFontRetrieved(@NonNull Typeface typeface);
    }

    @ColorInt
    public static int getColor(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) {
        return resources.getColor(i, theme);
    }

    @Nullable
    public static ColorStateList getColorStateList(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) {
        return resources.getColorStateList(i, theme);
    }

    @Nullable
    public static Drawable getDrawable(@NonNull Resources resources, @DrawableRes int i, @Nullable Resources.Theme theme) {
        return resources.getDrawable(i, theme);
    }

    @Nullable
    public static Drawable getDrawableForDensity(@NonNull Resources resources, @DrawableRes int i, int i2, @Nullable Resources.Theme theme) {
        return resources.getDrawableForDensity(i, i2, theme);
    }

    @Nullable
    public static Typeface getFont(@NonNull Context context, @FontRes int i) {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i, new TypedValue(), 0, null, null, false);
    }

    public static Typeface loadFont(@NonNull Context context, int i, TypedValue typedValue, int i2, @Nullable FontCallback fontCallback, @Nullable Handler handler, boolean z) throws Resources.NotFoundException {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface typefaceLoadFont = loadFont(context, resources, typedValue, i, i2, fontCallback, handler, z);
        if (typefaceLoadFont != null || fontCallback != null) {
            return typefaceLoadFont;
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("Font resource ID #0x");
        sbM1765j.append(Integer.toHexString(i));
        sbM1765j.append(" could not be retrieved.");
        throw new Resources.NotFoundException(sbM1765j.toString());
    }

    public static void getFont(@NonNull Context context, @FontRes int i, @NonNull FontCallback fontCallback, @Nullable Handler handler) throws Resources.NotFoundException {
        Preconditions.checkNotNull(fontCallback);
        if (context.isRestricted()) {
            fontCallback.callbackFailAsync(-4, handler);
        } else {
            loadFont(context, i, new TypedValue(), 0, fontCallback, handler, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface loadFont(@android.support.annotation.NonNull android.content.Context r15, android.content.res.Resources r16, android.util.TypedValue r17, int r18, int r19, @android.support.annotation.Nullable android.support.v4.content.res.ResourcesCompat.FontCallback r20, @android.support.annotation.Nullable android.os.Handler r21, boolean r22) {
        /*
            r0 = r16
            r1 = r17
            r4 = r18
            r5 = r19
            r9 = r20
            r10 = r21
            java.lang.String r11 = "ResourcesCompat"
            java.lang.CharSequence r2 = r1.string
            if (r2 == 0) goto La7
            java.lang.String r12 = r2.toString()
            java.lang.String r1 = "res/"
            boolean r1 = r12.startsWith(r1)
            r13 = 0
            r14 = -3
            if (r1 != 0) goto L26
            if (r9 == 0) goto L25
            r9.callbackFailAsync(r14, r10)
        L25:
            return r13
        L26:
            android.graphics.Typeface r1 = android.support.v4.graphics.TypefaceCompat.findFromCache(r0, r4, r5)
            if (r1 == 0) goto L32
            if (r9 == 0) goto L31
            r9.callbackSuccessAsync(r1, r10)
        L31:
            return r1
        L32:
            java.lang.String r1 = r12.toLowerCase()     // Catch: java.io.IOException -> L76 org.xmlpull.v1.XmlPullParserException -> L8c
            java.lang.String r2 = ".xml"
            boolean r1 = r1.endsWith(r2)     // Catch: java.io.IOException -> L76 org.xmlpull.v1.XmlPullParserException -> L8c
            if (r1 == 0) goto L65
            android.content.res.XmlResourceParser r1 = r0.getXml(r4)     // Catch: java.io.IOException -> L76 org.xmlpull.v1.XmlPullParserException -> L8c
            android.support.v4.content.res.FontResourcesParserCompat$FamilyResourceEntry r2 = android.support.v4.content.res.FontResourcesParserCompat.parse(r1, r0)     // Catch: java.io.IOException -> L76 org.xmlpull.v1.XmlPullParserException -> L8c
            if (r2 != 0) goto L53
            java.lang.String r0 = "Failed to find font-family tag"
            android.util.Log.e(r11, r0)     // Catch: java.io.IOException -> L76 org.xmlpull.v1.XmlPullParserException -> L8c
            if (r9 == 0) goto L52
            r9.callbackFailAsync(r14, r10)     // Catch: java.io.IOException -> L76 org.xmlpull.v1.XmlPullParserException -> L8c
        L52:
            return r13
        L53:
            r1 = r15
            r3 = r16
            r4 = r18
            r5 = r19
            r6 = r20
            r7 = r21
            r8 = r22
            android.graphics.Typeface r0 = android.support.v4.graphics.TypefaceCompat.createFromResourcesFamilyXml(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.io.IOException -> L76 org.xmlpull.v1.XmlPullParserException -> L8c
            return r0
        L65:
            r1 = r15
            android.graphics.Typeface r0 = android.support.v4.graphics.TypefaceCompat.createFromResourcesFontFile(r15, r0, r4, r12, r5)     // Catch: java.io.IOException -> L76 org.xmlpull.v1.XmlPullParserException -> L8c
            if (r9 == 0) goto L75
            if (r0 == 0) goto L72
            r9.callbackSuccessAsync(r0, r10)     // Catch: java.io.IOException -> L76 org.xmlpull.v1.XmlPullParserException -> L8c
            goto L75
        L72:
            r9.callbackFailAsync(r14, r10)     // Catch: java.io.IOException -> L76 org.xmlpull.v1.XmlPullParserException -> L8c
        L75:
            return r0
        L76:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to read xml resource "
            r1.append(r2)
            r1.append(r12)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r11, r1, r0)
            goto La1
        L8c:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to parse xml resource "
            r1.append(r2)
            r1.append(r12)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r11, r1, r0)
        La1:
            if (r9 == 0) goto La6
            r9.callbackFailAsync(r14, r10)
        La6:
            return r13
        La7:
            android.content.res.Resources$NotFoundException r2 = new android.content.res.Resources$NotFoundException
            java.lang.String r3 = "Resource \""
            java.lang.StringBuilder r3 = com.huawei.hem.C0948f6.m1765j(r3)
            java.lang.String r0 = r0.getResourceName(r4)
            r3.append(r0)
            java.lang.String r0 = "\" ("
            r3.append(r0)
            java.lang.String r0 = java.lang.Integer.toHexString(r18)
            r3.append(r0)
            java.lang.String r0 = ") is not a Font: "
            r3.append(r0)
            r3.append(r1)
            java.lang.String r0 = r3.toString()
            r2.<init>(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.res.ResourcesCompat.loadFont(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, android.support.v4.content.res.ResourcesCompat$FontCallback, android.os.Handler, boolean):android.graphics.Typeface");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static Typeface getFont(@NonNull Context context, @FontRes int i, TypedValue typedValue, int i2, @Nullable FontCallback fontCallback) {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i, typedValue, i2, fontCallback, null, true);
    }
}
