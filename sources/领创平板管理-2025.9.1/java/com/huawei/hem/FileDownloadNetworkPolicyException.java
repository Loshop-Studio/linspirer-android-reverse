package com.huawei.hem;

/* compiled from: FileDownloadNetworkPolicyException.java */
/* renamed from: com.huawei.hem.bg */
/* loaded from: classes.dex */
public class FileDownloadNetworkPolicyException extends FileDownloadGiveUpRetryException {
    public FileDownloadNetworkPolicyException() {
        super("Only allows downloading this task on the wifi network type");
    }
}
