package com.huawei.hem;

import android.os.Parcel;
import android.os.Parcelable;
import com.aliyun.ams.emas.push.notification.CPushMessage;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.x0 */
/* loaded from: classes.dex */
public final class CPushMessageParcelCreator implements Parcelable.Creator<CPushMessage> {
    @Override // android.os.Parcelable.Creator
    public CPushMessage createFromParcel(Parcel parcel) {
        return new CPushMessage(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    public CPushMessage[] newArray(int i) {
        return new CPushMessage[i];
    }
}
