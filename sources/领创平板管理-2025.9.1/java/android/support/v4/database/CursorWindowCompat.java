package android.support.v4.database;

import android.database.CursorWindow;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* loaded from: classes.dex */
public final class CursorWindowCompat {
    @NonNull
    public static CursorWindow create(@Nullable String str, long j) {
        return Build.VERSION.SDK_INT >= 28 ? new CursorWindow(str, j) : new CursorWindow(str);
    }
}
