package com.alibaba.sdk.android.push.p025g;

import android.content.Context;
import anetwork.channel.util.RequestConstant;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.ams.common.p007a.C0494a;
import com.alibaba.sdk.android.ams.common.p008b.C0498c;
import com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b;
import com.alibaba.sdk.android.ams.common.util.StringUtil;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.push.CommonCallback;
import com.alibaba.sdk.android.push.common.p018a.C0560d;
import com.alibaba.sdk.android.push.common.util.C0567b;
import com.alibaba.sdk.android.push.common.util.p019a.EnumC0566d;
import com.alibaba.sdk.android.push.p016b.C0552c;
import com.alibaba.sdk.android.push.p016b.C0553d;
import com.alibaba.sdk.android.push.p021d.C0570a;
import com.alibaba.sdk.android.push.p025g.C0581f;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.common.Constants;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import org.android.agoo.message.MessageService;

/* renamed from: com.alibaba.sdk.android.push.g.g */
/* loaded from: classes.dex */
public class C0582g {

    /* renamed from: a */
    public static AmsLogger f1248a = AmsLogger.getLogger("MPS:VipRequestManager");

    /* renamed from: b */
    public static C0582g f1249b = null;

    /* renamed from: c */
    public static Context f1250c;

    /* renamed from: d */
    public C0581f f1251d = new C0581f();

    /* renamed from: a */
    public static C0582g m831a() {
        if (f1249b == null) {
            f1249b = new C0582g();
        }
        return f1249b;
    }

    /* renamed from: a */
    private String m832a(int i) {
        C0581f c0581f = this.f1251d;
        C0581f.a aVarM827a = c0581f != null ? c0581f.m827a(i) : null;
        if (aVarM827a == null) {
            return null;
        }
        return aVarM827a.m829a();
    }

    /* renamed from: a */
    private Map<String, String> m833a(String str, String str2, String[] strArr, Map<String, String> map) throws C0552c {
        String str3;
        String strM850f;
        String str4 = "deviceId";
        if (str.equals("deviceId")) {
            strM850f = m849e();
            if (StringUtil.isEmpty(strM850f)) {
                throw new C0552c("deviceId is empty.");
            }
        } else {
            str4 = "account";
            if (!str.equals("account")) {
                if (str.equals("alias")) {
                    if (StringUtil.isEmpty(str2)) {
                        throw new C0552c("alias is empty");
                    }
                    map.put("alias", str2);
                } else if (str.equals("tags")) {
                    if (strArr == null) {
                        throw new C0552c("tags array is empty");
                    }
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < strArr.length; i++) {
                        if (i != strArr.length - 1 && !StringUtil.isEmpty(strArr[i])) {
                            sb.append(strArr[i]);
                            str3 = ",";
                        } else if (i == strArr.length - 1 && !StringUtil.isEmpty(strArr[i])) {
                            str3 = strArr[i];
                        }
                        sb.append(str3);
                    }
                    if (StringUtil.isEmpty(sb.toString())) {
                        throw new C0552c("tags array is empty");
                    }
                    map.put("tags", sb.toString());
                }
                return map;
            }
            strM850f = m850f();
            if (StringUtil.isEmpty(strM850f)) {
                throw new C0552c("account is empty");
            }
        }
        map.put(str4, strM850f);
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m834a(int i, String str) {
        C0581f c0581f = this.f1251d;
        if (c0581f != null) {
            c0581f.m828a(i, str);
        }
    }

    /* renamed from: a */
    public static void m835a(Context context) {
        f1250c = context;
        if (f1249b == null) {
            f1249b = m831a();
        }
    }

    /* renamed from: a */
    private void m836a(C0552c c0552c, String str, CommonCallback commonCallback) {
        m845a((Throwable) c0552c, str, commonCallback);
    }

