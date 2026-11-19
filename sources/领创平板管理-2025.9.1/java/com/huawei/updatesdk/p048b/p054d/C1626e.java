package com.huawei.updatesdk.p048b.p054d;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import com.huawei.updatesdk.p034a.p043b.p045b.C1600b;
import com.huawei.updatesdk.p048b.p056f.C1635c;
import com.huawei.updatesdk.support.p060pm.PackageInstallerActivity;
import java.io.File;

/* renamed from: com.huawei.updatesdk.b.d.e */
/* loaded from: classes.dex */
public class C1626e {
    /* renamed from: a */
    public static void m3721a(int i, int i2) {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putInt("INSTALL_STATE", i);
        bundle.putInt("INSTALL_TYPE", i2);
        intent.putExtras(bundle);
        C1635c.m3744b().m3747c(C1600b.m3595a(intent));
    }

    /* renamed from: a */
    public static void m3722a(Context context, String str, String str2) {
        m3721a(3, 1);
        File file = new File(str);
        if (!file.exists() || !file.isFile() || file.length() <= 0) {
            C1584a.m3516b("InstallProcess", "system install failed,file not existed filePath:" + str);
            m3721a(4, -10003);
            return;
        }
        Intent intent = new Intent(context, (Class<?>) PackageInstallerActivity.class);
        intent.putExtra("install_path", str);
        intent.putExtra("install_packagename", str2);
        if (!(context instanceof Activity)) {
            intent.setFlags(402653184);
        }
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            m3721a(4, -10002);
            C1584a.m3515a("InstallProcess", " can not start install !", e);
        }
    }
}
