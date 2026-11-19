package com.huawei.hms.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import anet.channel.util.HttpConstant;
import com.google.zxing.client.android.Intents;
import com.huawei.hms.common.internal.Objects;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;

/* loaded from: classes.dex */
public final class ConnectionResult implements Parcelable {
    public static final int API_UNAVAILABLE = 1000;
    public static final int BINDFAIL_RESOLUTION_BACKGROUND = 7;
    public static final int BINDFAIL_RESOLUTION_REQUIRED = 6;
    public static final int CANCELED = 13;
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new C1479a();
    public static final int DEVELOPER_ERROR = 10;
    public static final int DRIVE_EXTERNAL_STORAGE_REQUIRED = 9002;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 15;
    public static final int INVALID_ACCOUNT = 5;
    public static final int LICENSE_CHECK_FAILED = 11;
    public static final int NETWORK_ERROR = 9000;
    public static final int RESOLUTION_REQUIRED = 9001;
    public static final int RESTRICTED_PROFILE = 9003;
    public static final int SERVICE_DISABLED = 3;
    public static final int SERVICE_INVALID = 9;
    public static final int SERVICE_MISSING = 1;
    public static final int SERVICE_MISSING_PERMISSION = 19;
    public static final int SERVICE_UNSUPPORTED = 21;
    public static final int SERVICE_UPDATING = 9004;
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_FAILED = 9005;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int TIMEOUT = 14;

    /* renamed from: a */
    public int f4366a;

    /* renamed from: b */
    public PendingIntent f4367b;

    /* renamed from: c */
    public String f4368c;

    /* renamed from: d */
    public int f4369d;

    /* renamed from: com.huawei.hms.api.ConnectionResult$a */
    public static class C1479a implements Parcelable.Creator<ConnectionResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConnectionResult createFromParcel(Parcel parcel) {
            return new ConnectionResult(parcel, (C1479a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConnectionResult[] newArray(int i) {
            return new ConnectionResult[i];
        }
    }

    public /* synthetic */ ConnectionResult(Parcel parcel, C1479a c1479a) {
        this(parcel);
    }

    /* renamed from: a */
    public static String m3211a(int i) {
        if (i == -1) {
            return GrsBaseInfo.CountryCodeSource.UNKNOWN;
        }
        if (i == 0) {
            return HttpConstant.SUCCESS;
        }
        if (i == 1) {
            return "SERVICE_MISSING";
        }
        if (i == 2) {
            return "SERVICE_VERSION_UPDATE_REQUIRED";
        }
        if (i == 3) {
            return "SERVICE_DISABLED";
        }
        if (i == 13) {
            return "CANCELED";
        }
        if (i == 14) {
            return Intents.Scan.TIMEOUT;
        }
        if (i == 19) {
            return "SERVICE_MISSING_PERMISSION";
        }
        if (i == 21) {
            return "API_VERSION_UPDATE_REQUIRED";
        }
        switch (i) {
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                return "UNKNOWN_ERROR_CODE(" + i + ")";
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if ((obj instanceof ConnectionResult) && this.f4366a == ((ConnectionResult) obj).f4366a && this.f4369d == ((ConnectionResult) obj).f4369d && this.f4368c.equals(((ConnectionResult) obj).f4368c)) {
                if (this.f4367b.equals(((ConnectionResult) obj).f4367b)) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public int getErrorCode() {
        return this.f4369d;
    }

    public final String getErrorMessage() {
        return this.f4368c;
    }

    public final PendingIntent getResolution() {
        return this.f4367b;
    }

    public final boolean hasResolution() {
        return HuaweiApiAvailability.getInstance().isUserResolvableError(this.f4369d, this.f4367b);
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f4366a), Long.valueOf(getErrorCode()), getErrorMessage(), this.f4367b);
    }

    public final boolean isSuccess() {
        return this.f4369d == 0;
    }

    public final void startResolutionForResult(Activity activity, int i) {
        if (hasResolution()) {
            HuaweiApiAvailability.getInstance().resolveError(activity, this.f4369d, i, this.f4367b);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4366a);
        parcel.writeInt(this.f4369d);
        parcel.writeString(this.f4368c);
        this.f4367b.writeToParcel(parcel, i);
    }

    public ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str) {
        this.f4366a = 1;
        this.f4367b = null;
        this.f4368c = null;
        this.f4366a = i;
        this.f4369d = i2;
        this.f4367b = pendingIntent;
        this.f4368c = str;
    }

    public ConnectionResult(int i) {
        this(i, (PendingIntent) null);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    public ConnectionResult(Parcel parcel) {
        this.f4366a = 1;
        this.f4367b = null;
        this.f4368c = null;
        this.f4366a = parcel.readInt();
        this.f4369d = parcel.readInt();
        this.f4368c = parcel.readString();
        Parcelable parcelable = (Parcelable) PendingIntent.CREATOR.createFromParcel(parcel);
        if (parcelable != null) {
            this.f4367b = (PendingIntent) parcelable;
        }
    }
}
