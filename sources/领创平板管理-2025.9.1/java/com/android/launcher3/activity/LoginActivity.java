package com.android.launcher3.activity;

import android.content.ComponentName;
import android.content.Intent;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import com.alibaba.fastjson.asm.Label;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseFragmentActivity;
import com.android.launcher3.fragment.login.BaseLoginFragment;
import com.android.launcher3.fragment.login.InitUserLoginFragment;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0878ce;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1045j2;
import com.huawei.hem.C1373w4;
import com.huawei.hem.C1398x4;
import com.huawei.hem.C1423y4;
import com.taobao.accs.utl.UtilityImpl;
import java.util.List;

/* loaded from: classes.dex */
public class LoginActivity extends BaseFragmentActivity {

    /* renamed from: b */
    public BaseLoginFragment f1760b;

    @Override // com.android.launcher3.activity.base.BaseFragmentActivity
    /* renamed from: a */
    public int mo1164a() {
        return R.layout.activity_launcher_new;
    }

    @Override // com.android.launcher3.activity.base.BaseFragmentActivity
    /* renamed from: b */
    public void mo1165b() {
        C0850bc.m1403m("LoginActivity =====initData======");
        C1398x4.b.f4050a.m2927a();
        if (C0878ce.m1510c()) {
            C1373w4.b.f3989a.m2898a();
        }
        C1423y4.m3001v(this, false);
        C0850bc.f2294f.mo2059a(null, null);
    }

    @Override // com.android.launcher3.activity.base.BaseFragmentActivity
    /* renamed from: d */
    public void mo1166d(Bundle bundle) {
        C0850bc.m1403m("LoginActivity  -- initView .");
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
            if (supportFragmentManager.findFragmentById(R.id.main_content) == null) {
                this.f1760b = new InitUserLoginFragment();
            } else {
                InitUserLoginFragment initUserLoginFragment = (InitUserLoginFragment) supportFragmentManager.findFragmentById(R.id.main_content);
                this.f1760b = initUserLoginFragment;
                fragmentTransactionBeginTransaction.remove(initUserLoginFragment);
                supportFragmentManager.popBackStack();
                fragmentTransactionBeginTransaction.commit();
                supportFragmentManager.beginTransaction();
            }
            fragmentTransactionBeginTransaction.add(R.id.main_content, this.f1760b);
            fragmentTransactionBeginTransaction.commit();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        C0850bc.m1403m("LoginActivity ==onDestroy===");
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        boolean z = true;
        for (int i2 : iArr) {
            if (i2 != 0) {
                z = false;
            }
        }
        if (!z || iArr.length <= 1) {
            return;
        }
        C0850bc.m1403m("LoginActivity need request background location permission");
        new C1045j2(this).m2115a(this);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        C0850bc.m1403m("LoginActivity ===onResume====");
        C0850bc.f2294f.disableHome();
        C0850bc.f2294f.disableRecent();
        C0850bc.f2294f.enableBack();
        if (TextUtils.isEmpty(this.f1812a.m3052k())) {
            C0850bc.f2294f.mo2061d0("com.huawei.hwid");
            try {
                Log.i("EduAppStoreHelper", "=====to keepAliveStore===");
                C0850bc.m1411u("EduAppStoreHelper", "=====to keepAliveStore===");
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.ndwill.swd.appstore", "com.ndwill.swd.appstore.activity.EmptyActivity"));
                intent.putExtra("keepalive", true);
                intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
                Log.i("EduAppStoreHelper", "=====keepalive===");
                C0850bc.m1411u("EduAppStoreHelper", "=====keepalive===");
                startActivity(intent);
            } catch (Throwable th) {
                C0948f6.m1746D(th, C0948f6.m1765j("start appstore failed"));
            }
            if (C0850bc.f2294f.mo2064i0()) {
                WifiManager wifiManager = (WifiManager) GuardSecureApplication.f1640b.getApplicationContext().getSystemService(UtilityImpl.NET_TYPE_WIFI);
                List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
                if (AbstractC1102l9.m2273N(configuredNetworks)) {
                    return;
                }
                for (WifiConfiguration wifiConfiguration : configuredNetworks) {
                    if (Build.VERSION.SDK_INT >= 26 && wifiConfiguration.getHttpProxy() != null) {
                        wifiManager.removeNetwork(wifiConfiguration.networkId);
                    }
                }
            }
        }
    }
}
