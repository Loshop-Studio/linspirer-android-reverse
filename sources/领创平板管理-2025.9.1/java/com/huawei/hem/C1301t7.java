package com.huawei.hem;

import android.os.Process;
import android.util.Log;

/* renamed from: com.huawei.hem.t7 */
/* loaded from: classes.dex */
public final class C1301t7 {

    /* renamed from: a */
    public String f3771a = "SDK.";

    /* renamed from: b */
    public int f3772b = 4;

    /* renamed from: c */
    public boolean f3773c = false;

    /* renamed from: a */
    public final void m2723a(int i, String str, String str2) {
        if (this.f3773c && i >= this.f3772b) {
            String strM1762g = CompilerOutline.m1762g(new StringBuilder(), this.f3771a, str);
            StringBuilder sb = new StringBuilder();
            System.currentTimeMillis();
            Thread.currentThread().getName();
            Process.myPid();
            sb.append((Object) str2);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(' ');
            sb2.append((CharSequence) sb);
            String string = sb2.toString();
            if (string == null) {
                return;
            }
            if (i == 3) {
                Log.d(strM1762g, string);
                return;
            }
            if (i != 4) {
                if (i == 5) {
                    Log.w(strM1762g, string);
                    return;
                } else if (i == 6) {
                    Log.e(strM1762g, string);
                    return;
                }
            }
            Log.i(strM1762g, string);
        }
    }
}
