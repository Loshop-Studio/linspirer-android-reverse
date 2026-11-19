package com.p061ta.utdid2.device;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.huawei.hem.CompilerOutline;
import com.p061ta.p062a.C1866a;
import com.p061ta.p062a.p065c.C1881e;
import com.p061ta.p062a.p065c.C1882f;
import com.p061ta.utdid2.p066a.p067a.C1883a;
import com.p061ta.utdid2.p066a.p067a.C1884b;
import com.p061ta.utdid2.p066a.p067a.C1885c;
import com.p061ta.utdid2.p066a.p067a.C1886d;
import com.p061ta.utdid2.p068b.p069a.C1888a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.ta.utdid2.device.d */
/* loaded from: classes.dex */
public class C1892d {

    /* renamed from: a */
    public static C1892d f6027a;

    /* renamed from: a */
    public C1888a f6033a;

    /* renamed from: d */
    public String f6034d = null;
    public Context mContext;

    /* renamed from: b */
    public static Pattern f6029b = Pattern.compile("[^0-9a-zA-Z=/+]+");

    /* renamed from: a */
    public static final Object f6028a = new Object();

    /* renamed from: f */
    public static final String f6031f = CompilerOutline.m1762g(CompilerOutline.m1765j(".UTSystemConfig"), File.separator, "Global");

    /* renamed from: e */
    public static int f6030e = 0;

    /* renamed from: g */
    public static String f6032g = "";

    public C1892d(Context context) {
        this.mContext = null;
        this.f6033a = null;
        this.mContext = context;
        C1866a.m5365a().m5369a(context);
        this.f6033a = new C1888a(context, f6031f, "Alvin2");
    }

    /* renamed from: a */
    public static C1892d m5436a(Context context) {
        if (context != null && f6027a == null) {
            synchronized (f6028a) {
                if (f6027a == null) {
                    f6027a = new C1892d(context);
                }
            }
        }
        return f6027a;
    }

    /* renamed from: b */
    public static String m5438b(byte[] bArr) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(new SecretKeySpec(C1881e.m5399b(new byte[]{69, 114, 116, -33, 125, -54, -31, 86, -11, 11, -78, -96, -17, -99, 64, 23, -95, -126, -82, -64, 113, 116, -16, -103, 49, -30, 9, -39, 33, -80, -68, -78, -117, 53, 30, -122, 64, -104, 74, -49, 106, 85, -38, -93}), mac.getAlgorithm()));
        return C1883a.encodeToString(mac.doFinal(bArr), 2);
    }

    /* renamed from: c */
    private void m5439c(String str) {
        if (m5440c(str)) {
            f6030e = 6;
            C1882f.m5404a("UTUtdid", "utdid type:", 6);
            this.f6033a.m5420a(str, f6030e);
        }
    }

    /* renamed from: p */
    private String m5441p() {
        String strM5442q = m5442q();
        if (m5440c(strM5442q)) {
            if (TextUtils.isEmpty(strM5442q) || !strM5442q.endsWith("\n")) {
                this.f6034d = strM5442q;
            } else {
                this.f6034d = strM5442q.substring(0, strM5442q.length() - 1);
            }
            return this.f6034d;
        }
        try {
            byte[] bArrM5437a = m5437a();
            if (bArrM5437a == null) {
                return null;
            }
            String strEncodeToString = C1883a.encodeToString(bArrM5437a, 2);
            this.f6034d = strEncodeToString;
            f6030e = 6;
            m5439c(strEncodeToString);
            return this.f6034d;
        } catch (Exception e) {
            C1882f.m5403a("", e, new Object[0]);
            return null;
        }
    }

    /* renamed from: q */
    private String m5442q() {
        String strM5421k = this.f6033a.m5421k();
        if (!m5440c(strM5421k)) {
            C1882f.m5404a("UTUtdid", "read utdid is null");
            Log.d("UTUtdid", "read utdid is null");
            return null;
        }
        int iM5419a = this.f6033a.m5419a();
        if (iM5419a == 0) {
            f6030e = 1;
        } else {
            f6030e = iM5419a;
        }
        C1882f.m5404a("UTUtdid", "get utdid from sp. type", Integer.valueOf(f6030e));
        return strM5421k;
    }

    public static void setExtendFactor(String str) {
        f6032g = str;
    }

    public static void setType(int i) {
        f6030e = i;
    }

    public synchronized String getValue() {
        if (this.f6034d != null) {
            return this.f6034d;
        }
        return m5441p();
    }

    /* renamed from: c */
    public static boolean m5440c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.endsWith("\n")) {
            str = str.substring(0, str.length() - 1);
        }
        if (24 == str.length()) {
            return !f6029b.matcher(str).find();
        }
        return false;
    }

    /* renamed from: a */
    private byte[] m5437a() {
        String str;
        C1882f.m5404a("UTUtdid", "generateUtdid");
        Log.d("UTUtdid", "generateUtdid");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int iNextInt = new Random().nextInt();
        byte[] bytes = C1884b.getBytes(iCurrentTimeMillis);
        byte[] bytes2 = C1884b.getBytes(iNextInt);
        byteArrayOutputStream.write(bytes, 0, 4);
        byteArrayOutputStream.write(bytes2, 0, 4);
        byteArrayOutputStream.write(3);
        byteArrayOutputStream.write(0);
        try {
            str = f6032g + C1885c.m5411b(this.mContext);
        } catch (Exception unused) {
            str = f6032g + new Random().nextInt();
        }
        byteArrayOutputStream.write(C1884b.getBytes(C1886d.m5415a(str)), 0, 4);
        byteArrayOutputStream.write(C1884b.getBytes(C1886d.m5415a(m5438b(byteArrayOutputStream.toByteArray()))));
        return byteArrayOutputStream.toByteArray();
    }
}
