package com.huawei.hms.activity;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.p032ui.SafeIntent;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.ResourceLoaderUtil;
import com.huawei.hms.utils.UIUtil;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class BridgeActivity extends Activity {
    public static final String EXTRA_DELEGATE_CLASS_NAME = "intent.extra.DELEGATE_CLASS_OBJECT";
    public static final String EXTRA_DELEGATE_UPDATE_INFO = "intent.extra.update.info";
    public static final String EXTRA_INTENT = "intent.extra.intent";
    public static final String EXTRA_IS_FULLSCREEN = "intent.extra.isfullscreen";
    public static final String EXTRA_RESULT = "intent.extra.RESULT";

    /* renamed from: b */
    public static final int f4333b = m3178a("ro.build.hw_emui_api_level", 0);

    /* renamed from: a */
    public IBridgeActivityDelegate f4334a;

    /* renamed from: com.huawei.hms.activity.BridgeActivity$a */
    public class ViewOnApplyWindowInsetsListenerC1469a implements View.OnApplyWindowInsetsListener {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f4335a;

        public ViewOnApplyWindowInsetsListenerC1469a(BridgeActivity bridgeActivity, ViewGroup viewGroup) {
            this.f4335a = viewGroup;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            try {
                Object objInvoke = Class.forName("com.huawei.android.view.WindowManagerEx$LayoutParamsEx").getMethod("getDisplaySideRegion", WindowInsets.class).invoke(null, windowInsets);
                if (objInvoke == null) {
                    HMSLog.m3463i("BridgeActivity", "sideRegion is null");
                } else {
                    Rect rect = (Rect) Class.forName("com.huawei.android.view.DisplaySideRegionEx").getMethod("getSafeInsets", new Class[0]).invoke(objInvoke, new Object[0]);
                    if (this.f4335a != null) {
                        this.f4335a.setPadding(rect.left, 0, rect.right, 0);
                    }
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("An exception occurred while reading: onApplyWindowInsets");
                sbM1765j.append(e.getMessage());
                HMSLog.m3461e("BridgeActivity", sbM1765j.toString());
            }
            return view.onApplyWindowInsets(windowInsets);
        }
    }

    /* renamed from: a */
    public static void m3179a(Window window, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            window.getClass().getMethod("setHwFloating", Boolean.TYPE).invoke(window, Boolean.valueOf(z));
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("In setHwFloating, Failed to call Window.setHwFloating().");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("BridgeActivity", sbM1765j.toString());
        }
    }

    public static Intent getIntentStartBridgeActivity(Activity activity, String str) {
        Intent intent = new Intent(activity, (Class<?>) BridgeActivity.class);
        intent.putExtra(EXTRA_DELEGATE_CLASS_NAME, str);
        intent.putExtra(EXTRA_IS_FULLSCREEN, UIUtil.isActivityFullscreen(activity));
        return intent;
    }

    /* renamed from: b */
    public final boolean m3181b() {
        Intent intent = getIntent();
        if (intent == null) {
            HMSLog.m3461e("BridgeActivity", "In initialize, Must not pass in a null intent.");
            return false;
        }
        if (intent.getBooleanExtra(EXTRA_IS_FULLSCREEN, false)) {
            getWindow().setFlags(1024, 1024);
        }
        String stringExtra = intent.getStringExtra(EXTRA_DELEGATE_CLASS_NAME);
        if (stringExtra == null) {
            HMSLog.m3461e("BridgeActivity", "In initialize, Must not pass in a null or non class object.");
            return false;
        }
        try {
            IBridgeActivityDelegate iBridgeActivityDelegate = (IBridgeActivityDelegate) Class.forName(stringExtra).asSubclass(IBridgeActivityDelegate.class).newInstance();
            this.f4334a = iBridgeActivityDelegate;
            try {
                iBridgeActivityDelegate.onBridgeActivityCreate(this);
                return true;
            } catch (RuntimeException e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("Run time Exception.");
                sbM1765j.append(e.getMessage());
                HMSLog.m3461e("BridgeActivity", sbM1765j.toString());
                return false;
            }
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("In initialize, Failed to create 'IUpdateWizard' instance.");
            sbM1765j2.append(e2.getMessage());
            HMSLog.m3461e("BridgeActivity", sbM1765j2.toString());
            return false;
        }
    }

    /* renamed from: c */
    public final void m3182c() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        requestWindowFeature(1);
        Window window = getWindow();
        if (f4333b >= 9) {
            window.addFlags(67108864);
            m3179a(window, true);
        }
        window.getDecorView().setSystemUiVisibility(0);
    }

    @Override // android.app.Activity
    public void finish() {
        HMSLog.m3463i("BridgeActivity", "Enter finish.");
        super.finish();
    }

    @Override // android.app.Activity
    public Intent getIntent() {
        Intent intent = super.getIntent();
        return intent != null ? new SafeIntent(intent) : intent;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        SafeIntent safeIntent = new SafeIntent(intent);
        super.onActivityResult(i, i2, safeIntent);
        IBridgeActivityDelegate iBridgeActivityDelegate = this.f4334a;
        if (iBridgeActivityDelegate == null || iBridgeActivityDelegate.onBridgeActivityResult(i, i2, safeIntent) || isFinishing()) {
            return;
        }
        setResult(i2, safeIntent);
        finish();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        IBridgeActivityDelegate iBridgeActivityDelegate = this.f4334a;
        if (iBridgeActivityDelegate != null) {
            iBridgeActivityDelegate.onBridgeConfigurationChanged();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        super.onCreate(bundle);
        if (getIntent() == null) {
            return;
        }
        m3182c();
        m3180a();
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(getApplicationContext());
        }
        if (m3181b()) {
            return;
        }
        setResult(1, null);
        finish();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        IBridgeActivityDelegate iBridgeActivityDelegate = this.f4334a;
        if (iBridgeActivityDelegate != null) {
            iBridgeActivityDelegate.onBridgeActivityDestroy();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        IBridgeActivityDelegate iBridgeActivityDelegate = this.f4334a;
        if (iBridgeActivityDelegate != null) {
            iBridgeActivityDelegate.onKeyUp(i, keyEvent);
        }
        return super.onKeyUp(i, keyEvent);
    }

    public static Intent getIntentStartBridgeActivity(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) BridgeActivity.class);
        intent.putExtra(EXTRA_DELEGATE_CLASS_NAME, str);
        intent.putExtra(EXTRA_IS_FULLSCREEN, false);
        return intent;
    }

    /* renamed from: a */
    public final void m3180a() throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        ViewGroup viewGroup = (ViewGroup) getWindow().findViewById(R.id.content);
        if (viewGroup == null) {
            HMSLog.m3461e("BridgeActivity", "rootView is null");
            return;
        }
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.WindowManagerEx$LayoutParamsEx");
            cls.getMethod("setDisplaySideMode", Integer.TYPE).invoke(cls.getDeclaredConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 1);
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("An exception occurred while reading: setDisplaySideMode");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("BridgeActivity", sbM1765j.toString());
        }
        getWindow().getDecorView().setOnApplyWindowInsetsListener(new ViewOnApplyWindowInsetsListenerC1469a(this, viewGroup));
    }

    /* renamed from: a */
    public static int m3178a(String str, int i) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return ((Integer) cls.getDeclaredMethod("getInt", String.class, Integer.TYPE).invoke(cls, str, Integer.valueOf(i))).intValue();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused) {
            HMSLog.m3461e("BridgeActivity", "An exception occurred while reading: EMUI_SDK_INT");
            return i;
        }
    }
}
