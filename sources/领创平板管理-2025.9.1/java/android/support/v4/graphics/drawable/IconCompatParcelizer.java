package android.support.v4.graphics.drawable;

import android.support.annotation.RestrictTo;
import com.huawei.hem.VersionedParcel;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class IconCompatParcelizer extends androidx.core.graphics.drawable.IconCompatParcelizer {
    public static IconCompat read(VersionedParcel abstractC1393x) {
        return androidx.core.graphics.drawable.IconCompatParcelizer.read(abstractC1393x);
    }

    public static void write(IconCompat iconCompat, VersionedParcel abstractC1393x) {
        androidx.core.graphics.drawable.IconCompatParcelizer.write(iconCompat, abstractC1393x);
    }
}
