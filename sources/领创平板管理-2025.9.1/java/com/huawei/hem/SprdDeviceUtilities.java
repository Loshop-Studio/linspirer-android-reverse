package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.provider.Settings;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: Utils.java */
/* renamed from: com.huawei.hem.i6 */
/* loaded from: classes.dex */
public class SprdDeviceUtilities {

    /* renamed from: a */
    public Context f2893a;

    public SprdDeviceUtilities(Context context) {
        this.f2893a = context;
    }

    /* renamed from: a */
    public Bitmap m2021a() throws InterruptedException {
        ComponentName componentName = new ComponentName("com.android.shell", "com.android.shell.BugreportProgressService");
        File file = new File("/storage/emulated/0/Android/");
        if (!file.exists()) {
            file.mkdir();
        }
        Intent intent = new Intent();
        intent.setComponent(componentName);
        intent.putExtra("path", "/storage/emulated/0/Android/0.png");
        this.f2893a.startService(intent);
        try {
            Thread.sleep(1800L);
            File file2 = new File("/storage/emulated/0/Android/0.png");
            if (file2.exists()) {
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file2.getAbsolutePath());
                file2.delete();
                return bitmapDecodeFile;
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return null;
    }

    /* renamed from: b */
    public void m2022b(String str) {
        Intent intent = new Intent("grant.all.permission");
        intent.putExtra("pkg_name", str);
        intent.setPackage("com.android.permissioncontroller");
        this.f2893a.sendBroadcast(intent);
        Intent intent2 = new Intent("allow.draw.overlay");
        intent2.putExtra("pkg_name", str);
        intent2.putExtra("allow", true);
        intent2.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent2);
    }

    /* renamed from: c */
    public String m2023c() {
        String str = Settings.Global.getString(this.f2893a.getContentResolver(), "ip.whitelist") + "," + Settings.Global.getString(this.f2893a.getContentResolver(), "url.whitelist");
        if (str == null || "".equals(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        HashSet hashSet = new HashSet(Arrays.asList(str.split(",")));
        hashSet.remove("null");
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            sb.append(",");
        }
        return sb.length() > 0 ? sb.toString().substring(0, sb.length() - 1) : "";
    }

    /* renamed from: d */
    public void m2024d(String str, boolean z) {
        Intent intent = new Intent();
        if (z) {
            intent.setAction("disable.application");
        } else {
            intent.setAction("enable.application");
        }
        intent.putExtra("pkg_name", str);
        intent.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent);
    }

    /* renamed from: e */
    public void m2025e(boolean z) {
        Intent intent = new Intent();
        if (z) {
            intent.setAction("disable.bluetooth.module");
        } else {
            intent.setAction("enable.bluetooth.module");
        }
        intent.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent);
    }

    /* renamed from: f */
    public void m2026f(boolean z) {
        Intent intent = new Intent(z ? "disable.sim.card.data" : "enable.sim.card.data");
        intent.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent);
    }

    /* renamed from: g */
    public void m2027g(boolean z) {
        Intent intent = new Intent();
        if (z) {
            intent.setAction("disable.gps");
        } else {
            intent.setAction("enable.gps");
        }
        intent.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent);
    }

    /* renamed from: h */
    public void m2028h(boolean z) {
        Intent intent = new Intent();
        if (z) {
            intent.setAction("disable.camera.main");
        } else {
            intent.setAction("enable.camera.main");
        }
        intent.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent);
    }

    /* renamed from: i */
    public void m2029i(boolean z) {
        Intent intent = new Intent();
        if (z) {
            intent.setAction("disable.otg");
        } else {
            intent.setAction("enable.otg");
        }
        intent.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent);
    }

    /* renamed from: j */
    public void m2030j(boolean z) {
        Intent intent = new Intent();
        if (z) {
            intent.setAction("disable.power.long.press");
        } else {
            intent.setAction("enable.power.long.press");
        }
        intent.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent);
    }

    /* renamed from: k */
    public void m2031k(boolean z) {
        Intent intent = new Intent();
        if (z) {
            intent.setAction("disable.power.short.press");
        } else {
            intent.setAction("enable.power.short.press");
        }
        intent.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent);
    }

    /* renamed from: l */
    public void m2032l(boolean z) {
        Intent intent = new Intent();
        if (z) {
            intent.setAction("disable.tf.module");
        } else {
            intent.setAction("enable.tf.module");
        }
        intent.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent);
    }

    /* renamed from: m */
    public void m2033m(int i) {
        Intent intent = new Intent("set.usb.data.mode");
        intent.setPackage("com.android.inputdevices");
        intent.putExtra("mode_value", i);
        this.f2893a.sendBroadcast(intent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2034n(boolean r8) {
        /*
            r7 = this;
            java.lang.String r0 = "mtp"
            if (r8 == 0) goto L7
            java.lang.String r1 = "none"
            goto L8
        L7:
            r1 = r0
        L8:
            int r2 = r1.hashCode()
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            switch(r2) {
                case 108457: goto L32;
                case 111340: goto L28;
                case 3351329: goto L1e;
                case 108657874: goto L14;
                default: goto L13;
            }
        L13:
            goto L3a
        L14:
            java.lang.String r0 = "rndis"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L3a
            r0 = r6
            goto L3b
        L1e:
            java.lang.String r0 = "midi"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L3a
            r0 = r5
            goto L3b
        L28:
            java.lang.String r0 = "ptp"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L3a
            r0 = r4
            goto L3b
        L32:
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L3a
            r0 = r3
            goto L3b
        L3a:
            r0 = -1
        L3b:
            if (r0 == 0) goto L54
            if (r0 == r6) goto L50
            if (r0 == r5) goto L4c
            if (r0 == r4) goto L47
            r7.m2033m(r3)
            goto L57
        L47:
            r0 = 4
            r7.m2033m(r0)
            goto L57
        L4c:
            r7.m2033m(r4)
            goto L57
        L50:
            r7.m2033m(r5)
            goto L57
        L54:
            r7.m2033m(r6)
        L57:
            android.content.Intent r0 = new android.content.Intent
            r0.<init>()
            if (r8 == 0) goto L64
            java.lang.String r8 = "disable.usb.debug"
            r0.setAction(r8)
            goto L69
        L64:
            java.lang.String r8 = "enable.usb.debug"
            r0.setAction(r8)
        L69:
            java.lang.String r8 = "com.android.inputdevices"
            r0.setPackage(r8)
            android.content.Context r8 = r7.f2893a
            r8.sendBroadcast(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1024i6.m2034n(boolean):void");
    }

    /* renamed from: o */
    public void m2035o(List<String> list) {
        ArrayList<String> arrayList = new ArrayList<>(list);
        Intent intent = new Intent();
        intent.setPackage("com.android.inputdevices");
        if (arrayList.size() > 0) {
            intent.setAction("exec.ipset.cmd");
            intent.putStringArrayListExtra("cmd_list", arrayList);
            this.f2893a.sendBroadcast(intent);
        }
    }

    /* renamed from: p */
    public void m2036p(boolean z) {
        Intent intent = new Intent();
        if (z) {
            intent.setAction("disable.volume.press");
        } else {
            intent.setAction("enable.volume.press");
        }
        intent.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent);
    }

    /* renamed from: q */
    public void m2037q(boolean z) {
        Intent intent = new Intent(z ? "hide.wifi.advanced" : "show.wifi.advanced");
        intent.setPackage("com.android.inputdevices");
        this.f2893a.sendBroadcast(intent);
    }
}
