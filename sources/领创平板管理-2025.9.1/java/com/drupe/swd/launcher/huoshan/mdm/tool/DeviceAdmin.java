package com.drupe.swd.launcher.huoshan.mdm.tool;

import android.app.admin.DeviceAdminReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public class DeviceAdmin extends DeviceAdminReceiver {
    /* renamed from: a */
    public void m1285a() {
    }

    @Override // android.app.admin.DeviceAdminReceiver
    public CharSequence onDisableRequested(Context context, Intent intent) {
        return "onDisableRequested";
    }

    @Override // android.app.admin.DeviceAdminReceiver
    public void onDisabled(Context context, Intent intent) {
        m1285a();
    }

    @Override // android.app.admin.DeviceAdminReceiver
    public void onEnabled(Context context, Intent intent) {
        m1285a();
    }

    @Override // android.app.admin.DeviceAdminReceiver
    public void onPasswordChanged(Context context, Intent intent) {
        m1285a();
    }

    @Override // android.app.admin.DeviceAdminReceiver
    public void onPasswordFailed(Context context, Intent intent) {
        m1285a();
    }

    @Override // android.app.admin.DeviceAdminReceiver
    public void onPasswordSucceeded(Context context, Intent intent) {
        m1285a();
    }
}
