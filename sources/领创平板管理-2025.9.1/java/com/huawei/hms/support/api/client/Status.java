package com.huawei.hms.support.api.client;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.core.aidl.annotation.Packed;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class Status extends Result implements Parcelable {

    @Packed
    public Intent intent;

    @Packed
    public PendingIntent pendingIntent;

    @Packed
    public int statusCode;

    @Packed
    public String statusMessage;
    public static final Status SUCCESS = new Status(0);
    public static final Status FAILURE = new Status(1);

    @Deprecated
    public static final Status RESULT_CANCELED = new Status(16);

    @Deprecated
    public static final Status RESULT_DEAD_CLIENT = new Status(18);

    @Deprecated
    public static final Status RESULT_INTERNAL_ERROR = new Status(8);

    @Deprecated
    public static final Status RESULT_INTERRUPTED = new Status(14);

    @Deprecated
    public static final Status RESULT_TIMEOUT = new Status(15);
    public static final Status MessageNotFound = new Status(404);
    public static final Status CoreException = new Status(500);
    public static final Parcelable.Creator<Status> CREATOR = new HmsStatusParcelCreator();

    /* renamed from: com.huawei.hms.support.api.client.Status$a */
    public static class HmsStatusParcelCreator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new Status(parcel.readInt(), parcel.readString(), PendingIntent.readPendingIntentOrNullFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new Status[i];
        }
    }

    public Status(int i) {
        this(i, null);
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.statusCode == status.statusCode && equal(this.statusMessage, status.statusMessage) && equal(this.pendingIntent, status.pendingIntent) && equal(this.intent, status.intent);
    }

    public String getErrorString() {
        return getStatusMessage();
    }

    public PendingIntent getResolution() {
        return this.pendingIntent;
    }

    public Intent getResolutionIntent() {
        return this.intent;
    }

    @Override // com.huawei.hms.support.api.client.Result
    public Status getStatus() {
        return this;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public String getStatusMessage() {
        return this.statusMessage;
    }

    public boolean hasResolution() {
        return (this.pendingIntent == null && this.intent == null) ? false : true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.statusCode), this.statusMessage, this.pendingIntent, this.intent});
    }

    public boolean isCanceled() {
        return false;
    }

    public boolean isInterrupted() {
        return false;
    }

    public boolean isSuccess() {
        return this.statusCode <= 0;
    }

    public void setIntent(Intent intent) {
        this.intent = intent;
    }

    public void setPendingIntent(PendingIntent pendingIntent) {
        this.pendingIntent = pendingIntent;
    }

    public void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            PendingIntent pendingIntent = this.pendingIntent;
            if (pendingIntent != null) {
                activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0);
            } else {
                activity.startActivityForResult(this.intent, i);
            }
        }
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("{statusCode: ");
        sbM1765j.append(this.statusCode);
        sbM1765j.append(", statusMessage: ");
        sbM1765j.append(this.statusMessage);
        sbM1765j.append(", pendingIntent: ");
        sbM1765j.append(this.pendingIntent);
        sbM1765j.append(", intent: ");
        sbM1765j.append(this.intent);
        sbM1765j.append(",}");
        return sbM1765j.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.statusCode);
        parcel.writeString(this.statusMessage);
        PendingIntent pendingIntent = this.pendingIntent;
        if (pendingIntent != null) {
            pendingIntent.writeToParcel(parcel, i);
        }
        PendingIntent.writePendingIntentOrNullToParcel(this.pendingIntent, parcel);
        Intent intent = this.intent;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }

    public Status(int i, String str) {
        this.statusCode = i;
        this.statusMessage = str;
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this.statusCode = i;
        this.statusMessage = str;
        this.pendingIntent = pendingIntent;
    }

    public Status(int i, String str, Intent intent) {
        this.statusCode = i;
        this.statusMessage = str;
        this.intent = intent;
    }
}
