package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.IconCompat;
import com.huawei.hem.AbstractC1393x;
import com.huawei.hem.C1418y;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(AbstractC1393x abstractC1393x) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.mType = abstractC1393x.m2923d(iconCompat.mType, 1);
        byte[] bArr = iconCompat.mData;
        if (abstractC1393x.mo2922c(2)) {
            C1418y c1418y = (C1418y) abstractC1393x;
            int i = c1418y.f4097b.readInt();
            if (i < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i];
                c1418y.f4097b.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.mData = bArr;
        iconCompat.mParcelable = abstractC1393x.m2924e(iconCompat.mParcelable, 3);
        iconCompat.mInt1 = abstractC1393x.m2923d(iconCompat.mInt1, 4);
        iconCompat.mInt2 = abstractC1393x.m2923d(iconCompat.mInt2, 5);
        iconCompat.mTintList = (ColorStateList) abstractC1393x.m2924e(iconCompat.mTintList, 6);
        String string = iconCompat.mTintModeStr;
        if (abstractC1393x.mo2922c(7)) {
            string = ((C1418y) abstractC1393x).f4097b.readString();
        }
        iconCompat.mTintModeStr = string;
        iconCompat.onPostParceling();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, AbstractC1393x abstractC1393x) {
        if (abstractC1393x == null) {
            throw null;
        }
        iconCompat.onPreParceling(false);
        abstractC1393x.m2926g(iconCompat.mType, 1);
        byte[] bArr = iconCompat.mData;
        abstractC1393x.mo2925f(2);
        C1418y c1418y = (C1418y) abstractC1393x;
        if (bArr != null) {
            c1418y.f4097b.writeInt(bArr.length);
            c1418y.f4097b.writeByteArray(bArr);
        } else {
            c1418y.f4097b.writeInt(-1);
        }
        Parcelable parcelable = iconCompat.mParcelable;
        abstractC1393x.mo2925f(3);
        c1418y.f4097b.writeParcelable(parcelable, 0);
        abstractC1393x.m2926g(iconCompat.mInt1, 4);
        abstractC1393x.m2926g(iconCompat.mInt2, 5);
        ColorStateList colorStateList = iconCompat.mTintList;
        abstractC1393x.mo2925f(6);
        c1418y.f4097b.writeParcelable(colorStateList, 0);
        String str = iconCompat.mTintModeStr;
        abstractC1393x.mo2925f(7);
        c1418y.f4097b.writeString(str);
    }
}
