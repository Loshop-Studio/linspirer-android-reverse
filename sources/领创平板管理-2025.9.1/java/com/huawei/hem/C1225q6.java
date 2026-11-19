package com.huawei.hem;

import android.content.Context;
import android.content.pm.IPackageInstallObserver2;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: IMDM.java */
/* renamed from: com.huawei.hem.q6 */
/* loaded from: classes.dex */
public final class C1225q6 {

    /* renamed from: a */
    public static C1225q6 f3491a;

    public C1225q6(Context context) {
    }

    /* renamed from: A */
    public void m2535A() {
        try {
            C1423y4.m2956C().setMobileDataDisabled(true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: B */
    public void m2536B() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(3, true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: C */
    public void m2537C() {
        try {
            C1423y4.m2956C().setScreenCapDisabled(false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: D */
    public void m2538D() {
        try {
            C1423y4.m2956C().setSdcardDisabled(false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: E */
    public void m2539E() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(5, true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: F */
    public void m2540F() {
        try {
            C1423y4.m2956C().setVoiceDisabled(false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: G */
    public void m2541G() {
        try {
            C1423y4.m2956C().setUSBDataDisabled(false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: H */
    public void m2542H() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(4, true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: I */
    public List<String> m2543I() {
        try {
            return C1423y4.m2956C().getDeviceInfo();
        } catch (RemoteException unused) {
            return new ArrayList();
        }
    }

    /* renamed from: J */
    public void m2544J() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(8, false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: K */
    public void m2545K(long j) {
        try {
            C1423y4.m2956C().setTime(j);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: L */
    public void m2546L() {
        try {
            C1423y4.m2956C().resetFactory();
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: M */
    public void m2547M() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(8, true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: N */
    public void m2548N() {
        try {
            C1423y4.m2956C().shutdownDevice();
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: O */
    public void m2549O(String str) {
        try {
            C1423y4.m2956C().installPackageSilent(str, (IPackageInstallObserver2) null);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: P */
    public void m2550P(String str) {
        try {
            C1423y4.m2956C().uninstallApplication(str, false, (IBinder) null);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: Q */
    public List<String> m2551Q() {
        try {
            return C1423y4.m2956C().urlWhiteListExceptionRead();
        } catch (RemoteException unused) {
            return new ArrayList();
        }
    }

    /* renamed from: R */
    public boolean m2552R(List<String> list) {
        try {
            return C1423y4.m2956C().urlWhiteListExceptionWrite(list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    /* renamed from: S */
    public List<String> m2553S() {
        try {
            return C1423y4.m2956C().getUrlWhiteList();
        } catch (RemoteException unused) {
            return new ArrayList();
        }
    }

    /* renamed from: T */
    public boolean m2554T(List<String> list) {
        try {
            return C1423y4.m2956C().addUrlWhiteList(list);
        } catch (RemoteException unused) {
            return true;
        }
    }

    /* renamed from: a */
    public void m2555a() {
        try {
            C1423y4.m2956C().activeDeviceAdmin();
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: b */
    public List<String> m2556b() {
        try {
            return C1423y4.m2956C().getAppWhiteList();
        } catch (RemoteException unused) {
            return new ArrayList();
        }
    }

    /* renamed from: c */
    public boolean m2557c(List<String> list) {
        try {
            return C1423y4.m2956C().addAppWhiteList(list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    /* renamed from: d */
    public void m2558d(String str) {
        try {
            C1423y4.m2956C().setApplicationEnabled(str, false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: e */
    public void m2559e() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(2, false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: f */
    public void m2560f() {
        try {
            C1423y4.m2956C().setBluetoothDisabled(true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: g */
    public void m2561g() {
        try {
            C1423y4.m2956C().setCameraDisabled(true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: h */
    public void m2562h() {
        try {
            C1423y4.m2956C().turnOnGPS(false);
            C1423y4.m2956C().setGPSDisabled(true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: i */
    public void m2563i() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(1, false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: j */
    public void m2564j() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(6, false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: k */
    public void m2565k() {
        try {
            C1423y4.m2956C().setMobileDataDisabled(false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: l */
    public void m2566l() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(3, false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: m */
    public void m2567m() {
        try {
            C1423y4.m2956C().setScreenCapDisabled(true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: n */
    public void m2568n() {
        try {
            C1423y4.m2956C().setSdcardDisabled(true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: o */
    public void m2569o() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(5, false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: p */
    public void m2570p() {
        try {
            C1423y4.m2956C().setVoiceDisabled(true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: q */
    public void m2571q() {
        try {
            C1423y4.m2956C().setUSBDataDisabled(true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: r */
    public void m2572r() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(4, false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: s */
    public void m2573s(String str) {
        try {
            C1423y4.m2956C().setApplicationEnabled(str, true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: t */
    public void m2574t() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(2, true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: u */
    public void m2575u() {
        try {
            C1423y4.m2956C().setBluetoothDisabled(false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: v */
    public void m2576v() {
        try {
            C1423y4.m2956C().setCameraDisabled(false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: w */
    public void m2577w() {
        try {
            C1423y4.m2956C().turnOnGPS(true);
            C1423y4.m2956C().setGPSDisabled(false);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: x */
    public void m2578x() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(1, true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: y */
    public void m2579y() {
        try {
            C1423y4.m2956C().setKeyOrSettingsRestriction(6, true);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: z */
    public void m2580z(boolean z) {
        try {
            C1423y4.m2956C().enableMDM(z);
        } catch (RemoteException unused) {
        }
    }
}
