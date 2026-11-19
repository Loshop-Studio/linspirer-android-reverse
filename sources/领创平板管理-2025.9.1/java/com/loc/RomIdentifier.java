package com.loc;

import android.os.Build;
import android.text.TextUtils;
import com.gyf.immersionbar.OSUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: RomIdentifier.java */
/* renamed from: com.loc.s */
/* loaded from: classes.dex */
public final class RomIdentifier {

    /* renamed from: a */
    public static volatile Rom f5936a;

    /* renamed from: b */
    public static Properties f5937b = m5299b();

    /* renamed from: a */
    public static Rom m5294a() {
        if (f5936a == null) {
            synchronized (RomIdentifier.class) {
                if (f5936a == null) {
                    try {
                        Rom enumC1857rM5295a = m5295a(Build.MANUFACTURER);
                        if ("".equals(enumC1857rM5295a.m5289a())) {
                            Iterator it = Arrays.asList(Rom.MIUI.m5289a(), Rom.Flyme.m5289a(), Rom.EMUI.m5289a(), Rom.ColorOS.m5289a(), Rom.FuntouchOS.m5289a(), Rom.SmartisanOS.m5289a(), Rom.AmigoOS.m5289a(), Rom.Sense.m5289a(), Rom.LG.m5289a(), Rom.Google.m5289a(), Rom.NubiaUI.m5289a()).iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    enumC1857rM5295a = Rom.Other;
                                    break;
                                }
                                Rom enumC1857rM5295a2 = m5295a((String) it.next());
                                if (!"".equals(enumC1857rM5295a2.m5289a())) {
                                    enumC1857rM5295a = enumC1857rM5295a2;
                                    break;
                                }
                            }
                        }
                        f5936a = enumC1857rM5295a;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return f5936a;
    }

    /* renamed from: a */
    public static Rom m5295a(String str) {
        if (str == null || str.length() <= 0) {
            return Rom.Other;
        }
        if (str.equals(Rom.MIUI.m5289a())) {
            Rom enumC1857r = Rom.MIUI;
            if (m5297a(enumC1857r)) {
                return enumC1857r;
            }
        } else if (str.equals(Rom.Flyme.m5289a())) {
            Rom enumC1857r2 = Rom.Flyme;
            if (m5300b(enumC1857r2)) {
                return enumC1857r2;
            }
        } else if (str.equals(Rom.EMUI.m5289a())) {
            Rom enumC1857r3 = Rom.EMUI;
            if (m5302c(enumC1857r3)) {
                return enumC1857r3;
            }
        } else if (str.equals(Rom.ColorOS.m5289a())) {
            Rom enumC1857r4 = Rom.ColorOS;
            if (m5303d(enumC1857r4)) {
                return enumC1857r4;
            }
        } else if (str.equals(Rom.FuntouchOS.m5289a())) {
            Rom enumC1857r5 = Rom.FuntouchOS;
            if (m5304e(enumC1857r5)) {
                return enumC1857r5;
            }
        } else if (str.equals(Rom.SmartisanOS.m5289a())) {
            Rom enumC1857r6 = Rom.SmartisanOS;
            if (m5305f(enumC1857r6)) {
                return enumC1857r6;
            }
        } else if (str.equals(Rom.AmigoOS.m5289a())) {
            Rom enumC1857r7 = Rom.AmigoOS;
            if (m5306g(enumC1857r7)) {
                return enumC1857r7;
            }
        } else if (str.equals(Rom.EUI.m5289a())) {
            Rom enumC1857r8 = Rom.EUI;
            if (m5307h(enumC1857r8)) {
                return enumC1857r8;
            }
        } else if (str.equals(Rom.Sense.m5289a())) {
            Rom enumC1857r9 = Rom.Sense;
            if (m5308i(enumC1857r9)) {
                return enumC1857r9;
            }
        } else if (str.equals(Rom.LG.m5289a())) {
            Rom enumC1857r10 = Rom.LG;
            if (m5309j(enumC1857r10)) {
                return enumC1857r10;
            }
        } else if (str.equals(Rom.Google.m5289a())) {
            Rom enumC1857r11 = Rom.Google;
            if (m5310k(enumC1857r11)) {
                return enumC1857r11;
            }
        } else if (str.equals(Rom.NubiaUI.m5289a())) {
            Rom enumC1857r12 = Rom.NubiaUI;
            if (m5311l(enumC1857r12)) {
                return enumC1857r12;
            }
        }
        return Rom.Other;
    }

    /* renamed from: a */
    public static void m5296a(Rom enumC1857r, String str) {
        Matcher matcher = Pattern.compile("([\\d.]+)[^\\d]*").matcher(str);
        if (matcher.find()) {
            try {
                String strGroup = matcher.group(1);
                enumC1857r.m5291a(strGroup);
                enumC1857r.m5290a(Integer.parseInt(strGroup.split("\\.")[0]));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static boolean m5297a(Rom enumC1857r) {
        if (TextUtils.isEmpty(m5298b(OSUtils.KEY_MIUI_VERSION_NAME))) {
            return false;
        }
        String strM5298b = m5298b("ro.build.version.incremental");
        m5296a(enumC1857r, strM5298b);
        enumC1857r.m5293b(strM5298b);
        return true;
    }

    /* renamed from: b */
    public static String m5298b(String str) {
        String property = f5937b.getProperty("[" + str + "]", null);
        return TextUtils.isEmpty(property) ? m5301c(str) : property.replace("[", "").replace("]", "");
    }

    /* renamed from: b */
    public static Properties m5299b() throws IOException {
        Properties properties = new Properties();
        try {
            properties.load(Runtime.getRuntime().exec("getprop").getInputStream());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return properties;
    }

    /* renamed from: b */
    public static boolean m5300b(Rom enumC1857r) {
        String strM5298b = m5298b("ro.flyme.published");
        String strM5298b2 = m5298b("ro.meizu.setupwizard.flyme");
        if (TextUtils.isEmpty(strM5298b) && TextUtils.isEmpty(strM5298b2)) {
            return false;
        }
        String strM5298b3 = m5298b(OSUtils.KEY_DISPLAY);
        m5296a(enumC1857r, strM5298b3);
        enumC1857r.m5293b(strM5298b3);
        return true;
    }

    /* renamed from: c */
    public static String m5301c(String str) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str))).getInputStream()), 1024);
            try {
                String line = bufferedReader.readLine();
                bufferedReader.close();
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                }
                return line;
            } catch (IOException unused2) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused3) {
                    }
                }
                return null;
            } catch (Throwable th) {
                th = th;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (IOException unused5) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: c */
    public static boolean m5302c(Rom enumC1857r) {
        String strM5298b = m5298b(OSUtils.KEY_EMUI_VERSION_NAME);
        if (TextUtils.isEmpty(strM5298b)) {
            return false;
        }
        m5296a(enumC1857r, strM5298b);
        enumC1857r.m5293b(strM5298b);
        return true;
    }

    /* renamed from: d */
    public static boolean m5303d(Rom enumC1857r) {
        String strM5298b = m5298b("ro.build.version.opporom");
        if (TextUtils.isEmpty(strM5298b)) {
            return false;
        }
        m5296a(enumC1857r, strM5298b);
        enumC1857r.m5293b(strM5298b);
        return true;
    }

    /* renamed from: e */
    public static boolean m5304e(Rom enumC1857r) {
        String strM5298b = m5298b("ro.vivo.os.build.display.id");
        if (TextUtils.isEmpty(strM5298b)) {
            return false;
        }
        m5296a(enumC1857r, strM5298b);
        enumC1857r.m5293b(strM5298b);
        return true;
    }

    /* renamed from: f */
    public static boolean m5305f(Rom enumC1857r) {
        String strM5298b = m5298b("ro.smartisan.version");
        if (TextUtils.isEmpty(strM5298b)) {
            return false;
        }
        m5296a(enumC1857r, strM5298b);
        enumC1857r.m5293b(strM5298b);
        return true;
    }

    /* renamed from: g */
    public static boolean m5306g(Rom enumC1857r) {
        String strM5298b = m5298b(OSUtils.KEY_DISPLAY);
        if (TextUtils.isEmpty(strM5298b) || !strM5298b.matches("amigo([\\d.]+)[a-zA-Z]*")) {
            return false;
        }
        m5296a(enumC1857r, strM5298b);
        enumC1857r.m5293b(strM5298b);
        return true;
    }

    /* renamed from: h */
    public static boolean m5307h(Rom enumC1857r) {
        String strM5298b = m5298b("ro.letv.release.version");
        if (TextUtils.isEmpty(strM5298b)) {
            return false;
        }
        m5296a(enumC1857r, strM5298b);
        enumC1857r.m5293b(strM5298b);
        return true;
    }

    /* renamed from: i */
    public static boolean m5308i(Rom enumC1857r) {
        String strM5298b = m5298b("ro.build.sense.version");
        if (TextUtils.isEmpty(strM5298b)) {
            return false;
        }
        m5296a(enumC1857r, strM5298b);
        enumC1857r.m5293b(strM5298b);
        return true;
    }

    /* renamed from: j */
    public static boolean m5309j(Rom enumC1857r) {
        String strM5298b = m5298b("sys.lge.lgmdm_version");
        if (TextUtils.isEmpty(strM5298b)) {
            return false;
        }
        m5296a(enumC1857r, strM5298b);
        enumC1857r.m5293b(strM5298b);
        return true;
    }

    /* renamed from: k */
    public static boolean m5310k(Rom enumC1857r) {
        if (!"android-google".equals(m5298b("ro.com.google.clientidbase"))) {
            return false;
        }
        String strM5298b = m5298b("ro.build.version.release");
        enumC1857r.m5290a(Build.VERSION.SDK_INT);
        enumC1857r.m5293b(strM5298b);
        return true;
    }

    /* renamed from: l */
    public static boolean m5311l(Rom enumC1857r) {
        String strM5298b = m5298b("ro.build.nubia.rom.code");
        if (TextUtils.isEmpty(strM5298b)) {
            return false;
        }
        m5296a(enumC1857r, strM5298b);
        enumC1857r.m5293b(strM5298b);
        return true;
    }
}
