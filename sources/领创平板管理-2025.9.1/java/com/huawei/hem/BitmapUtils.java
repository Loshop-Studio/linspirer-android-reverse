package com.huawei.hem;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* compiled from: BitmapUtils.java */
/* renamed from: com.huawei.hem.z5 */
/* loaded from: classes.dex */
public final class BitmapUtils {

    /* renamed from: a */
    public static final Canvas f4270a;

    static {
        Canvas canvas = new Canvas();
        f4270a = canvas;
        canvas.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
    }

    /* renamed from: a */
    public static Bitmap m3137a(Drawable drawable, Context context, ResolveInfo resolveInfo) {
        Bitmap bitmap;
        Resources resources = context.getResources();
        Bitmap bitmap2 = null;
        if (drawable != null) {
            try {
                if (drawable instanceof BitmapDrawable) {
                    bitmap = ((BitmapDrawable) drawable).getBitmap();
                } else {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                    try {
                        Canvas canvas = new Canvas(bitmapCreateBitmap);
                        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        drawable.draw(canvas);
                    } catch (Exception unused) {
                    }
                    bitmap = bitmapCreateBitmap;
                }
            } catch (Exception unused2) {
                bitmap = null;
            }
            if (bitmap != null) {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                RectF rectF = new RectF(new Rect(0, 0, 108, 108));
                Paint paint = new Paint();
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(108, 108, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                paint.setAntiAlias(true);
                paint.setColor(-1);
                canvas2.drawRoundRect(rectF, 22.0f, 22.0f, paint);
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                canvas2.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                canvas2.drawBitmap(bitmap, new Rect(0, 0, width, height), new Rect(0, 0, 108, 108), paint);
                bitmap2 = bitmapCreateBitmap2;
            }
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmap2);
        bitmapDrawable.setTargetDensity(resources.getDisplayMetrics());
        return bitmapDrawable.getBitmap();
    }
}
