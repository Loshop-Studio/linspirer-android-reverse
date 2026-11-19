package com.loc;

import com.loc.C1720aj;
import java.io.File;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* compiled from: LogEngine.java */
/* renamed from: com.loc.au */
/* loaded from: classes.dex */
public final class LogEngine {
    /* renamed from: a */
    public static int m4166a(LogConfig c1730at) {
        C1720aj c1720aj = null;
        try {
            try {
                if (c1730at.f5059f.m4213c()) {
                    c1730at.f5059f.mo4212a(true);
                    C1720aj c1720ajM3999a = C1720aj.m3999a(new File(c1730at.f5054a), c1730at.f5055b);
                    try {
                        ArrayList arrayList = new ArrayList();
                        byte[] bArrM4170a = m4170a(c1720ajM3999a, c1730at, arrayList);
                        if (bArrM4170a != null && bArrM4170a.length != 0) {
                            LogUpdateRequest c1861v = new LogUpdateRequest(bArrM4170a, c1730at.f5056c);
                            BaseNetManager.m4058a();
                            JSONObject jSONObject = new JSONObject(new String(BaseNetManager.m4059a(c1861v).f5048a));
                            if (jSONObject.has("code") && jSONObject.getInt("code") == 1) {
                                if (c1730at.f5059f != null) {
                                    c1730at.f5059f.mo4210a(bArrM4170a.length);
                                }
                                if (c1730at.f5059f.mo4211b() < Integer.MAX_VALUE) {
                                    m4167a(c1720ajM3999a, arrayList);
                                } else {
                                    try {
                                        c1720ajM3999a.m4030d();
                                    } catch (Throwable th) {
                                        SDKLogHandler.m5333b(th, "ofm", "dlo");
                                    }
                                }
                                return bArrM4170a.length;
                            }
                            c1720aj = c1720ajM3999a;
                        }
                        if (c1720ajM3999a != null) {
                            try {
                                c1720ajM3999a.close();
                            } catch (Throwable th2) {
                                th2.printStackTrace();
                            }
                        }
                        return -1;
                    } catch (Throwable th3) {
                        th = th3;
                        c1720aj = c1720ajM3999a;
                        try {
                            SDKLogHandler.m5333b(th, "leg", "uts");
                            if (c1720aj != null) {
                                c1720aj.close();
                            }
                            return -1;
                        } catch (Throwable th4) {
                            if (c1720aj != null) {
                                try {
                                    c1720aj.close();
                                } catch (Throwable th5) {
                                    th5.printStackTrace();
                                }
                            }
                            throw th4;
                        }
                    }
                }
            } catch (Throwable th6) {
                th6.printStackTrace();
            }
        } catch (Throwable th7) {
            th = th7;
        }
        if (c1720aj != null) {
            c1720aj.close();
        }
        return -1;
    }

    /* renamed from: a */
    public static void m4167a(C1720aj c1720aj, List<String> list) {
        if (c1720aj != null) {
            try {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    c1720aj.m4029c(it.next());
                }
                c1720aj.close();
            } catch (Throwable th) {
                SDKLogHandler.m5333b(th, "ofm", "dlo");
            }
        }
    }

    /* renamed from: a */
    public static void m4168a(String str, byte[] bArr, LogConfig c1730at) throws Throwable {
        C1720aj c1720ajM3999a;
        OutputStream outputStreamM4035a = null;
        try {
            if (m4169a(c1730at.f5054a, str)) {
                return;
            }
            File file = new File(c1730at.f5054a);
            if (!file.exists()) {
                file.mkdirs();
            }
            c1720ajM3999a = C1720aj.m3999a(file, c1730at.f5055b);
            try {
                c1720ajM3999a.m4025a(c1730at.f5057d);
                byte[] bArrM3998b = c1730at.f5058e.m3998b(bArr);
                C1720aj.a aVarM4026b = c1720ajM3999a.m4026b(str);
                outputStreamM4035a = aVarM4026b.m4035a();
                outputStreamM4035a.write(bArrM3998b);
                aVarM4026b.m4036b();
                c1720ajM3999a.m4028c();
                try {
                    outputStreamM4035a.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                try {
                    c1720ajM3999a.close();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            } catch (Throwable th3) {
                th = th3;
                if (outputStreamM4035a != null) {
                    try {
                        outputStreamM4035a.close();
                    } catch (Throwable th4) {
                        th4.printStackTrace();
                    }
                }
                if (c1720ajM3999a == null) {
                    throw th;
                }
                try {
                    c1720ajM3999a.close();
                    throw th;
                } catch (Throwable th5) {
                    th5.printStackTrace();
                    throw th;
                }
            }
        } catch (Throwable th6) {
            th = th6;
            c1720ajM3999a = null;
        }
    }

    /* renamed from: a */
    public static boolean m4169a(String str, String str2) {
        try {
            return new File(str, str2 + ".0").exists();
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "leg", "fet");
            return false;
        }
    }

    /* renamed from: a */
    public static byte[] m4170a(C1720aj c1720aj, LogConfig c1730at, List<String> list) {
        try {
            File fileM4027b = c1720aj.m4027b();
            if (fileM4027b != null && fileM4027b.exists()) {
                int length = 0;
                for (String str : fileM4027b.list()) {
                    if (str.contains(".0")) {
                        String str2 = str.split("\\.")[0];
                        byte[] bArrM4196a = C1736az.m4196a(c1720aj, str2);
                        length += bArrM4196a.length;
                        list.add(str2);
                        if (length > c1730at.f5059f.mo4211b()) {
                            break;
                        }
                        c1730at.f5060g.mo4203b(bArrM4196a);
                    }
                }
                if (length <= 0) {
                    return null;
                }
                return c1730at.f5060g.m4206a();
            }
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "leg", "gCo");
        }
        return new byte[0];
    }
}
