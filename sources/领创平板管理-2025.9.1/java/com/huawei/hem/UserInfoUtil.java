package com.huawei.hem;

import android.text.TextUtils;
import com.android.launcher3.GuardSecureApplication;
import java.util.HashMap;
import java.util.Map;
import org.android.agoo.message.MessageService;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: UserInfoUtil.java */
/* renamed from: com.huawei.hem.y5 */
/* loaded from: classes.dex */
public class UserInfoUtil {

    /* renamed from: A */
    public int f4127A;

    /* renamed from: B */
    public boolean f4128B;

    /* renamed from: C */
    public String f4129C;

    /* renamed from: E */
    public long f4131E;

    /* renamed from: J */
    public int f4136J;

    /* renamed from: K */
    public String f4137K;

    /* renamed from: L */
    public long f4138L;

    /* renamed from: M */
    public int f4139M;

    /* renamed from: N */
    public boolean f4140N;

    /* renamed from: T */
    public int f4146T;

    /* renamed from: a */
    public String f4153a;

    /* renamed from: b */
    public String f4155b;

    /* renamed from: c */
    public String f4157c;

    /* renamed from: c0 */
    public String f4158c0;

    /* renamed from: d */
    public String f4159d;

    /* renamed from: e */
    public String f4161e;

    /* renamed from: f */
    public String f4163f;

    /* renamed from: g */
    public String f4165g;

    /* renamed from: h */
    public String f4167h;

    /* renamed from: i */
    public int f4169i;

    /* renamed from: j */
    public int f4171j;

    /* renamed from: k */
    public int f4173k;

    /* renamed from: m */
    public String f4177m;

    /* renamed from: m0 */
    public boolean f4178m0;

    /* renamed from: n */
    public boolean f4179n;

    /* renamed from: o */
    public boolean f4181o;

    /* renamed from: p */
    public boolean f4183p;

    /* renamed from: q */
    public String f4185q;

    /* renamed from: r */
    public String f4187r;

    /* renamed from: s */
    public int f4189s;

    /* renamed from: s0 */
    public String f4190s0;

    /* renamed from: t */
    public int f4191t;

    /* renamed from: u */
    public int f4193u;

    /* renamed from: u0 */
    public int f4194u0;

    /* renamed from: v */
    public int f4195v;

    /* renamed from: v0 */
    public int f4196v0;

    /* renamed from: w */
    public int f4197w;

    /* renamed from: w0 */
    public int f4198w0;

    /* renamed from: x */
    public String f4199x;

    /* renamed from: y */
    public int f4200y;

    /* renamed from: z */
    public int f4201z;

    /* renamed from: l */
    public int f4175l = -1;

    /* renamed from: F */
    public String f4132F = "null";

    /* renamed from: G */
    public int f4133G = -1;

    /* renamed from: H */
    public String f4134H = null;

    /* renamed from: I */
    public String f4135I = null;

    /* renamed from: O */
    public int f4141O = -1;

    /* renamed from: P */
    public int f4142P = -1;

    /* renamed from: Q */
    public int f4143Q = -1;

    /* renamed from: R */
    public int f4144R = -1;

    /* renamed from: S */
    public int f4145S = -1;

    /* renamed from: U */
    public int f4147U = -1;

    /* renamed from: V */
    public int f4148V = -1;

    /* renamed from: W */
    public int f4149W = -1;

    /* renamed from: X */
    public int f4150X = -1;

    /* renamed from: Y */
    public int f4151Y = -1;

    /* renamed from: Z */
    public int f4152Z = -1;

    /* renamed from: a0 */
    public int f4154a0 = -1;

    /* renamed from: b0 */
    public String f4156b0 = null;

    /* renamed from: d0 */
    public int f4160d0 = -1;

    /* renamed from: e0 */
    public int f4162e0 = -1;

    /* renamed from: f0 */
    public int f4164f0 = -1;

    /* renamed from: g0 */
    public String f4166g0 = null;

