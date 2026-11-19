package com.huawei.hem;

import android.R;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import java.util.HashMap;

/* compiled from: IconCache.java */
/* renamed from: com.huawei.hem.a6 */
/* loaded from: classes.dex */
public class IconCache {

    /* renamed from: g */
    public static IconCache f2175g;

    /* renamed from: a */
    public final Bitmap f2176a;

    /* renamed from: b */
    public final Context f2177b;

    /* renamed from: c */
    public final PackageManager f2178c;

    /* renamed from: e */
    public int f2180e;

    /* renamed from: d */
    public final HashMap<String, b> f2179d = new HashMap<>(50);

    /* renamed from: f */
    public HashMap<Object, CharSequence> f2181f = new HashMap<>();

    /* compiled from: IconCache.java */
    /* renamed from: com.huawei.hem.a6$b */
    public static class b {

        /* renamed from: a */
        public Bitmap f2182a;

        /* renamed from: b */
        public String f2183b;

        public b() {
        }

        public b(a aVar) {
        }
    }

    public IconCache(Context context) throws Resources.NotFoundException {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f2177b = context;
        this.f2178c = context.getPackageManager();
        this.f2180e = activityManager.getLauncherLargeIconDensity();
        Drawable drawableM1298b = m1298b();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(drawableM1298b.getIntrinsicWidth(), 1), Math.max(drawableM1298b.getIntrinsicHeight(), 1), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawableM1298b.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
        drawableM1298b.draw(canvas);
        canvas.setBitmap(null);
        this.f2176a = bitmapCreateBitmap;
    }

    /* renamed from: a */
    public final b m1297a(String str, ResolveInfo resolveInfo) throws Resources.NotFoundException, PackageManager.NameNotFoundException {
        Resources resourcesForApplication;
        int iconResource;
        b bVar = this.f2179d.get(str);
        if (bVar == null || bVar.f2182a == null) {
            Drawable drawableM1298b = null;
            bVar = new b(null);
            this.f2179d.put(str, bVar);
            HashMap<Object, CharSequence> map = this.f2181f;
            if (map == null || !map.containsKey(str)) {
                String string = resolveInfo.loadLabel(this.f2178c).toString();
                bVar.f2183b = string;
                HashMap<Object, CharSequence> map2 = this.f2181f;
                if (map2 != null) {
                    map2.put(str, string);
                }
            } else {
                bVar.f2183b = this.f2181f.get(str).toString();
            }
            if (bVar.f2183b == null) {
                bVar.f2183b = resolveInfo.activityInfo.name;
            }
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            try {
                resourcesForApplication = this.f2178c.getResourcesForApplication(activityInfo.applicationInfo);
            } catch (PackageManager.NameNotFoundException unused) {
                resourcesForApplication = null;
            }
            if (resourcesForApplication == null || (iconResource = activityInfo.getIconResource()) == 0) {
                drawableM1298b = m1298b();
            } else {
                try {
                    drawableM1298b = resourcesForApplication.getDrawableForDensity(iconResource, this.f2180e);
                } catch (Resources.NotFoundException unused2) {
                }
                if (drawableM1298b == null) {
                    drawableM1298b = m1298b();
                }
            }
            bVar.f2182a = BitmapUtils.m3137a(drawableM1298b, this.f2177b, resolveInfo);
        }
        return bVar;
    }

    /* renamed from: b */
    public Drawable m1298b() throws Resources.NotFoundException {
        Drawable drawableForDensity;
        try {
            drawableForDensity = Resources.getSystem().getDrawableForDensity(R.drawable.sym_def_app_icon, this.f2180e);
        } catch (Resources.NotFoundException unused) {
            drawableForDensity = null;
        }
        return drawableForDensity != null ? drawableForDensity : m1298b();
    }
}
