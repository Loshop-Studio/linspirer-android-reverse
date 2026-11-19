package com.huawei.hem;

import android.content.Intent;
import android.os.IBinder;

/* compiled from: IFileDownloadServiceHandler.java */
/* renamed from: com.huawei.hem.wg */
/* loaded from: classes.dex */
public interface IFileDownloadServiceHandler {
    IBinder onBind(Intent intent);

    void onStartCommand(Intent intent, int i, int i2);
}
