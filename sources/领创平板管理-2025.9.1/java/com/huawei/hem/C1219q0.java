package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import anet.channel.entity.ConnType;
import com.aliyun.ams.emas.push.AgooMessageReceiver;
import com.aliyun.ams.emas.push.notification.CPushMessage;
import com.amap.apis.utils.core.DeviceInfo;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.p027db.model.ItemAppDao;
import com.loc.C1859t;
import com.loc.C1862w;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.utl.ALog;
import java.io.ByteArrayOutputStream;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.android.agoo.common.Config;
import org.android.agoo.message.MessageService;
import org.greenrobot.greendao.query.WhereCondition;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.q0 */
/* loaded from: classes.dex */
public class C1219q0 {
    /* renamed from: A */
    public static List<String> m2499A() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.android.mms");
        arrayList.add("com.android.mms.service");
        arrayList.add("com.android.messaging");
        arrayList.add("com.hihonor.mms");
        return arrayList;
    }

    /* renamed from: B */
    public static List<String> m2500B() {
        ArrayList arrayListM1772q = C0948f6.m1772q("com.android.contacts", "com.android.dialer", "com.huawei.contacts", "com.tct.dialer", "com.hihonor.contacts");
        arrayListM1772q.add("com.samsung.android.app.contacts");
        return arrayListM1772q;
    }

    /* renamed from: C */
    public static List<String> m2501C() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.huawei.phoneservice");
        arrayList.add("com.huawei.hwid");
        return arrayList;
    }

    /* renamed from: D */
    public static List<String> m2502D() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.android.launcher3");
        arrayList.add("com.ndwill.swd.appstore");
        if (!TextUtils.isEmpty("com.zykj.manage") && !TextUtils.isEmpty("com.zykj.manage")) {
            arrayList.add("com.zykj.manage");
            return arrayList;
        }
        if (!TextUtils.isEmpty("com.zykj.manage")) {
            arrayList.add("com.zykj.manage");
        }
        if (!TextUtils.isEmpty("com.zykj.manage")) {
            arrayList.add("com.zykj.manage");
        }
        return arrayList;
    }

    /* renamed from: E */
    public static List<String> m2503E() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.android.settings");
        return arrayList;
    }

    /* renamed from: F */
    public static List<String> m2504F() {
        ArrayList arrayList = new ArrayList();
        List<ItemApp> listLoadAll = C1297t3.m2715a().m2717c().loadAll();
        if (AbstractC1102l9.m2273N(listLoadAll)) {
            return arrayList;
        }
        Iterator<ItemApp> it = listLoadAll.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getPackagename());
        }
        return arrayList;
    }

    /* renamed from: a */
    public static String m2505a() {
        try {
            String strValueOf = String.valueOf(System.currentTimeMillis());
            String str = C0917e1.m1635a() ? "1" : MessageService.MSG_DB_READY_REPORT;
            int length = strValueOf.length();
            return strValueOf.substring(0, length - 2) + str + strValueOf.substring(length - 1);
        } catch (Throwable th) {
            C1859t.m5312a(th, "CI", "TS");
            return null;
        }
    }

    /* renamed from: b */
    public static String m2506b(Context context, String str, String str2) {
        try {
            return m2507c(C0917e1.m1640f(context) + ":" + str.substring(0, str.length() - 3) + ":" + str2);
        } catch (Throwable th) {
            C1859t.m5312a(th, "CI", "Sco");
            return null;
        }
    }

    /* renamed from: c */
    public static String m2507c(String str) {
        byte[] bArrM2520p;
        if (str == null) {
            return null;
        }
        try {
            bArrM2520p = m2520p(str);
        } catch (Throwable th) {
            C1859t.m5312a(th, "MD5", "gmb");
            bArrM2520p = new byte[0];
        }
        return C1094l1.m2257z(bArrM2520p);
    }

    /* renamed from: d */
    public static String m2508d(byte[] bArr) {
        try {
            return C1094l1.m2230C(m2516l(bArr, C1094l1.m2251t("ETUQ1")));
        } catch (Throwable th) {
            C1859t.m5312a(th, "ut", ConnType.H2S);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.net.Proxy$Type] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* renamed from: e */
    public static Proxy m2509e(Context context) {
        Proxy proxy;
        String str = "pu";
        Proxy proxy2 = null;
        try {
            URI uri = new URI("http://restsdk.amap.com");
            if (DeviceInfo.m1087u(context) == 0) {
                try {
                    List<Proxy> listSelect = ProxySelector.getDefault().select(uri);
                    if (listSelect != null && !listSelect.isEmpty() && (proxy = listSelect.get(0)) != null) {
                        Proxy.Type type = proxy.type();
                        str = Proxy.Type.DIRECT;
                        if (type != str) {
                            proxy2 = proxy;
                        }
                    }
                } catch (Throwable th) {
                    C1862w.m5333b(th, "pu", "gpsc");
                }
            }
        } catch (Throwable th2) {
            C1862w.m5333b(th2, str, "gp");
        }
        return proxy2;
    }

    /* renamed from: f */
    public static void m2510f(Context context, Intent intent, InterfaceC1093l0 interfaceC1093l0) {
        try {
            String stringExtra = intent.getStringExtra(AgooMessageReceiver.MESSAGE_ID);
            String stringExtra2 = intent.getStringExtra("title");
            String stringExtra3 = intent.getStringExtra(AgooMessageReceiver.SUMMARY);
            String stringExtra4 = intent.getStringExtra(AgooMessageReceiver.EXTRA_MAP);
            int intExtra = intent.getIntExtra(AgooMessageReceiver.NOTIFICATION_OPEN_TYPE, 1);
            C1344v0.f3910a.mo664d("notification opened " + stringExtra);
            interfaceC1093l0.onNotificationOpened(context, stringExtra2, stringExtra3, stringExtra4, intExtra);
        } catch (Throwable th) {
            ALog.m5727e("AgooPushHandler", "Handle notification open action failed.", th, new Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x010d A[Catch: all -> 0x0128, TryCatch #0 {all -> 0x0128, blocks: (B:3:0x000b, B:5:0x0017, B:7:0x001f, B:9:0x0037, B:12:0x0040, B:17:0x005f, B:18:0x008d, B:20:0x0093, B:21:0x00bf, B:34:0x010d, B:36:0x0115, B:24:0x00dc, B:38:0x0120, B:15:0x004c, B:16:0x0053), top: B:43:0x000b, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115 A[Catch: all -> 0x0128, TryCatch #0 {all -> 0x0128, blocks: (B:3:0x000b, B:5:0x0017, B:7:0x001f, B:9:0x0037, B:12:0x0040, B:17:0x005f, B:18:0x008d, B:20:0x0093, B:21:0x00bf, B:34:0x010d, B:36:0x0115, B:24:0x00dc, B:38:0x0120, B:15:0x004c, B:16:0x0053), top: B:43:0x000b, inners: #1, #2 }] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2511g(android.content.Context r16, android.content.Intent r17, com.huawei.hem.InterfaceC1119m0 r18, com.huawei.hem.InterfaceC1093l0 r19) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1219q0.m2511g(android.content.Context, android.content.Intent, com.huawei.hem.m0, com.huawei.hem.l0):void");
    }

    /* renamed from: h */
    public static void m2512h(Context context, InterfaceC1119m0 interfaceC1119m0, InterfaceC1093l0 interfaceC1093l0, String str, Map<String, String> map, int i) {
        C0839b1 c0839b1 = new C0839b1();
        if (i == 1) {
            try {
                String strM5830b = Config.m5830b(context);
                C1419y0 c1419y0M1386d = c0839b1.m1386d(map, strM5830b, str);
                if (c1419y0M1386d == null) {
                    ALog.m5728e("AgooPushHandler", "Notify title is null or server push data Error appId =  " + strM5830b, new Object[0]);
                    return;
                }
                String str2 = c1419y0M1386d.f4105b;
                InterfaceC1144n0 interfaceC1144n0 = C1344v0.f3914e;
                if (interfaceC1144n0 != null) {
                    interfaceC1144n0.reportPushArrive(context, str2, i);
                }
                if (interfaceC1119m0.showNotificationNow(context, map)) {
                    m2513i(context, interfaceC1119m0, map, new C1294t0(c1419y0M1386d, c0839b1, context, interfaceC1093l0));
                    return;
                } else {
                    C1344v0.f3910a.mo669i("do not build notification as user request");
                    interfaceC1093l0.onNotificationReceivedWithoutShow(context, c1419y0M1386d.f4107d, c1419y0M1386d.f4108e, c1419y0M1386d.f4104a, c1419y0M1386d.f4112i, c1419y0M1386d.f4110g, c1419y0M1386d.f4109f);
                    return;
                }
            } catch (Throwable th) {
                ALog.m5727e("AgooPushHandler", "Notify message error:", th, new Object[0]);
                return;
            }
        }
        if (i != 2) {
            ALog.m5728e("AgooPushHandler", "Wrong message Type Define!", new Object[0]);
            return;
        }
        try {
            CPushMessage cPushMessageM1385c = c0839b1.m1385c(map, Config.m5830b(context), str);
            if (cPushMessageM1385c != null) {
                String str3 = cPushMessageM1385c.f1447a;
                InterfaceC1144n0 interfaceC1144n02 = C1344v0.f3914e;
                if (interfaceC1144n02 != null) {
                    interfaceC1144n02.reportPushArrive(context, str3, i);
                }
                try {
                    ALog.m5729i("AgooPushHandler", "messageId=" + cPushMessageM1385c.f1447a + ";appId=" + cPushMessageM1385c.f1448b + ";messageType=msg", null, 1);
                } catch (Throwable th2) {
                    ALog.m5727e("AgooPushHandler", "ut log error", th2, new Object[0]);
                }
                interfaceC1093l0.onMessageArrived(context, cPushMessageM1385c);
            }
        } catch (Throwable th3) {
            ALog.m5727e("AgooPushHandler", "Custom message parse error:", th3, new Object[0]);
        }
    }

    /* renamed from: i */
    public static void m2513i(Context context, InterfaceC1119m0 interfaceC1119m0, Map<String, String> map, C1294t0 c1294t0) {
        String str = map.get("image");
        String str2 = map.get("big_picture");
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            c1294t0.m2711a(interfaceC1119m0.customNotificationUI(context, map));
        } else {
            ThreadPoolExecutorFactory.execute(new RunnableC1244r0(interfaceC1119m0, context, map, Looper.myLooper() != null ? new Handler(Looper.myLooper()) : null, c1294t0));
        }
    }

    /* renamed from: j */
    public static void m2514j(ByteArrayOutputStream byteArrayOutputStream, String str) {
        if (TextUtils.isEmpty(str)) {
            C1094l1.m2240i(byteArrayOutputStream, (byte) 0, new byte[0]);
        } else {
            C1094l1.m2240i(byteArrayOutputStream, str.getBytes().length > 255 ? (byte) -1 : (byte) str.getBytes().length, C1094l1.m2245n(str));
        }
    }

    /* renamed from: k */
    public static byte[] m2515k(C0969g1 c0969g1) {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArrM1931b;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                m2514j(byteArrayOutputStream, c0969g1.f2719a);
                m2514j(byteArrayOutputStream, c0969g1.f2720b);
                m2514j(byteArrayOutputStream, c0969g1.f2721c);
                m2514j(byteArrayOutputStream, c0969g1.f2722d);
                m2514j(byteArrayOutputStream, c0969g1.f2723e);
                m2514j(byteArrayOutputStream, c0969g1.f2724f);
                m2514j(byteArrayOutputStream, c0969g1.f2725g);
                m2514j(byteArrayOutputStream, c0969g1.f2726h);
                m2514j(byteArrayOutputStream, c0969g1.f2727i);
                m2514j(byteArrayOutputStream, c0969g1.f2728j);
                m2514j(byteArrayOutputStream, c0969g1.f2729k);
                m2514j(byteArrayOutputStream, c0969g1.f2730l);
                m2514j(byteArrayOutputStream, c0969g1.f2731m);
                m2514j(byteArrayOutputStream, c0969g1.f2732n);
                m2514j(byteArrayOutputStream, c0969g1.f2733o);
                m2514j(byteArrayOutputStream, c0969g1.f2734p);
                m2514j(byteArrayOutputStream, c0969g1.f2735q);
                m2514j(byteArrayOutputStream, c0969g1.f2736r);
                m2514j(byteArrayOutputStream, c0969g1.f2737s);
                m2514j(byteArrayOutputStream, c0969g1.f2738t);
                m2514j(byteArrayOutputStream, null);
                m2514j(byteArrayOutputStream, null);
                m2514j(byteArrayOutputStream, c0969g1.f2739u);
                m2514j(byteArrayOutputStream, c0969g1.f2740v);
                m2514j(byteArrayOutputStream, c0969g1.f2741w);
                m2514j(byteArrayOutputStream, c0969g1.f2742x);
                byte[] bArrM2250s = C1094l1.m2250s(byteArrayOutputStream.toByteArray());
                PublicKey publicKeyM2254w = C1094l1.m2254w();
                if (bArrM2250s.length > 117) {
                    byte[] bArr = new byte[117];
                    System.arraycopy(bArrM2250s, 0, bArr, 0, 117);
                    byte[] bArrM1931b2 = C0994h1.m1931b(bArr, publicKeyM2254w);
                    bArrM1931b = new byte[(bArrM2250s.length + 128) - 117];
                    System.arraycopy(bArrM1931b2, 0, bArrM1931b, 0, 128);
                    System.arraycopy(bArrM2250s, 117, bArrM1931b, 128, bArrM2250s.length - 117);
                } else {
                    bArrM1931b = C0994h1.m1931b(bArrM2250s, publicKeyM2254w);
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return bArrM1931b;
            } catch (Throwable th2) {
                th = th2;
                try {
                    C1859t.m5312a(th, "CI", "gzx");
                    return null;
                } finally {
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
        }
    }

    /* renamed from: l */
    public static byte[] m2516l(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Throwable th) {
            C1859t.m5312a(th, "MD5", "gmb");
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x02d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.huawei.hem.C0969g1 m2517m(android.content.Context r12, boolean r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 881
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1219q0.m2517m(android.content.Context, boolean, boolean):com.huawei.hem.g1");
    }

    /* renamed from: n */
    public static void m2518n(Context context, Intent intent, InterfaceC1093l0 interfaceC1093l0) {
        try {
            String stringExtra = intent.getStringExtra(AgooMessageReceiver.MESSAGE_ID);
            String stringExtra2 = intent.getStringExtra("title");
            String stringExtra3 = intent.getStringExtra(AgooMessageReceiver.SUMMARY);
            String stringExtra4 = intent.getStringExtra(AgooMessageReceiver.EXTRA_MAP);
            int intExtra = intent.getIntExtra(AgooMessageReceiver.NOTIFICATION_OPEN_TYPE, 1);
            C1344v0.f3910a.mo664d("notification deleted " + stringExtra);
            interfaceC1093l0.onNotificationRemoved(context, stringExtra2, stringExtra3, stringExtra4, intExtra, stringExtra);
        } catch (Throwable th) {
            ALog.m5727e("AgooPushHandler", "Handle notification delete action failed.", th, new Object[0]);
        }
    }

    /* renamed from: o */
    public static void m2519o(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            C0850bc.m1403m("disable app is null");
            return;
        }
        List<String> listM2502D = m2502D();
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!((ArrayList) listM2502D).contains(str)) {
                arrayList.add(str);
            }
        }
        C0850bc.f2294f.mo1326k0(arrayList);
    }

    /* renamed from: p */
    public static byte[] m2520p(String str) throws NoSuchAlgorithmException {
        if (str == null) {
            return null;
        }
        MessageDigest messageDigest = MessageDigest.getInstance(C1094l1.m2251t("ETUQ1"));
        messageDigest.update(C1094l1.m2245n(str));
        return messageDigest.digest();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00fd  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2521q(android.content.Context r5, java.lang.String r6, int r7) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1219q0.m2521q(android.content.Context, java.lang.String, int):void");
    }

    /* renamed from: r */
    public static String m2522r(String str) {
        return (C1423y4.m3003x() || C0878ce.m1514g(str)) ? "com.android.launcher3.LauncherNew" : "LauncherNew";
    }

    /* renamed from: s */
    public static List<String> m2523s() {
        List<ItemApp> list = C1297t3.m2715a().m2717c().queryBuilder().where(ItemAppDao.Properties.IsTrust.m5870eq(1), new WhereCondition[0]).list();
        ArrayList arrayList = new ArrayList();
        if (!AbstractC1102l9.m2273N(list)) {
            Iterator<ItemApp> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getPackagename());
            }
        }
        return arrayList;
    }

    /* renamed from: t */
    public static boolean m2524t() {
        if (!C0878ce.m1521n() && !C0878ce.m1519l() && !C0878ce.m1510c()) {
            if (!(C0904de.m1598o() ? true : C0878ce.m1520m(C0904de.m1589f())) && !C0878ce.m1522o()) {
                String strM1589f = C0904de.m1589f();
                if (!(C0878ce.m1516i(strM1589f) || C0878ce.m1517j(strM1589f)) && !C0878ce.m1517j(C0904de.m1589f())) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: u */
    public static boolean m2525u() {
        if (C0878ce.m1521n() || C0878ce.m1519l() || C0878ce.m1510c()) {
            return true;
        }
        return (C0904de.m1598o() ? true : C0878ce.m1520m(C0904de.m1589f())) || C0878ce.m1522o();
    }

    /* renamed from: v */
    public static List<String> m2526v() {
        return C0948f6.m1772q("com.huawei.calendar", "com.android.calendar", "com.ebensz.enote.calendar", "com.hihonor.calendar", "com.samsung.android.calendar");
    }

    /* renamed from: w */
    public static List<String> m2527w() {
        ArrayList arrayListM1772q = C0948f6.m1772q("com.mediatek.camera", "com.huawei.camera", "org.codeaurora.snapcam", "com.android.camera2", "com.tcl.camera");
        C0948f6.m1749G(arrayListM1772q, "com.sec.android.app.camera", "com.dtab.camera", "com.hihonor.camera", "com.lenovotab.camera");
        return arrayListM1772q;
    }

    /* renamed from: x */
    public static List<String> m2528x() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.android.deskclock");
        arrayList.add("com.huawei.deskclock");
        arrayList.add("com.hihonor.deskclock");
        arrayList.add("com.sec.android.app.clockpackage");
        return arrayList;
    }

    /* renamed from: y */
    public static List<String> m2529y() {
        ArrayList arrayListM1772q = C0948f6.m1772q("org.codeaurora.gallery", "com.android.gallery3d", "com.huawei.photos", "com.tclhz.gallery", "com.hihonor.photos");
        arrayListM1772q.add("com.sec.android.gallery3d");
        arrayListM1772q.add("com.zui.gallery");
        if (C0878ce.m1525r()) {
            arrayListM1772q.add("com.android.gallery3d.app.GalleryActivity");
        }
        return arrayListM1772q;
    }

    /* renamed from: z */
    public static void m2530z() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.android.launcher3");
        arrayList.add("com.ndwill.swd.appstore");
        ArrayList arrayList2 = new ArrayList();
        if (!AbstractC1102l9.m2273N(arrayList2)) {
            arrayList.addAll(arrayList2);
        }
        C0850bc.f2294f.mo2070n0(arrayList);
    }
}
