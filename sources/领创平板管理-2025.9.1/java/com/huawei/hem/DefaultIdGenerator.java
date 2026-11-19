package com.huawei.hem;

/* compiled from: DefaultIdGenerator.java */
/* renamed from: com.huawei.hem.pg */
/* loaded from: classes.dex */
public class DefaultIdGenerator implements InterfaceC0907dh {
    /* renamed from: a */
    public int m2484a(String str, String str2, boolean z) {
        return z ? FileDownloadUtils.m1968r(FileDownloadUtils.m1955e("%sp%s@dir", str, str2)).hashCode() : FileDownloadUtils.m1968r(FileDownloadUtils.m1955e("%sp%s", str, str2)).hashCode();
    }
}
