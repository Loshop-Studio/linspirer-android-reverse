package android.support.v4.graphics;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;

/* loaded from: classes.dex */
public final class BitmapCompat {
    public static int getAllocationByteCount(@NonNull Bitmap bitmap) {
        return bitmap.getAllocationByteCount();
    }

    public static boolean hasMipMap(@NonNull Bitmap bitmap) {
        return bitmap.hasMipMap();
    }

    public static void setHasMipMap(@NonNull Bitmap bitmap, boolean z) {
        bitmap.setHasMipMap(z);
    }
}
