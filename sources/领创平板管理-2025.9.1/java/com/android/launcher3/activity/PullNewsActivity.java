package com.android.launcher3.activity;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.android.launcher3.R;
import com.android.launcher3.network.AppTimeLimitHelper;
import com.android.launcher3.network.ControlAppHelper;
import com.android.launcher3.network.GreenBrowWebHelper;
import com.android.launcher3.network.HiScreenHelper;
import com.android.launcher3.network.TacticsHelper;
import com.android.launcher3.network.UrlWhiteHelper;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.ComponentHelper;
import com.huawei.hem.SogouInputSettingsHelper;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public class PullNewsActivity extends Activity {

    /* renamed from: a */
    public static long f1778a;

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) throws NoSuchAlgorithmException {
        super.onCreate(bundle);
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = jCurrentTimeMillis - f1778a >= 60000;
        if (z) {
            f1778a = jCurrentTimeMillis;
        }
        if (z) {
            if (!LTKDateUtil.f2294f.mo2066k()) {
                LTKDateUtil.m1403m("PullNewsActivity has no cer");
                LTKDateUtil.m1413w(this, getResources().getString(R.string.hw_pull_tactics_failed), 0);
            }
            LTKDateUtil.m1403m("PullNewsActivity on refresh all tactics");
            TacticsHelper.getInstance().request();
            AppTimeLimitHelper.getInstance().request();
            ControlAppHelper.getInstance(this).request();
            UrlWhiteHelper.getInstance().request();
            HiScreenHelper.getInstance().updateScreenSettings();
            GreenBrowWebHelper.getInstances().getBrowUrlFromServer();
            ComponentHelper.m2652a().m2653b();
            SogouInputSettingsHelper.m2784c(this).m2785d();
            LTKDateUtil.m1413w(this, getResources().getString(R.string.tactics_sucess), 0);
        } else {
            LTKDateUtil.m1413w(this, getResources().getString(R.string.tactics_update_to_fast), 0);
        }
        finish();
    }
}
