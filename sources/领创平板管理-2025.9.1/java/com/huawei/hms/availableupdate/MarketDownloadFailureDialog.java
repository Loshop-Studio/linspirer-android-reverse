package com.huawei.hms.availableupdate;

import com.huawei.hms.utils.ResourceLoaderUtil;

/* compiled from: PromptDialogs.java */
/* renamed from: com.huawei.hms.availableupdate.c0 */
/* loaded from: classes.dex */
public class MarketDownloadFailureDialog extends UpdatePromptDialog {
    public MarketDownloadFailureDialog() {
        super();
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1491a0
    /* renamed from: h */
    public int mo3270h() {
        return ResourceLoaderUtil.getStringId("hms_download_failure");
    }
}