    /* renamed from: h0 */
    public String f4168h0 = null;

    /* renamed from: i0 */
    public int f4170i0 = -1;

    /* renamed from: j0 */
    public int f4172j0 = -1;

    /* renamed from: k0 */
    public int f4174k0 = -1;

    /* renamed from: l0 */
    public int f4176l0 = -1;

    /* renamed from: n0 */
    public String f4180n0 = null;

    /* renamed from: o0 */
    public String f4182o0 = "-1";

    /* renamed from: p0 */
    public String f4184p0 = "-1";

    /* renamed from: q0 */
    public String f4186q0 = "-1";

    /* renamed from: r0 */
    public int f4188r0 = -1;

    /* renamed from: t0 */
    public String f4192t0 = null;

    /* renamed from: D */
    public DeskSPF f4130D = new DeskSPF(GuardSecureApplication.f1640b, "GuardSecure");

    /* compiled from: UserInfoUtil.java */
    /* renamed from: com.huawei.hem.y5$b */
    public static final class b {

        /* renamed from: a */
        public static final UserInfoUtil f4202a = new UserInfoUtil(null);
    }

    public UserInfoUtil(a aVar) {
    }

    /* renamed from: A */
    public int m3006A() {
        if (this.f4146T == 0) {
            this.f4146T = this.f4130D.f2199a.getInt("remind_duration", 0);
        }
        return this.f4146T;
    }

    /* renamed from: B */
    public int m3007B() {
        if (this.f4154a0 == -1) {
            this.f4154a0 = this.f4130D.f2199a.getInt("rotate_setting_status", 1);
        }
        return this.f4154a0;
    }

    /* renamed from: C */
    public String m3008C() {
        if (TextUtils.isEmpty(this.f4165g)) {
            this.f4165g = this.f4130D.f2199a.getString("stu_schoolname", "");
        }
        return this.f4165g;
    }

    /* renamed from: D */
    public int m3009D() {
        if (this.f4144R == -1) {
            this.f4144R = this.f4130D.f2199a.getInt("sdcard_switch", 0);
        }
        return this.f4144R;
    }

    /* renamed from: E */
    public int m3010E() {
        if (this.f4162e0 != -1) {
            this.f4162e0 = this.f4130D.f2199a.getInt("is_time_limit_sms", -1);
        }
        return this.f4162e0;
    }

    /* renamed from: F */
    public int m3011F() {
        if (this.f4196v0 == 0) {
            this.f4196v0 = this.f4130D.f2199a.getInt("isv_control_sms", -1);
        }
        return this.f4196v0;
    }

    /* renamed from: G */
    public String m3012G() {
        if (TextUtils.isEmpty(this.f4159d)) {
            this.f4159d = this.f4130D.f2199a.getString("stu_classname", "");
        }
        return this.f4159d;
    }

    /* renamed from: H */
    public String m3013H() {
        if (TextUtils.isEmpty(this.f4155b)) {
            this.f4155b = this.f4130D.f2199a.getString("stu_password", "");
        }
        return this.f4155b;
    }

    /* renamed from: I */
    public long m3014I() {
        if (0 == this.f4131E) {
            this.f4131E = this.f4130D.f2199a.getLong("unread_count_time", 0L);
        }
        return this.f4131E;
    }

