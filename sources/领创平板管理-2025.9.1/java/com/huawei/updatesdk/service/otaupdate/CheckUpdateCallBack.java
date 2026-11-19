package com.huawei.updatesdk.service.otaupdate;

import android.content.Intent;

/* loaded from: classes.dex */
public interface CheckUpdateCallBack {
    void onMarketInstallInfo(Intent intent);

    void onMarketStoreError(int i);

    void onUpdateInfo(Intent intent);

    void onUpdateStoreError(int i);
}
