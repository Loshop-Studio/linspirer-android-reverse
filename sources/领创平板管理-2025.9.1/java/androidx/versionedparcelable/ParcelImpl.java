package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.util.SparseIntArray;
import com.huawei.hem.VersionedParcel;
import com.huawei.hem.VersionedParcelParcel;
import com.huawei.hem.VersionedParcelable;
import com.huawei.hms.framework.common.ExceptionCode;
import java.lang.reflect.InvocationTargetException;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new ParcelImplCreator();

    /* renamed from: a */
    public final VersionedParcelable f43a;

    /* renamed from: androidx.versionedparcelable.ParcelImpl$a */
    public static class ParcelImplCreator implements Parcelable.Creator<ParcelImpl> {
        @Override // android.os.Parcelable.Creator
        public ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ParcelImpl[] newArray(int i) {
            return new ParcelImpl[i];
        }
    }

    public ParcelImpl(Parcel parcel) {
        int iDataPosition = parcel.dataPosition();
        int iDataSize = parcel.dataSize();
        new SparseIntArray();
        String string = parcel.readString();
        VersionedParcelable interfaceC1443z = null;
        if (string != null) {
            try {
                interfaceC1443z = (VersionedParcelable) Class.forName(string, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod(ExceptionCode.READ, VersionedParcel.class).invoke(null, new VersionedParcelParcel(parcel, parcel.dataPosition(), iDataPosition == iDataPosition ? iDataSize : iDataPosition, "  "));
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (!(e4.getCause() instanceof RuntimeException)) {
                    throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
                }
                throw ((RuntimeException) e4.getCause());
            }
        }
        this.f43a = interfaceC1443z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int iDataPosition = parcel.dataPosition();
        int iDataSize = parcel.dataSize();
        new SparseIntArray();
        VersionedParcelable interfaceC1443z = this.f43a;
        if (interfaceC1443z == null) {
            parcel.writeString(null);
            return;
        }
        try {
            parcel.writeString(VersionedParcel.m2920b(interfaceC1443z.getClass()).getName());
            int iDataPosition2 = parcel.dataPosition();
            if (iDataPosition == iDataPosition) {
                iDataPosition = iDataSize;
            }
            VersionedParcelParcel c1418y = new VersionedParcelParcel(parcel, iDataPosition2, iDataPosition, "  ");
            try {
                VersionedParcel.m2920b(interfaceC1443z.getClass()).getDeclaredMethod(ExceptionCode.WRITE, interfaceC1443z.getClass(), VersionedParcel.class).invoke(null, interfaceC1443z, c1418y);
                c1418y.mo2921a();
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (!(e4.getCause() instanceof RuntimeException)) {
                    throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
                }
                throw ((RuntimeException) e4.getCause());
            }
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException(interfaceC1443z.getClass().getSimpleName() + " does not have a Parcelizer", e5);
        }
    }
}
