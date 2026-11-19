package com.huawei.hms.availableupdate;

import com.huawei.hms.utils.ResourceLoaderUtil;

/* compiled from: ConfirmDialogs.java */
/* renamed from: com.huawei.hms.availableupdate.t */
/* loaded from: classes.dex */
public class MeteredUpdateConfirmationDialog extends UpdateConfirmationDialog {
    public MeteredUpdateConfirmationDialog() {
        super();
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1514s
    /* renamed from: h */
    public int mo3352h() {
        return ResourceLoaderUtil.getStringId("hms_update_nettype");
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1514s
    /* renamed from: i */
    public int mo3353i() {
        return ResourceLoaderUtil.getStringId("hms_cancel");
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1514s
    /* renamed from: j */
    public int mo3354j() {
        return ResourceLoaderUtil.getStringId("hms_update_continue");
    }
}
