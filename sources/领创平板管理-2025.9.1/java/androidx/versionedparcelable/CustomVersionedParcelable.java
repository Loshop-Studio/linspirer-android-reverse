package androidx.versionedparcelable;

import android.support.annotation.RestrictTo;
import com.huawei.hem.InterfaceC1443z;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public abstract class CustomVersionedParcelable implements InterfaceC1443z {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onPostParceling() {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onPreParceling(boolean z) {
    }
}
