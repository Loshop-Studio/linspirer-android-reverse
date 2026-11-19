package com.huawei.updatesdk.support.p060pm;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.fastjson.asm.Label;
import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.fileprovider.UpdateSdkFileProvider;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1594c;
import com.huawei.updatesdk.p034a.p043b.p045b.C1600b;
import com.huawei.updatesdk.p048b.p054d.C1626e;
import java.io.File;

/* loaded from: classes.dex */
public class PackageInstallerActivity extends Activity {
    /* renamed from: a */
    private Intent m3913a(Context context, String str) {
        Uri uriFromFile;
        if (TextUtils.isEmpty(str) || str.contains("../") || str.contains("..") || str.contains("%00") || str.contains(".\\.\\") || str.contains("./")) {
            throw new IllegalArgumentException("getNomalInstallIntent: Not a standard path");
        }
        Intent intentM1768m = C0948f6.m1768m("android.intent.action.INSTALL_PACKAGE");
        if (Build.VERSION.SDK_INT >= 24) {
            intentM1768m.addFlags(1);
            uriFromFile = UpdateSdkFileProvider.getUriForFile(context, context.getApplicationContext().getPackageName() + UpdateSdkFileProvider.AUTHORITIES_SUFFIX, new File(str));
        } else {
            uriFromFile = Uri.fromFile(new File(str));
        }
        intentM1768m.setData(uriFromFile);
        if (!(context instanceof Activity)) {
            intentM1768m.addFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
        }
        return intentM1768m;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (1000 == i) {
            if (i2 == 0) {
                C1626e.m3721a(7, 0);
            } else {
                int iM3596a = intent != null ? C1600b.m3595a(intent).m3596a("android.intent.extra.INSTALL_RESULT", -10004) : -10004;
                if (iM3596a != 0 && iM3596a != 1) {
                    C1626e.m3721a(4, iM3596a);
                }
            }
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        requestWindowFeature(1);
        C1594c.m3568d().m3581a(getWindow());
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            str = "PackageInstallerActivity error intent";
        } else {
            C1600b c1600bM3595a = C1600b.m3595a(intent);
            String strM3598a = c1600bM3595a.m3598a("install_path");
            String strM3598a2 = c1600bM3595a.m3598a("install_packagename");
            if (!TextUtils.isEmpty(strM3598a)) {
                try {
                    Intent intentM3913a = m3913a(this, strM3598a);
                    intentM3913a.putExtra("android.intent.extra.NOT_UNKNOWN_SOURCE", true);
                    intentM3913a.putExtra("android.intent.extra.RETURN_RESULT", true);
                    C1584a.m3517c("PackageInstallerActivity", " onCreate filePath:" + strM3598a + ",packageName:" + strM3598a2 + ",taskId:" + getTaskId());
                    startActivityForResult(intentM3913a, 1000);
                    return;
                } catch (Exception unused) {
                    C1584a.m3516b("PackageInstallerActivity", "can not start install action");
                    C1626e.m3721a(4, -2);
                    finish();
                    return;
                }
            }
            C1626e.m3721a(4, -3);
            finish();
            str = "PackageInstallerActivity can not find filePath.";
        }
        C1584a.m3516b("PackageInstallerActivity", str);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        finishActivity(1000);
        super.onDestroy();
    }
}
