package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: SeewoImpl.java */
/* renamed from: com.huawei.hem.ed */
/* loaded from: classes.dex */
public class SeewoImpl extends AndroidImpl {

    /* renamed from: b */
    public static SeewoImpl f2541b = new SeewoImpl();

    /* renamed from: c */
    public static Context f2542c;

    /* renamed from: d */
    public static C1361vh f2543d;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC0934ei runnableC0934ei = new RunnableC0934ei(c1361vh, str);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC0934ei);
            } else {
                runnableC0934ei.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,actionSilentInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        return null;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add("iptables -F app");
            if (!AbstractC1102l9.m2273N(list)) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    int iM1396f = LTKDateUtil.m1396f(f2542c, it.next());
                    if (iM1396f != -1) {
                        arrayList.add("iptables -A app -m owner --uid-owner " + iM1396f + " -j ACCEPT");
                    }
                }
            }
            f2543d.m2877f(arrayList2);
            f2543d.m2877f(arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,accessAppWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        ArrayList arrayList = new ArrayList();
        try {
            List<String> listM2873a = f2543d.m2873a();
            if (!AbstractC1102l9.m2273N(listM2873a)) {
                arrayList.addAll(listM2873a);
            }
            LTKDateUtil.m1403m("SeewoImplread app white list content:" + arrayList.toString());
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,getAppWhiteList-error:"));
        }
        return arrayList;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1061ji runnableC1061ji = new RunnableC1061ji(c1361vh, j);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1061ji);
            } else {
                runnableC1061ji.run();
            }
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,setSystemTime-error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1036ii runnableC1036ii = new RunnableC1036ii(c1361vh, str);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1036ii);
            } else {
                runnableC1036ii.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,systemInit-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC0960fi runnableC0960fi = new RunnableC0960fi(c1361vh, str);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC0960fi);
            } else {
                runnableC0960fi.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,actionSilentUnInstall-error:"));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0062  */
    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo1316V(java.util.List<java.lang.String> r13) {
        /*
            Method dump skipped, instructions count: 559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0929ed.mo1316V(java.util.List):boolean");
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        try {
            return !TextUtils.isEmpty(f2543d.m2876e()) ? f2543d.m2876e() : "";
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,getWifiMacAddress-error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC0856bi runnableC0856bi = new RunnableC0856bi(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC0856bi);
            } else {
                runnableC0856bi.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,showWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1137mi runnableC1137mi = new RunnableC1137mi(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1137mi);
            } else {
                runnableC1137mi.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,enableSdCard-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1286sh runnableC1286sh = new RunnableC1286sh(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1286sh);
            } else {
                runnableC1286sh.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,disableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1262ri runnableC1262ri = new RunnableC1262ri(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1262ri);
            } else {
                runnableC1262ri.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,disableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1312ti runnableC1312ti = new RunnableC1312ti(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1312ti);
            } else {
                runnableC1312ti.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,disableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1236qh runnableC1236qh = new RunnableC1236qh(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1236qh);
            } else {
                runnableC1236qh.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,disableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC0908di runnableC0908di = new RunnableC0908di(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC0908di);
            } else {
                runnableC0908di.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,disableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableHome();
        disableBack();
        disableRecent();
        disableVolume();
        disableShortPressPower();
        disableLongPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1111li runnableC1111li = new RunnableC1111li(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1111li);
            } else {
                runnableC1111li.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,disableOTG-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1336uh runnableC1336uh = new RunnableC1336uh(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1336uh);
            } else {
                runnableC1336uh.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,disableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1461zh runnableC1461zh = new RunnableC1461zh(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1461zh);
            } else {
                runnableC1461zh.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,disableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            LTKDateUtil.m1403m("SeewoImpl disable usb");
            C1361vh c1361vh = f2543d;
            RunnableC1187oi runnableC1187oi = new RunnableC1187oi(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1187oi);
            } else {
                runnableC1187oi.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,disableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1411xh runnableC1411xh = new RunnableC1411xh(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1411xh);
            } else {
                runnableC1411xh.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,disableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1186oh runnableC1186oh = new RunnableC1186oh(c1361vh, str);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1186oh);
            } else {
                runnableC1186oh.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,actionDisableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1261rh runnableC1261rh = new RunnableC1261rh(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1261rh);
            } else {
                runnableC1261rh.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,enableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1237qi runnableC1237qi = new RunnableC1237qi(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1237qi);
            } else {
                runnableC1237qi.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,enableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1287si runnableC1287si = new RunnableC1287si(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1287si);
            } else {
                runnableC1287si.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,enableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1211ph runnableC1211ph = new RunnableC1211ph(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1211ph);
            } else {
                runnableC1211ph.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,enableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC0882ci runnableC0882ci = new RunnableC0882ci(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC0882ci);
            } else {
                runnableC0882ci.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,enableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        enableHome();
        enableBack();
        enableRecent();
        enableVolume();
        enableShortPressPower();
        enableLongPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1086ki runnableC1086ki = new RunnableC1086ki(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1086ki);
            } else {
                runnableC1086ki.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,enableOTG-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1311th runnableC1311th = new RunnableC1311th(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1311th);
            } else {
                runnableC1311th.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,enableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1436yh runnableC1436yh = new RunnableC1436yh(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1436yh);
            } else {
                runnableC1436yh.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,enableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            LTKDateUtil.m1403m("SeewoImpl enable usb");
            C1361vh c1361vh = f2543d;
            RunnableC0986gi runnableC0986gi = new RunnableC0986gi(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC0986gi);
            } else {
                runnableC0986gi.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,enableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1386wh runnableC1386wh = new RunnableC1386wh(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1386wh);
            } else {
                runnableC1386wh.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,enableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1212pi runnableC1212pi = new RunnableC1212pi(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1212pi);
            } else {
                runnableC1212pi.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,actionShutdown-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC0830ai runnableC0830ai = new RunnableC0830ai(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC0830ai);
            } else {
                runnableC0830ai.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,hideWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            f2543d.m2874b(list);
            return false;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,setAppWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1011hi runnableC1011hi = new RunnableC1011hi(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1011hi);
            } else {
                runnableC1011hi.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,actionResetFactory-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1161nh runnableC1161nh = new RunnableC1161nh(c1361vh, str);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1161nh);
            } else {
                runnableC1161nh.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,actionEnableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            C1361vh c1361vh = f2543d;
            RunnableC1162ni runnableC1162ni = new RunnableC1162ni(c1361vh);
            if (c1361vh.f3962b == null) {
                c1361vh.f3963c.add(runnableC1162ni);
            } else {
                runnableC1162ni.run();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("SeewoImpl,disableSdCard-error:"));
        }
    }
}
