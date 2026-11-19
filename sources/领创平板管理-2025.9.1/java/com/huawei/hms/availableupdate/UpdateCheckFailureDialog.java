package com.huawei.hms.availableupdate;

import com.huawei.hms.utils.ResourceLoaderUtil;

/* compiled from: PromptDialogs.java */
/* renamed from: com.huawei.hms.availableupdate.b0 */
/* loaded from: classes.dex */
public class UpdateCheckFailureDialog extends UpdatePromptDialog {
    public UpdateCheckFailureDialog() {
        super();
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1491a0
    /* renamed from: h */
    public int mo3270h() {
        return ResourceLoaderUtil.getStringId("hms_check_failure");
    }
}
