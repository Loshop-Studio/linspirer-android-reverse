package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.util.SparseIntArray;
import com.huawei.hem.AbstractC1393x;
import com.huawei.hem.C1418y;
import com.huawei.hem.InterfaceC1443z;
import com.huawei.hms.framework.common.ExceptionCode;
import java.lang.reflect.InvocationTargetException;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new C0301a();

    /* renamed from: a */
    public final InterfaceC1443z f43a;

    /* renamed from: androidx.versionedparcelable.ParcelImpl$a */
    public static class C0301a implements Parcelable.Creator<ParcelImpl> {
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
        InterfaceC1443z interfaceC1443z = null;
        if (string != null) {
            try {
                interfaceC1443z = (InterfaceC1443z) Class.forName(string, true, AbstractC1393x.class.getClassLoader()).getDeclaredMethod(ExceptionCode.READ, AbstractC1393x.class).invoke(null, new C1418y(parcel, parcel.dataPosition(), iDataPosition == iDataPosition ? iDataSize : iDataPosition, "  "));
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
        InterfaceC1443z interfaceC1443z = this.f43a;
        if (interfaceC1443z == null) {
            parcel.writeString(null);
            return;
        }
        try {
            parcel.writeString(AbstractC1393x.m2920b(interfaceC1443z.getClass()).getName());
            int iDataPosition2 = parcel.dataPosition();
            if (iDataPosition == iDataPosition) {
                iDataPosition = iDataSize;
            }
            C1418y c1418y = new C1418y(parcel, iDataPosition2, iDataPosition, "  ");
            try {
                AbstractC1393x.m2920b(interfaceC1443z.getClass()).getDeclaredMethod(ExceptionCode.WRITE, interfaceC1443z.getClass(), AbstractC1393x.class).invoke(null, interfaceC1443z, c1418y);
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
