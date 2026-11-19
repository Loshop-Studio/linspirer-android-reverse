package com.huawei.hms.core.aidl;

import com.huawei.hms.core.aidl.annotation.Packed;
import com.huawei.hms.support.api.client.Status;

/* loaded from: classes.dex */
public class AbstractMessageEntity implements IMessageEntity {

    @Packed
    public Status commonStatus;

    public Status getCommonStatus() {
        return this.commonStatus;
    }

    public void setCommonStatus(Status status) {
        this.commonStatus = status;
    }
}