    /* renamed from: J */
    public Map<String, Integer> m3015J() {
        DeskSPF c0824ac = this.f4130D;
        if (c0824ac == null) {
            throw null;
        }
        HashMap map = new HashMap();
        String string = c0824ac.f2199a.getString("unread_package_name", "");
        if (!TextUtils.isEmpty(string)) {
            try {
                JSONArray jSONArray = new JSONArray(string);
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        JSONArray jSONArrayNames = jSONObject.names();
                        if (jSONArrayNames != null) {
                            for (int i2 = 0; i2 < jSONArrayNames.length(); i2++) {
                                String string2 = jSONArrayNames.getString(i2);
                                map.put(string2, Integer.valueOf(jSONObject.getInt(string2)));
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                CompilerOutline.m1745C(th, CompilerOutline.m1765j(" getHashMapData spftool get hash map error:"));
            }
        }
        return map;
    }

    /* renamed from: K */
    public int m3016K() {
        if (this.f4141O == -1) {
            this.f4141O = !"disable".equals(this.f4130D.f2199a.getString("usb_charge", "disable")) ? 1 : 0;
        }
        return this.f4141O;
    }

    /* renamed from: L */
    public String m3017L() {
        if (TextUtils.isEmpty(this.f4167h)) {
            this.f4167h = this.f4130D.f2199a.getString("wallpaper", "");
        }
        if (TextUtils.isEmpty(this.f4177m)) {
            this.f4177m = this.f4130D.f2199a.getString("isv_wallpaper", "-1");
        }
        String str = this.f4177m;
        if (!TextUtils.isEmpty(str) && !"-1".equals(str)) {
            this.f4167h = str;
        }
        return this.f4167h;
    }

    /* renamed from: M */
    public String m3018M() {
        if (TextUtils.isEmpty(this.f4190s0)) {
            this.f4190s0 = this.f4130D.f2199a.getString("wifi_ssid", "-1");
        }
        return this.f4190s0;
    }

    /* renamed from: N */
    public int m3019N() {
        if (this.f4173k == 0) {
            this.f4173k = this.f4130D.f2199a.getInt("stu_has_login", 0);
        }
        return this.f4173k;
    }

    /* renamed from: O */
    public boolean m3020O() {
        if (!this.f4179n) {
            this.f4179n = this.f4130D.f2199a.getBoolean("useOfflineLogin", false);
        }
        return this.f4179n;
    }

    /* renamed from: P */
    public boolean m3021P() {
        if (!this.f4183p) {
            this.f4183p = this.f4130D.f2199a.getBoolean("need_open", false);
        }
        return this.f4183p;
    }

    /* renamed from: Q */
    public boolean m3022Q() {
        if (!this.f4128B) {
            this.f4128B = this.f4130D.f2199a.getBoolean("open_intellgent_detection", false);
        }
        return this.f4128B;
    }

    /* renamed from: R */
    public boolean m3023R() {
        if (this.f4189s == 0) {
            this.f4189s = this.f4130D.f2199a.getInt("release_control", 0);
        }
        return this.f4189s == 1;
    }

    /* renamed from: S */
    public boolean m3024S() {
        if (!this.f4181o) {
            this.f4181o = this.f4130D.f2199a.getBoolean("stu_is_save_account", false);
        }
        return this.f4181o;
    }

    /* renamed from: T */
    public void m3025T(int i) {
        if (this.f4174k0 != i) {
            this.f4174k0 = i;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("camera_start_up_status", i);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: U */
    public void m3026U(boolean z) {
        if (this.f4178m0 != z) {
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putBoolean("lock_status", z);
            c0824ac.f2200b.commit();
            this.f4178m0 = z;
        }
    }

    /* renamed from: V */
    public void m3027V(int i) {
        if (this.f4191t != i) {
            this.f4191t = i;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("disable_back", i);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: W */
    public void m3028W(int i) {
        if (this.f4193u != i) {
            this.f4193u = i;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("disable_home", i);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: X */
    public void m3029X(int i) {
        if (this.f4195v != i) {
            this.f4195v = i;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("disable_recent", i);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: Y */
    public void m3030Y(String str) {
        if (this.f4163f != str) {
            this.f4163f = str;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putString("stu_username", str);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: Z */
    public void m3031Z(int i) {
        if (this.f4170i0 != i) {
            this.f4170i0 = i;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("enable_camera", i);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: a */
    public int m3032a() {
        if (this.f4198w0 == 0) {
            this.f4198w0 = this.f4130D.f2199a.getInt("login_account_type", 1);
        }
        return this.f4198w0;
    }

    /* renamed from: a0 */
    public void m3033a0(int i) {
        if (this.f4172j0 != i) {
            this.f4172j0 = i;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("enable_screen_shoot", i);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: b */
    public String m3034b() {
        if ("null".equals(this.f4132F)) {
            this.f4132F = this.f4130D.f2199a.getString("keep_alive_package", "null");
        }
        return this.f4132F;
    }

    /* renamed from: b0 */
    public void m3035b0(int i) {
        if (this.f4147U != i) {
            this.f4147U = i;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("enable_gesture_pwd_status", i);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: c */
    public int m3036c() {
        if (this.f4169i == 0) {
            this.f4169i = this.f4130D.f2199a.getInt("logout_status", 0);
        }
        return this.f4169i;
    }

    /* renamed from: c0 */
    public void m3037c0(int i) {
        if (this.f4173k != i) {
            this.f4173k = i;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("stu_has_login", i);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: d */
    public int m3038d() {
        if (this.f4151Y == -1) {
            this.f4151Y = this.f4130D.f2199a.getInt("calendar_status", 0);
        }
        return this.f4151Y;
    }

    /* renamed from: d0 */
    public void m3039d0(int i, boolean z) {
        m3062p();
        if (this.f4168h0.length() == 3) {
            this.f4168h0 = CompilerOutline.m1762g(new StringBuilder(), this.f4168h0, MessageService.MSG_DB_READY_REPORT);
        }
        if (i == 10000) {
            if (z) {
                this.f4168h0 = "1111";
            } else {
                this.f4168h0 = "0000";
            }
        } else if (i == 100) {
            if (z) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("1");
                sbM1765j.append(this.f4168h0.substring(1));
                this.f4168h0 = sbM1765j.toString();
            } else {
                StringBuilder sbM1765j2 = CompilerOutline.m1765j(MessageService.MSG_DB_READY_REPORT);
                sbM1765j2.append(this.f4168h0.substring(1));
                this.f4168h0 = sbM1765j2.toString();
            }
        } else if (i == 10) {
            if (z) {
                this.f4168h0 = this.f4168h0.substring(0, 1) + "1" + this.f4168h0.substring(2);
            } else {
                this.f4168h0 = this.f4168h0.substring(0, 1) + MessageService.MSG_DB_READY_REPORT + this.f4168h0.substring(2);
            }
        } else if (i == 1) {
            if (z) {
                this.f4168h0 = this.f4168h0.substring(0, 2) + "1" + this.f4168h0.substring(4);
            } else {
                this.f4168h0 = this.f4168h0.substring(0, 1) + "000";
            }
        } else if (i == 9) {
            if (z) {
                this.f4168h0 = this.f4168h0.substring(0, 3) + "1";
            } else {
                this.f4168h0 = this.f4168h0.substring(0, 3) + MessageService.MSG_DB_READY_REPORT;
            }
        }
        DeskSPF c0824ac = this.f4130D;
        c0824ac.f2200b.putString("need_show_lock_activity", this.f4168h0);
        c0824ac.f2200b.commit();
        LTKDateUtil.m1403m("is lock device status:" + this.f4168h0);
    }

    /* renamed from: e */
    public int m3040e() {
        if (this.f4174k0 == 0) {
            this.f4174k0 = this.f4130D.f2199a.getInt("camera_start_up_status", 0);
        }
        return this.f4174k0;
    }

    /* renamed from: e0 */
    public void m3041e0(boolean z) {
        if (this.f4179n != z) {
            this.f4179n = z;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putBoolean("useOfflineLogin", z);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: f */
    public int m3042f() {
        if (this.f4152Z == -1) {
            this.f4152Z = this.f4130D.f2199a.getInt("cleanup_status", 0);
        }
        return this.f4152Z;
    }

    /* renamed from: f0 */
    public void m3043f0(String str) {
        if (this.f4184p0.equals(str)) {
            return;
        }
        this.f4184p0 = str;
        DeskSPF c0824ac = this.f4130D;
        c0824ac.f2200b.putString("lockscreen_wallpaper_landscape", str);
        c0824ac.f2200b.commit();
    }

    /* renamed from: g */
    public int m3044g() {
        if (this.f4150X == -1) {
            this.f4150X = this.f4130D.f2199a.getInt("alarm_clock_status", 0);
        }
        return this.f4150X;
    }

    /* renamed from: g0 */
    public void m3045g0(String str) {
        if (this.f4185q != str) {
            this.f4185q = str;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putString("license", str);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: h */
    public String m3046h() {
        if (this.f4166g0 == null) {
            this.f4166g0 = this.f4130D.f2199a.getString("setting_component", "");
        }
        return this.f4166g0;
    }

    /* renamed from: h0 */
    public void m3047h0(boolean z) {
        if (this.f4183p != z) {
            this.f4183p = z;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putBoolean("need_open", z);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: i */
    public int m3048i() {
        if (this.f4193u == 0) {
            this.f4193u = this.f4130D.f2199a.getInt("disable_home", 0);
        }
        return this.f4193u;
    }

    /* renamed from: i0 */
    public void m3049i0(long j) {
        if (this.f4138L != j) {
            this.f4138L = j;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putLong("next_query_event_stamp", j);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: j */
    public int m3050j() {
        if (this.f4195v == 0) {
            this.f4195v = this.f4130D.f2199a.getInt("disable_recent", 0);
        }
        return this.f4195v;
    }

    /* renamed from: j0 */
    public void m3051j0(String str) {
        if (this.f4157c != str) {
            this.f4157c = str;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putString("stu_nickname", str);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: k */
    public String m3052k() {
        if (TextUtils.isEmpty(this.f4163f)) {
            this.f4163f = this.f4130D.f2199a.getString("stu_username", "");
        }
        return this.f4163f;
    }

    /* renamed from: k0 */
    public void m3053k0(int i) {
        if (this.f4194u0 != i) {
            this.f4194u0 = i;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("isv_control_phone", i);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: l */
    public int m3054l() {
        if (this.f4172j0 == -1) {
            this.f4172j0 = this.f4130D.f2199a.getInt("enable_screen_shoot", -1);
        }
        return this.f4172j0;
    }

    /* renamed from: l0 */
    public void m3055l0(String str) {
        if (this.f4186q0.equals(str)) {
            return;
        }
        this.f4186q0 = str;
        DeskSPF c0824ac = this.f4130D;
        c0824ac.f2200b.putString("lockscreen_wallpaper_portrait", str);
        c0824ac.f2200b.commit();
    }

    /* renamed from: m */
    public int m3056m() {
        if (this.f4176l0 == -1) {
            this.f4176l0 = this.f4130D.f2199a.getInt("firwall_status", 0);
        }
        return this.f4176l0;
    }

    /* renamed from: m0 */
    public void m3057m0(int i) {
        if (this.f4146T != i) {
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("remind_duration", i);
            c0824ac.f2200b.commit();
            this.f4146T = i;
        }
    }

    /* renamed from: n */
    public int m3058n() {
        if (this.f4149W == -1) {
            this.f4149W = this.f4130D.f2199a.getInt("gallery_status", 0);
        }
        return this.f4149W;
    }

    /* renamed from: n0 */
    public void m3059n0(int i) {
        DeskSPF c0824ac = this.f4130D;
        c0824ac.f2200b.putInt("rotating_status", i);
        c0824ac.f2200b.commit();
    }

    /* renamed from: o */
    public int m3060o() {
        if (this.f4147U == -1) {
            this.f4147U = this.f4130D.f2199a.getInt("enable_gesture_pwd_status", 0);
        }
        return this.f4147U;
    }

    /* renamed from: o0 */
    public void m3061o0(String str) {
        if (this.f4165g != str) {
            this.f4165g = str;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putString("stu_schoolname", str);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: p */
    public String m3062p() {
        if (this.f4168h0 == null) {
            this.f4168h0 = this.f4130D.f2199a.getString("need_show_lock_activity", "0000");
        }
        return this.f4168h0;
    }

    /* renamed from: p0 */
    public void m3063p0(String str) {
        if (this.f4182o0.equals(str)) {
            return;
        }
        this.f4182o0 = str;
        DeskSPF c0824ac = this.f4130D;
        c0824ac.f2200b.putString("lockscreen_wallpaper", str);
        c0824ac.f2200b.commit();
    }

    /* renamed from: q */
    public String m3064q() {
        if (this.f4156b0 == null) {
            this.f4156b0 = this.f4130D.f2199a.getString("app_white_list", "");
        }
        return this.f4156b0;
    }

    /* renamed from: q0 */
    public void m3065q0(int i) {
        if (this.f4175l != i) {
            this.f4175l = i;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("show_launcher", i);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: r */
    public int m3066r() {
        if (this.f4148V == -1) {
            this.f4148V = this.f4130D.f2199a.getInt("camera_status", 0);
        }
        return this.f4148V;
    }

    /* renamed from: r0 */
    public void m3067r0(int i) {
        if (this.f4196v0 != i) {
            this.f4196v0 = i;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putInt("isv_control_sms", i);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: s */
    public String m3068s() {
        if (this.f4134H == null) {
            this.f4134H = this.f4130D.f2199a.getString("url_white_list", "");
        }
        return this.f4134H;
    }

    /* renamed from: s0 */
    public void m3069s0(String str) {
        if (this.f4159d != str) {
            this.f4159d = str;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putString("stu_classname", str);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: t */
    public int m3070t() {
        if (this.f4197w == 0) {
            this.f4197w = this.f4130D.f2199a.getInt("launcher_start_mode", 0);
        }
        return this.f4197w;
    }

    /* renamed from: t0 */
    public void m3071t0(int i) {
        if (this.f4141O == i) {
            return;
        }
        this.f4141O = i;
        DeskSPF c0824ac = this.f4130D;
        c0824ac.f2200b.putString("usb_charge", i == 1 ? "enable" : "disable");
        c0824ac.f2200b.commit();
    }

    /* renamed from: u */
    public String m3072u() {
        if (TextUtils.isEmpty(this.f4185q)) {
            this.f4185q = this.f4130D.f2199a.getString("license", "");
        }
        return this.f4185q;
    }

    /* renamed from: u0 */
    public void m3073u0(String str) {
        if (this.f4167h != str) {
            this.f4167h = str;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putString("wallpaper", str);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: v */
    public String m3074v() {
        if (TextUtils.isEmpty(this.f4157c)) {
            this.f4157c = this.f4130D.f2199a.getString("stu_nickname", "");
        }
        return this.f4157c;
    }

    /* renamed from: v0 */
    public void m3075v0(String str) {
        String str2 = this.f4190s0;
        if (str2 == null || !str2.equals(str)) {
            this.f4190s0 = str;
            DeskSPF c0824ac = this.f4130D;
            c0824ac.f2200b.putString("wifi_ssid", str);
            c0824ac.f2200b.commit();
        }
    }

    /* renamed from: w */
    public int m3076w() {
        if (this.f4145S == -1) {
            this.f4145S = this.f4130D.f2199a.getInt("spf_key_otg_enable", -1);
        }
        return this.f4145S;
    }

    /* renamed from: x */
    public int m3077x() {
        if (this.f4164f0 != -1) {
            this.f4164f0 = this.f4130D.f2199a.getInt("is_time_limit_phone", -1);
        }
        return this.f4164f0;
    }

    /* renamed from: y */
    public int m3078y() {
        if (this.f4171j == 0) {
            this.f4171j = this.f4130D.f2199a.getInt("speech_switch", 0);
        }
        return this.f4171j;
    }

    /* renamed from: z */
    public int m3079z() {
        if (this.f4194u0 == 0) {
            this.f4194u0 = this.f4130D.f2199a.getInt("isv_control_phone", -1);
        }
        return this.f4194u0;
    }
}