    /* renamed from: a */
    private void m837a(C0553d c0553d, String str, CommonCallback commonCallback) {
        m845a((Throwable) c0553d, str, commonCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m842a(String str) {
        C0498c.m492a().mo483a("mps_account", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m843a(String str, long j) {
        C0570a c0570aM778a = C0570a.m778a();
        InterfaceC0497b interfaceC0497bM492a = C0498c.m492a();
        if (c0570aM778a == null || interfaceC0497bM492a == null) {
            return;
        }
        c0570aM778a.m782a(str, interfaceC0497bM492a.mo484b(), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m844a(String str, String str2, String str3) {
        C0570a c0570aM778a = C0570a.m778a();
        InterfaceC0497b interfaceC0497bM492a = C0498c.m492a();
        if (c0570aM778a == null || interfaceC0497bM492a == null) {
            return;
        }
        c0570aM778a.m784a(str, str2, interfaceC0497bM492a.mo484b(), str3);
    }

    /* renamed from: a */
    private void m845a(Throwable th, String str, CommonCallback commonCallback) {
        ErrorCode errorCodeBuild = C0560d.f1142q.copy().msg(th.getMessage()).build();
        f1248a.m502e(str + " Fail: errorCode:" + errorCodeBuild, th);
        if (commonCallback != null) {
            commonCallback.onFailed(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
        }
        m844a(errorCodeBuild.getCode(), errorCodeBuild.getMsg(), str);
    }

    /* renamed from: c */
    public static boolean m847c(Context context) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(C0567b.m775a(context, "KEY_LAUNCH_MARK"));
        Calendar calendar2 = Calendar.getInstance();
        return calendar.get(6) == calendar2.get(6) && calendar.get(1) == calendar2.get(1);
    }

    /* renamed from: e */
    private String m849e() {
        return C0498c.m492a().mo484b();
    }

    /* renamed from: f */
    private String m850f() {
        return C0498c.m492a().mo487c("mps_account");
    }

    /* renamed from: g */
    private Map<String, String> m851g() {
        String strM856b = m856b();
        HashMap map = new HashMap();
        map.put(Constants.KEY_APP_KEY, strM856b);
        map.put(Constants.KEY_OS_VERSION, MessageService.MSG_DB_NOTIFY_CLICK);
        map.put("version", "3.7.6");
        return map;
    }

    /* renamed from: a */
    public void m852a(final int i, final CommonCallback commonCallback) throws C0553d {
        String strM832a;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        f1248a.m498d("listTags");
        if (1 == i && (strM832a = m832a(2)) != null) {
            f1248a.m498d("get from cache");
            if (commonCallback != null) {
                commonCallback.onSuccess(strM832a);
                return;
            }
            return;
        }
        try {
            AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(f1250c, "https://" + C0494a.m472d() + "/list-tag", new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.10
                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onFailed(String str, String str2) {
                    C0582g.this.m844a(str, str2, "/list-tag");
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onFailed(str, str2);
                    }
                }

                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onSuccess(String str) {
                    C0582g.this.m843a("/list-tag", System.currentTimeMillis() - jCurrentTimeMillis);
                    if (1 == i) {
                        C0582g.f1248a.m498d("store cache");
                        C0582g.this.m834a(2, str);
                    }
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onSuccess(str);
                    }
                }
            });
            Map<String, String> mapM851g = m851g();
            if (i != 1) {
                throw new C0553d("target is invalid.");
            }
            Map<String, String> mapM833a = m833a("deviceId", (String) null, (String[]) null, mapM851g);
            mapM833a.put("target", String.valueOf(i));
            mapM833a.put(EnumC0566d.f1183u, EnumC0566d.LIST_TAGS.m774a() + "");
            asyncTaskC0583h.execute(mapM833a);
        } catch (C0552c e) {
            m836a(e, "/list-tag", commonCallback);
        } catch (C0553d e2) {
            m837a(e2, "/list-tag", commonCallback);
        }
    }

    /* renamed from: a */
    public void m853a(int i, String[] strArr, String str, final CommonCallback commonCallback) throws C0553d {
        Map<String, String> mapM833a;
        String str2;
        String str3;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(f1250c, "https://" + C0494a.m472d() + "/bind-tag", new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.8
                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onFailed(String str4, String str5) {
                    C0582g.this.m844a(str4, str5, "/bind-tag");
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onFailed(str4, str5);
                    }
                }

                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onSuccess(String str4) {
                    C0582g.this.m843a("/bind-tag", System.currentTimeMillis() - jCurrentTimeMillis);
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onSuccess(str4);
                    }
                }
            });
            if (strArr == null || strArr.length == 0) {
                throw new C0553d("tags is empty.");
            }
            Map<String, String> mapM851g = m851g();
            if (i == 1) {
                f1248a.m498d("Binding tag to device.");
                mapM833a = m833a("deviceId", (String) null, (String[]) null, mapM851g);
                str2 = EnumC0566d.f1183u;
                str3 = EnumC0566d.BIND_TAG_TO_DEVICE.m774a() + "";
            } else if (i == 2) {
                f1248a.m498d("Binding tag to account.");
                mapM833a = m833a("account", (String) null, (String[]) null, mapM851g);
                str2 = EnumC0566d.f1183u;
                str3 = EnumC0566d.BIND_TAG_TO_ACCOUNT.m774a() + "";
            } else {
                if (i != 3) {
                    throw new C0553d("target is invalid.");
                }
                mapM833a = m833a("alias", str, (String[]) null, mapM851g);
                str2 = EnumC0566d.f1183u;
                str3 = EnumC0566d.BIND_TAG_TO_ALIAS.m774a() + "";
            }
            mapM833a.put(str2, str3);
            Map<String, String> mapM833a2 = m833a("tags", (String) null, strArr, mapM833a);
            mapM833a2.put("target", String.valueOf(i));
            asyncTaskC0583h.execute(mapM833a2);
        } catch (C0552c e) {
            m836a(e, "/bind-tag", commonCallback);
        } catch (C0553d e2) {
            m837a(e2, "/bind-tag", commonCallback);
        }
    }

    /* renamed from: a */
    public void m854a(final CommonCallback commonCallback) {
        f1248a.m498d("unbinding account");
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Context context = f1250c;
        StringBuilder sbM1765j = CompilerOutline.m1765j("https://");
        sbM1765j.append(C0494a.m472d());
        sbM1765j.append("/unbind-account");
        AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(context, sbM1765j.toString(), new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.7
            @Override // com.alibaba.sdk.android.push.CommonCallback
            public void onFailed(String str, String str2) {
                C0582g.this.m844a(str, str2, "/unbind-account");
                CommonCallback commonCallback2 = commonCallback;
                if (commonCallback2 != null) {
                    commonCallback2.onFailed(str, str2);
                }
            }

            @Override // com.alibaba.sdk.android.push.CommonCallback
            public void onSuccess(String str) {
                C0582g.this.m842a("");
                C0582g.this.m843a("/unbind-account", System.currentTimeMillis() - jCurrentTimeMillis);
                CommonCallback commonCallback2 = commonCallback;
                if (commonCallback2 != null) {
                    commonCallback2.onSuccess(str);
                }
            }
        });
        try {
            Map<String, String> mapM851g = m851g();
            mapM851g.put("account", "");
            mapM851g.put(EnumC0566d.f1183u, String.valueOf(EnumC0566d.UNBIND_ACCOUNT.m774a()));
            asyncTaskC0583h.execute(m833a("deviceId", (String) null, (String[]) null, mapM851g));
        } catch (C0552c e) {
            m836a(e, "/unbind-account", commonCallback);
        }
    }

    /* renamed from: a */
    public void m855a(final String str, final CommonCallback commonCallback) throws C0553d {
        f1248a.m498d("binding account" + str);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(f1250c, "https://" + C0494a.m472d() + "/bind-account", new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.1
                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onFailed(String str2, String str3) {
                    C0582g.this.m844a(str2, str3, "/bind-account");
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onFailed(str2, str3);
                    }
                }

                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onSuccess(String str2) {
                    C0582g.this.m842a(str);
                    C0582g.this.m843a("/bind-account", System.currentTimeMillis() - jCurrentTimeMillis);
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onSuccess(str2);
                    }
                }
            });
            Map<String, String> mapM851g = m851g();
            if (StringUtil.isEmpty(str)) {
                throw new C0553d("account input is empty!");
            }
            mapM851g.put("account", str);
            mapM851g.put(EnumC0566d.f1183u, String.valueOf(EnumC0566d.BIND_ACCOUNT.m774a()));
            asyncTaskC0583h.execute(m833a("deviceId", (String) null, (String[]) null, mapM851g));
        } catch (C0552c e) {
            m836a(e, "/bind-account", commonCallback);
        } catch (C0553d e2) {
            m837a(e2, "/bind-account", commonCallback);
        }
    }

    /* renamed from: b */
    public String m856b() {
        return C0498c.m492a().mo480a();
    }

    /* renamed from: b */
    public void m857b(int i, String[] strArr, String str, final CommonCallback commonCallback) throws C0553d {
        Map<String, String> mapM833a;
        String str2;
        String str3;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(f1250c, "https://" + C0494a.m472d() + "/unbind-tag", new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.9
                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onFailed(String str4, String str5) {
                    C0582g.this.m844a(str4, str5, "/unbind-tag");
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onFailed(str4, str5);
                    }
                }

                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onSuccess(String str4) {
                    if (commonCallback != null) {
                        C0582g.this.m843a("/unbind-tag", System.currentTimeMillis() - jCurrentTimeMillis);
                        commonCallback.onSuccess(str4);
                    }
                }
            });
            Map<String, String> mapM851g = m851g();
            if (i == 1) {
                f1248a.m498d("Unbinding tag from device.");
                mapM833a = m833a("deviceId", (String) null, (String[]) null, mapM851g);
                str2 = EnumC0566d.f1183u;
                str3 = EnumC0566d.UNBIND_TAG_TO_DEVICE.m774a() + "";
            } else if (i == 2) {
                f1248a.m498d("Unbinding tag from account.");
                mapM833a = m833a("account", (String) null, (String[]) null, mapM851g);
                str2 = EnumC0566d.f1183u;
                str3 = EnumC0566d.UNBIND_TAG_TO_ACCOUNT.m774a() + "";
            } else {
                if (i != 3) {
                    throw new C0553d("target is invalid.");
                }
                f1248a.m498d("Unbinding tag from alias.");
                mapM833a = m833a("alias", str, (String[]) null, mapM851g);
                str2 = EnumC0566d.f1183u;
                str3 = EnumC0566d.UNBIND_TAG_TO_ALIAS.m774a() + "";
            }
            mapM833a.put(str2, str3);
            Map<String, String> mapM833a2 = m833a("tags", (String) null, strArr, mapM833a);
            mapM833a2.put("target", String.valueOf(i));
            asyncTaskC0583h.execute(mapM833a2);
        } catch (C0552c e) {
            m836a(e, "/unbind-tag", commonCallback);
        } catch (C0553d e2) {
            m837a(e2, "/unbind-tag", commonCallback);
        }
    }

    /* renamed from: b */
    public void m858b(Context context) {
        if (m847c(context)) {
            f1248a.m501e("onAppStart has already sent today");
            return;
        }
        f1248a.m498d("onAppStart");
        Context context2 = f1250c;
        StringBuilder sbM1765j = CompilerOutline.m1765j("https://");
        sbM1765j.append(C0494a.m472d());
        sbM1765j.append("/active");
        AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(context2, sbM1765j.toString(), new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.6
            @Override // com.alibaba.sdk.android.push.CommonCallback
            public void onFailed(String str, String str2) {
                C0582g.f1248a.m501e("onAppStart failed. errorCode:" + str + " errorMsg:" + str2);
            }

            @Override // com.alibaba.sdk.android.push.CommonCallback
            public void onSuccess(String str) {
                C0582g.f1248a.m498d("onAppStart success");
                try {
                    C0567b.m776a(C0582g.f1250c, "KEY_LAUNCH_MARK", System.currentTimeMillis());
                } catch (Throwable th) {
                    C0582g.f1248a.m502e("onAppStart success", th);
                }
            }
        });
        try {
            Map<String, String> mapM851g = m851g();
            mapM851g.put(EnumC0566d.f1183u, String.valueOf(EnumC0566d.ON_APP_START.m774a()));
            asyncTaskC0583h.execute(m833a("deviceId", (String) null, (String[]) null, mapM851g));
        } catch (C0552c e) {
            m836a(e, "/active", (CommonCallback) null);
        }
    }

    /* renamed from: b */
    public void m859b(final CommonCallback commonCallback) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        f1248a.m498d("listAliases");
        String strM832a = m832a(1);
        if (strM832a != null) {
            f1248a.m498d("get from cache");
            if (commonCallback != null) {
                commonCallback.onSuccess(strM832a);
                return;
            }
            return;
        }
        try {
            AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(f1250c, "https://" + C0494a.m472d() + "/list-alias", new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.13
                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onFailed(String str, String str2) {
                    C0582g.this.m844a(str, str2, "/list-alias");
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onFailed(str, str2);
                    }
                }

                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onSuccess(String str) {
                    C0582g.f1248a.m498d("store cache");
                    C0582g.this.m834a(1, str);
                    C0582g.this.m843a("/list-alias", System.currentTimeMillis() - jCurrentTimeMillis);
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onSuccess(str);
                    }
                }
            });
            Map<String, String> mapM851g = m851g();
            mapM851g.put(EnumC0566d.f1183u, EnumC0566d.LIST_ALIASES.m774a() + "");
            asyncTaskC0583h.execute(m833a("deviceId", (String) null, (String[]) null, mapM851g));
        } catch (C0552c e) {
            m836a(e, "/list-alias", commonCallback);
        }
    }

    /* renamed from: b */
    public void m860b(String str, final CommonCallback commonCallback) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        f1248a.m498d("Adding alias to device");
        try {
            AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(f1250c, "https://" + C0494a.m472d() + "/add-alias", new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.11
                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onFailed(String str2, String str3) {
                    C0582g.this.m844a(str2, str3, "/add-alias");
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onFailed(str2, str3);
                    }
                }

                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onSuccess(String str2) {
                    C0582g.this.m843a("/add-alias", System.currentTimeMillis() - jCurrentTimeMillis);
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onSuccess(str2);
                    }
                }
            });
            Map<String, String> mapM833a = m833a("alias", str, (String[]) null, m833a("deviceId", (String) null, (String[]) null, m851g()));
            mapM833a.put(EnumC0566d.f1183u, String.valueOf(EnumC0566d.BIND_ALIAS.m774a()));
            asyncTaskC0583h.execute(mapM833a);
        } catch (C0552c e) {
            m836a(e, "/add-alias", commonCallback);
        }
    }

    /* renamed from: c */
    public void m861c(final CommonCallback commonCallback) {
        f1248a.m498d("check vip push status");
        final long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(f1250c, "https://" + C0494a.m472d() + "/push-status", new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.14
                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onFailed(String str, String str2) {
                    C0582g.this.m844a(str, str2, "/push-status");
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onFailed(str, str2);
                    }
                }

                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onSuccess(String str) {
                    C0582g.this.m843a("/push-status", System.currentTimeMillis() - jCurrentTimeMillis);
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onSuccess(str);
                    }
                }
            });
            Map<String, String> mapM833a = m833a("deviceId", (String) null, (String[]) null, m851g());
            mapM833a.put(EnumC0566d.f1183u, String.valueOf(EnumC0566d.CHECK_PUSH_STATUS.m774a()));
            asyncTaskC0583h.execute(mapM833a);
        } catch (C0552c e) {
            m836a(e, "/push-status", commonCallback);
        }
    }

    /* renamed from: c */
    public void m862c(String str, final CommonCallback commonCallback) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        f1248a.m498d("Removing alias from device");
        try {
            AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(f1250c, "https://" + C0494a.m472d() + "/remove-alias", new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.12
                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onFailed(String str2, String str3) {
                    C0582g.this.m844a(str2, str3, "/remove-alias");
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onFailed(str2, str3);
                    }
                }

                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onSuccess(String str2) {
                    C0582g.this.m843a("/remove-alias", System.currentTimeMillis() - jCurrentTimeMillis);
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onSuccess(str2);
                    }
                }
            });
            Map<String, String> mapM833a = m833a("deviceId", (String) null, (String[]) null, m851g());
            if (StringUtil.isEmpty(str)) {
                str = "";
            }
            mapM833a.put("alias", str);
            mapM833a.put(EnumC0566d.f1183u, String.valueOf(EnumC0566d.UNBIND_ALIAS.m774a()));
            asyncTaskC0583h.execute(mapM833a);
        } catch (C0552c e) {
            m836a(e, "/remove-alias", commonCallback);
        }
    }

    /* renamed from: d */
    public void m863d(final CommonCallback commonCallback) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        f1248a.m498d("unbinding vip");
        try {
            AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(f1250c, "https://" + C0494a.m472d() + "/push-switch", new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.2
                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onFailed(String str, String str2) {
                    C0582g.this.m844a(str, str2, "/push-switch");
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onFailed(str, str2);
                    }
                }

                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onSuccess(String str) {
                    C0582g.this.m843a("/push-switch", System.currentTimeMillis() - jCurrentTimeMillis);
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onSuccess(str);
                    }
                }
            });
            Map<String, String> mapM833a = m833a("deviceId", (String) null, (String[]) null, m851g());
            mapM833a.put(EnumC0566d.f1183u, String.valueOf(EnumC0566d.TURN_OFF_PUSH.m774a()));
            mapM833a.put("enable", RequestConstant.FALSE);
            asyncTaskC0583h.execute(mapM833a);
        } catch (C0552c e) {
            m836a(e, "/push-switch false", commonCallback);
        }
    }

    /* renamed from: d */
    public void m864d(String str, final CommonCallback commonCallback) throws C0553d {
        f1248a.m498d("binding phoneNumber:" + str);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(f1250c, "https://" + C0494a.m472d() + "/set-phone", new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.4
                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onFailed(String str2, String str3) {
                    C0582g.this.m844a(str2, str3, "/set-phone");
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onFailed(str2, str3);
                    }
                }

                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onSuccess(String str2) {
                    C0582g.this.m843a("/set-phone", System.currentTimeMillis() - jCurrentTimeMillis);
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onSuccess(str2);
                    }
                }
            });
            Map<String, String> mapM851g = m851g();
            if (StringUtil.isEmpty(str)) {
                throw new C0553d("account input is empty!");
            }
            mapM851g.put("mob", str);
            mapM851g.put(EnumC0566d.f1183u, String.valueOf(EnumC0566d.BIND_PHONE_NUMBER.m774a()));
            asyncTaskC0583h.execute(m833a("deviceId", (String) null, (String[]) null, mapM851g));
        } catch (C0552c e) {
            m836a(e, "/set-phone", commonCallback);
        } catch (C0553d e2) {
            m837a(e2, "/set-phone", commonCallback);
        }
    }

    /* renamed from: e */
    public void m865e(final CommonCallback commonCallback) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        f1248a.m498d("binding vip push");
        try {
            AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(f1250c, "https://" + C0494a.m472d() + "/push-switch", new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.3
                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onFailed(String str, String str2) {
                    C0582g.this.m844a(str, str2, "/push-switch");
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onFailed(str, str2);
                    }
                }

                @Override // com.alibaba.sdk.android.push.CommonCallback
                public void onSuccess(String str) {
                    C0582g.this.m843a("/push-switch", System.currentTimeMillis() - jCurrentTimeMillis);
                    CommonCallback commonCallback2 = commonCallback;
                    if (commonCallback2 != null) {
                        commonCallback2.onSuccess(str);
                    }
                }
            });
            Map<String, String> mapM833a = m833a("deviceId", (String) null, (String[]) null, m851g());
            mapM833a.put(EnumC0566d.f1183u, String.valueOf(EnumC0566d.TURN_ON_PUSH.m774a()));
            mapM833a.put("enable", RequestConstant.TRUE);
            asyncTaskC0583h.execute(mapM833a);
        } catch (C0552c e) {
            m836a(e, "/push-switch true", commonCallback);
        }
    }

    /* renamed from: f */
    public void m866f(final CommonCallback commonCallback) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        f1248a.m498d("unbinding phone number");
        Context context = f1250c;
        StringBuilder sbM1765j = CompilerOutline.m1765j("https://");
        sbM1765j.append(C0494a.m472d());
        sbM1765j.append("/unset-phone");
        AsyncTaskC0583h asyncTaskC0583h = new AsyncTaskC0583h(context, sbM1765j.toString(), new CommonCallback() { // from class: com.alibaba.sdk.android.push.g.g.5
            @Override // com.alibaba.sdk.android.push.CommonCallback
            public void onFailed(String str, String str2) {
                C0582g.this.m844a(str, str2, "/unset-phone");
                CommonCallback commonCallback2 = commonCallback;
                if (commonCallback2 != null) {
                    commonCallback2.onFailed(str, str2);
                }
            }

            @Override // com.alibaba.sdk.android.push.CommonCallback
            public void onSuccess(String str) {
                C0582g.this.m843a("/unset-phone", System.currentTimeMillis() - jCurrentTimeMillis);
                CommonCallback commonCallback2 = commonCallback;
                if (commonCallback2 != null) {
                    commonCallback2.onSuccess(str);
                }
            }
        });
        try {
            Map<String, String> mapM851g = m851g();
            mapM851g.put(EnumC0566d.f1183u, String.valueOf(EnumC0566d.UNBIND_PHONE_NUMBER.m774a()));
            asyncTaskC0583h.execute(m833a("deviceId", (String) null, (String[]) null, mapM851g));
        } catch (C0552c e) {
            m836a(e, "/unset-phone", commonCallback);
        }
    }
}
