package com.taobao.accs.data;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.alibaba.sdk.android.tbrest.request.BizRequest;
import com.huawei.hem.C0948f6;
import com.taobao.accs.ACCSManager;
import com.taobao.accs.base.TaoBaseService;
import com.taobao.accs.client.GlobalClientInfo;
import com.taobao.accs.common.Constants;
import com.taobao.accs.net.AbstractC1940b;
import com.taobao.accs.p072ut.monitor.NetPerformanceMonitor;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.C1979g;
import com.taobao.accs.utl.JsonUtility;
import com.taobao.accs.utl.RomInfoCollecter;
import com.taobao.accs.utl.UtilityImpl;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class Message {
    public static final int EXT_HEADER_VALUE_MAX_LEN = 1023;
    public static final int FLAG_ACK_TYPE = 32;
    public static final int FLAG_BIZ_RET = 64;
    public static final int FLAG_DATA_TYPE = 32768;
    public static final int FLAG_ERR = 4096;
    public static final int FLAG_REQ_BIT1 = 16384;
    public static final int FLAG_REQ_BIT2 = 8192;
    public static final int FLAG_RET = 2048;
    public static final String KEY_BINDAPP = "ctrl_bindapp";
    public static final String KEY_BINDSERVICE = "ctrl_bindservice";
    public static final String KEY_BINDUSER = "ctrl_binduser";
    public static final String KEY_UNBINDAPP = "ctrl_unbindapp";
    public static final String KEY_UNBINDSERVICE = "ctrl_unbindservice";
    public static final String KEY_UNBINDUSER = "ctrl_unbinduser";
    public static final int MAX_RETRY_TIMES = 3;

    /* renamed from: a */
    public static int f6076a = 5;

    /* renamed from: b */
    public static long f6077b = 1;

    /* renamed from: N */
    public byte[] f6091N;

    /* renamed from: O */
    public String f6092O;

    /* renamed from: P */
    public int f6093P;

    /* renamed from: T */
    public long f6097T;

    /* renamed from: U */
    public long f6098U;

    /* renamed from: W */
    public transient NetPerformanceMonitor f6100W;

    /* renamed from: Y */
    public C1915a f6102Y;

    /* renamed from: f */
    public URL f6106f;

    /* renamed from: i */
    public short f6109i;

    /* renamed from: j */
    public short f6110j;

    /* renamed from: k */
    public short f6111k;

    /* renamed from: l */
    public byte f6112l;

    /* renamed from: m */
    public byte f6113m;

    /* renamed from: n */
    public String f6114n;

    /* renamed from: o */
    public String f6115o;

    /* renamed from: q */
    public String f6117q;

    /* renamed from: r */
    public Map<Integer, String> f6118r;

    /* renamed from: c */
    public boolean f6103c = false;

    /* renamed from: d */
    public boolean f6104d = false;

    /* renamed from: e */
    public boolean f6105e = false;

    /* renamed from: g */
    public byte f6107g = 0;

    /* renamed from: h */
    public byte f6108h = 0;

    /* renamed from: p */
    public int f6116p = -1;

    /* renamed from: s */
    public String f6119s = null;

    /* renamed from: t */
    public Integer f6120t = null;

    /* renamed from: u */
    public Integer f6121u = 0;

    /* renamed from: v */
    public String f6122v = null;

    /* renamed from: w */
    public String f6123w = null;

    /* renamed from: x */
    public Integer f6124x = null;

    /* renamed from: y */
    public String f6125y = null;

    /* renamed from: z */
    public String f6126z = null;

    /* renamed from: A */
    public String f6078A = null;

    /* renamed from: B */
    public String f6079B = null;

    /* renamed from: C */
    public String f6080C = null;

    /* renamed from: D */
    public Integer f6081D = null;

    /* renamed from: E */
    public String f6082E = null;

    /* renamed from: F */
    public String f6083F = null;

    /* renamed from: G */
    public String f6084G = null;

    /* renamed from: H */
    public String f6085H = null;

    /* renamed from: I */
    public String f6086I = null;

    /* renamed from: J */
    public String f6087J = null;

    /* renamed from: K */
    public String f6088K = null;

    /* renamed from: L */
    public String f6089L = null;

    /* renamed from: M */
    public String f6090M = null;

    /* renamed from: Q */
    public long f6094Q = 0;

    /* renamed from: R */
    public int f6095R = 0;

    /* renamed from: S */
    public int f6096S = AbstractC1940b.ACCS_RECEIVE_TIMEOUT;

    /* renamed from: V */
    public String f6099V = null;

    /* renamed from: X */
    public String f6101X = null;

    /* compiled from: Taobao */
    public enum ReqType {
        DATA,
        ACK,
        REQ,
        RES;

        public static ReqType valueOf(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? DATA : RES : REQ : ACK : DATA;
        }
    }

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.data.Message$a */
    public static class C1915a {

        /* renamed from: a */
        public int f6127a;

        /* renamed from: b */
        public String f6128b;

        public C1915a(int i, String str) {
            this.f6127a = i;
            this.f6128b = str;
        }

        /* renamed from: a */
        public int m5521a() {
            return this.f6127a;
        }

        /* renamed from: b */
        public String m5522b() {
            return this.f6128b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C1915a.class != obj.getClass()) {
                return false;
            }
            C1915a c1915a = (C1915a) obj;
            return this.f6127a == c1915a.m5521a() || this.f6128b.equals(c1915a.m5522b());
        }

        public int hashCode() {
            return this.f6128b.hashCode();
        }
    }

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.data.Message$b */
    public static class C1916b {
        public static final int INVALID = -1;
        public static final int NEED_ACK = 1;
        public static final int NO_ACK = 0;

        /* renamed from: a */
        public static int m5523a(int i) {
            return i != 0 ? 1 : 0;
        }

        /* renamed from: b */
        public static String m5524b(int i) {
            return i != 0 ? i != 1 ? "INVALID" : "NEED_ACK" : "NO_ACK";
        }
    }

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.data.Message$c */
    public static class C1917c {
        public static final int CONTROL = 0;
        public static final int DATA = 1;
        public static final int HANDSHAKE = 3;
        public static final int INVALID = -1;
        public static final int PING = 2;

        /* renamed from: a */
        public static int m5525a(int i) {
            int i2 = 1;
            if (i != 1) {
                i2 = 2;
                if (i != 2) {
                    i2 = 3;
                    if (i != 3) {
                        return 0;
                    }
                }
            }
            return i2;
        }

        /* renamed from: b */
        public static String m5526b(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "INVALID" : "HANDSHAKE" : "PING" : "DATA" : "CONTROL";
        }
    }

    public Message() {
        synchronized (Message.class) {
            this.f6097T = System.currentTimeMillis();
            String str = String.valueOf(this.f6097T) + "." + String.valueOf(f6077b);
            this.f6117q = str;
            long j = f6077b;
            f6077b = 1 + j;
            this.f6102Y = new C1915a((int) j, str);
        }
    }

    /* renamed from: j */
    private String m5508j() {
        return "Msg_" + this.f6101X;
    }

    /* renamed from: a */
    public int m5509a() {
        return this.f6116p;
    }

    /* renamed from: b */
    public String m5513b() {
        return this.f6117q;
    }

    /* renamed from: c */
    public boolean m5514c() {
        return Constants.TARGET_CONTROL.equals(this.f6114n);
    }

    /* renamed from: d */
    public C1915a m5515d() {
        return this.f6102Y;
    }

    /* renamed from: e */
    public NetPerformanceMonitor m5516e() {
        return this.f6100W;
    }

    /* renamed from: f */
    public String m5517f() {
        String str = this.f6119s;
        return str == null ? "" : str;
    }

    /* renamed from: g */
    public boolean m5518g() {
        boolean z = (System.currentTimeMillis() - this.f6097T) + this.f6094Q >= ((long) this.f6096S);
        if (z) {
            String strM5508j = m5508j();
            StringBuilder sbM1765j = C0948f6.m1765j("delay time:");
            sbM1765j.append(this.f6094Q);
            sbM1765j.append(" beforeSendTime:");
            sbM1765j.append(System.currentTimeMillis() - this.f6097T);
            sbM1765j.append(" timeout");
            sbM1765j.append(this.f6096S);
            ALog.m5728e(strM5508j, sbM1765j.toString(), new Object[0]);
        }
        return z;
    }

    /* renamed from: h */
    public void m5519h() throws IOException {
        GZIPOutputStream gZIPOutputStream;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            try {
            } catch (Exception unused) {
                return;
            }
        } catch (Throwable th2) {
            gZIPOutputStream = null;
            th = th2;
            byteArrayOutputStream = null;
        }
        if (this.f6091N == null) {
            return;
        }
        byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(this.f6091N);
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (byteArray != null && byteArray.length < this.f6091N.length) {
                    this.f6091N = byteArray;
                    this.f6107g = (byte) 1;
                }
                gZIPOutputStream.close();
            } catch (Throwable th3) {
                th = th3;
                try {
                    ALog.m5731w(m5508j(), "compressData fail", th, new Object[0]);
                    if (gZIPOutputStream != null) {
                        gZIPOutputStream.close();
                    }
                    if (byteArrayOutputStream == null) {
                        return;
                    }
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    if (gZIPOutputStream != null) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Exception unused2) {
                            throw th4;
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            gZIPOutputStream = null;
            th = th5;
        }
        byteArrayOutputStream.close();
    }

    /* renamed from: i */
    public void m5520i() {
        Integer num = this.f6120t;
        if (num == null || num.intValue() == 100 || this.f6120t.intValue() == 102) {
            return;
        }
        this.f6091N = new JsonUtility.JsonObjectBuilder().put("command", this.f6120t.intValue() == 100 ? null : this.f6120t).put(Constants.KEY_APP_KEY, this.f6122v).put(Constants.KEY_OS_TYPE, this.f6124x).put("sign", this.f6123w).put(Constants.KEY_SDK_VERSION, this.f6081D).put("appVersion", this.f6080C).put(Constants.KEY_TTID, this.f6082E).put(Constants.KEY_MODEL, this.f6086I).put(Constants.KEY_BRAND, this.f6087J).put(Constants.KEY_IMEI, this.f6088K).put(Constants.KEY_IMSI, this.f6089L).put(Constants.KEY_OS_VERSION, this.f6125y).put(Constants.KEY_EXTS, this.f6079B).build().toString().getBytes("utf-8");
    }

    /* renamed from: b */
    public static Message m5502b(AbstractC1940b abstractC1940b, Intent intent) {
        Message messageM5494a = null;
        try {
            String stringExtra = intent.getStringExtra(Constants.KEY_PACKAGE_NAME);
            String stringExtra2 = intent.getStringExtra(Constants.KEY_SERVICE_ID);
            intent.getStringExtra(Constants.KEY_USER_ID);
            intent.getStringExtra(Constants.KEY_APP_KEY);
            intent.getStringExtra("sid");
            intent.getStringExtra(Constants.KEY_ANTI_BRUSH_COOKIE);
            messageM5494a = m5494a(stringExtra, stringExtra2);
            messageM5494a.f6101X = abstractC1940b.f6221m;
            m5499a(abstractC1940b, messageM5494a);
            return messageM5494a;
        } catch (Throwable th) {
            ALog.m5727e("Msg", "buildBindService", th, new Object[0]);
            th.printStackTrace();
            return messageM5494a;
        }
    }

    /* renamed from: c */
    public static Message m5504c(AbstractC1940b abstractC1940b, Intent intent) {
        Message messageM5503b = null;
        try {
            String stringExtra = intent.getStringExtra(Constants.KEY_PACKAGE_NAME);
            String stringExtra2 = intent.getStringExtra(Constants.KEY_SERVICE_ID);
            intent.getStringExtra(Constants.KEY_USER_ID);
            intent.getStringExtra(Constants.KEY_APP_KEY);
            intent.getStringExtra("sid");
            intent.getStringExtra(Constants.KEY_ANTI_BRUSH_COOKIE);
            messageM5503b = m5503b(stringExtra, stringExtra2);
            messageM5503b.f6101X = abstractC1940b.f6221m;
            m5499a(abstractC1940b, messageM5503b);
            return messageM5503b;
        } catch (Exception e) {
            ALog.m5727e("Msg", "buildUnbindService", e, new Object[0]);
            e.printStackTrace();
            return messageM5503b;
        }
    }

    /* renamed from: d */
    public static Message m5506d(AbstractC1940b abstractC1940b, Intent intent) {
        Message messageM5505c = null;
        try {
            String stringExtra = intent.getStringExtra(Constants.KEY_PACKAGE_NAME);
            String stringExtra2 = intent.getStringExtra(Constants.KEY_USER_ID);
            intent.getStringExtra(Constants.KEY_APP_KEY);
            intent.getStringExtra("sid");
            intent.getStringExtra(Constants.KEY_ANTI_BRUSH_COOKIE);
            messageM5505c = m5505c(stringExtra, stringExtra2);
            if (messageM5505c != null) {
                messageM5505c.f6101X = abstractC1940b.f6221m;
                m5499a(abstractC1940b, messageM5505c);
            }
        } catch (Exception e) {
            ALog.m5727e("Msg", "buildBindUser", e, new Object[0]);
            e.printStackTrace();
        }
        return messageM5505c;
    }

    /* renamed from: e */
    public static Message m5507e(AbstractC1940b abstractC1940b, Intent intent) {
        Message messageM5492a = null;
        try {
            String stringExtra = intent.getStringExtra(Constants.KEY_PACKAGE_NAME);
            intent.getStringExtra(Constants.KEY_USER_ID);
            intent.getStringExtra(Constants.KEY_APP_KEY);
            intent.getStringExtra("sid");
            intent.getStringExtra(Constants.KEY_ANTI_BRUSH_COOKIE);
            messageM5492a = m5492a(stringExtra);
            messageM5492a.f6101X = abstractC1940b.f6221m;
            m5499a(abstractC1940b, messageM5492a);
            return messageM5492a;
        } catch (Exception e) {
            ALog.m5727e("Msg", "buildUnbindUser", e, new Object[0]);
            e.printStackTrace();
            return messageM5492a;
        }
    }

    /* renamed from: a */
    public void m5511a(long j) {
        this.f6098U = j;
    }

    /* renamed from: a */
    public byte[] m5512a(Context context, int i) throws IOException {
        byte[] bytes;
        try {
            m5520i();
        } catch (UnsupportedEncodingException e) {
            ALog.m5727e(m5508j(), "build2", e, new Object[0]);
        } catch (JSONException e2) {
            ALog.m5727e(m5508j(), "build1", e2, new Object[0]);
        }
        String str = this.f6091N != null ? new String(this.f6091N) : "";
        m5519h();
        if (!this.f6103c) {
            StringBuilder sb = new StringBuilder();
            sb.append(UtilityImpl.getDeviceId(context));
            sb.append("|");
            sb.append(this.f6119s);
            sb.append("|");
            String str2 = this.f6085H;
            if (str2 == null) {
                str2 = "";
            }
            sb.append(str2);
            sb.append("|");
            String str3 = this.f6084G;
            if (str3 == null) {
                str3 = "";
            }
            sb.append(str3);
            this.f6115o = sb.toString();
        }
        try {
            bytes = (this.f6117q + "").getBytes("utf-8");
            this.f6113m = (byte) this.f6115o.getBytes("utf-8").length;
            this.f6112l = (byte) this.f6114n.getBytes("utf-8").length;
        } catch (Exception e3) {
            e3.printStackTrace();
            ALog.m5727e(m5508j(), "build3", e3, new Object[0]);
            bytes = (this.f6117q + "").getBytes();
            this.f6113m = (byte) this.f6115o.getBytes().length;
            this.f6112l = (byte) this.f6114n.getBytes().length;
        }
        short sM5510a = m5510a(this.f6118r);
        int length = this.f6112l + 3 + 1 + this.f6113m + 1 + bytes.length;
        byte[] bArr = this.f6091N;
        short length2 = (short) (length + (bArr == null ? 0 : bArr.length) + sM5510a + 2);
        this.f6110j = length2;
        this.f6109i = (short) (length2 + 2);
        C1979g c1979g = new C1979g(this.f6109i + 2 + 4);
        if (ALog.isPrintLog(ALog.Level.D)) {
            ALog.m5726d(m5508j(), "Build Message", Constants.KEY_DATA_ID, new String(bytes));
        }
        try {
            c1979g.m5783a((byte) (this.f6107g | BizRequest.FLAGS_GET_CONFIG));
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\tversion:2 compress:" + ((int) this.f6107g), new Object[0]);
            }
            if (i == 0) {
                c1979g.m5783a((byte) -128);
                if (ALog.isPrintLog(ALog.Level.D)) {
                    ALog.m5726d(m5508j(), "\tflag: 0x80", new Object[0]);
                }
            } else {
                c1979g.m5783a((byte) 64);
                if (ALog.isPrintLog(ALog.Level.D)) {
                    ALog.m5726d(m5508j(), "\tflag: 0x40", new Object[0]);
                }
            }
            c1979g.m5784a(this.f6109i);
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\ttotalLength:" + ((int) this.f6109i), new Object[0]);
            }
            c1979g.m5784a(this.f6110j);
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\tdataLength:" + ((int) this.f6110j), new Object[0]);
            }
            c1979g.m5784a(this.f6111k);
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\tflags:" + Integer.toHexString(this.f6111k), new Object[0]);
            }
            c1979g.m5783a(this.f6112l);
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\ttargetLength:" + ((int) this.f6112l), new Object[0]);
            }
            c1979g.write(this.f6114n.getBytes("utf-8"));
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\ttarget:" + this.f6114n, new Object[0]);
            }
            c1979g.m5783a(this.f6113m);
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\tsourceLength:" + ((int) this.f6113m), new Object[0]);
            }
            c1979g.write(this.f6115o.getBytes("utf-8"));
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\tsource:" + this.f6115o, new Object[0]);
            }
            c1979g.m5783a((byte) bytes.length);
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\tdataIdLength:" + bytes.length, new Object[0]);
            }
            c1979g.write(bytes);
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\tdataId:" + new String(bytes), new Object[0]);
            }
            c1979g.m5784a(sM5510a);
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\textHeader len:" + ((int) sM5510a), new Object[0]);
            }
            if (this.f6118r != null) {
                Iterator<Integer> it = this.f6118r.keySet().iterator();
                while (it.hasNext()) {
                    int iIntValue = it.next().intValue();
                    String str4 = this.f6118r.get(Integer.valueOf(iIntValue));
                    if (!TextUtils.isEmpty(str4)) {
                        c1979g.m5784a((short) ((((short) iIntValue) << 10) | ((short) (str4.getBytes("utf-8").length & EXT_HEADER_VALUE_MAX_LEN))));
                        c1979g.write(str4.getBytes("utf-8"));
                        if (ALog.isPrintLog(ALog.Level.D)) {
                            ALog.m5726d(m5508j(), "\textHeader key:" + iIntValue + " value:" + str4, new Object[0]);
                        }
                    }
                }
            }
            if (this.f6091N != null) {
                c1979g.write(this.f6091N);
            }
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d(m5508j(), "\toriData:" + str, new Object[0]);
            }
            c1979g.flush();
        } catch (IOException e4) {
            ALog.m5727e(m5508j(), "build4", e4, new Object[0]);
        }
        byte[] byteArray = c1979g.toByteArray();
        try {
            c1979g.close();
        } catch (IOException e5) {
            ALog.m5727e(m5508j(), "build5", e5, new Object[0]);
        }
        return byteArray;
    }

    /* renamed from: b */
    public static Message m5503b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        Message message = new Message();
        message.f6093P = 1;
        message.m5497a(1, ReqType.DATA, 1);
        message.f6119s = str;
        message.f6085H = str2;
        message.f6114n = Constants.TARGET_CONTROL;
        message.f6120t = 6;
        message.f6119s = str;
        message.f6085H = str2;
        message.f6081D = 221;
        message.f6092O = KEY_UNBINDSERVICE;
        return message;
    }

    /* renamed from: c */
    public static Message m5505c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        Message message = new Message();
        message.f6093P = 1;
        message.m5497a(1, ReqType.DATA, 1);
        message.f6119s = str;
        message.f6084G = str2;
        message.f6114n = Constants.TARGET_CONTROL;
        message.f6120t = 3;
        message.f6119s = str;
        message.f6084G = str2;
        message.f6081D = 221;
        message.f6092O = KEY_BINDUSER;
        return message;
    }

    /* renamed from: a */
    public short m5510a(Map<Integer, String> map) {
        short length = 0;
        if (map != null) {
            try {
                Iterator<Integer> it = map.keySet().iterator();
                while (it.hasNext()) {
                    String str = map.get(Integer.valueOf(it.next().intValue()));
                    if (!TextUtils.isEmpty(str)) {
                        length = (short) (((short) (str.getBytes("utf-8").length & EXT_HEADER_VALUE_MAX_LEN)) + 2 + length);
                    }
                }
            } catch (Exception e) {
                e.toString();
            }
        }
        return length;
    }

    /* renamed from: a */
    public static Message m5496a(boolean z, int i) {
        Message message = new Message();
        message.f6116p = 2;
        message.f6120t = 201;
        message.f6104d = z;
        message.f6094Q = i;
        return message;
    }

    /* renamed from: a */
    public static Message m5485a(AbstractC1940b abstractC1940b, Context context, Intent intent) {
        Message messageM5484a = null;
        try {
            String stringExtra = intent.getStringExtra(Constants.KEY_PACKAGE_NAME);
            intent.getStringExtra(Constants.KEY_USER_ID);
            String stringExtra2 = intent.getStringExtra(Constants.KEY_APP_KEY);
            String stringExtra3 = intent.getStringExtra(Constants.KEY_TTID);
            intent.getStringExtra("sid");
            intent.getStringExtra(Constants.KEY_ANTI_BRUSH_COOKIE);
            messageM5484a = m5484a(context, abstractC1940b.f6221m, stringExtra2, intent.getStringExtra("app_sercet"), stringExtra, stringExtra3, intent.getStringExtra("appVersion"));
            m5499a(abstractC1940b, messageM5484a);
            return messageM5484a;
        } catch (Exception e) {
            ALog.m5728e("Msg", "buildBindApp", e.getMessage());
            return messageM5484a;
        }
    }

    /* renamed from: a */
    public static Message m5484a(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        if (TextUtils.isEmpty(str4)) {
            return null;
        }
        Message message = new Message();
        message.f6093P = 1;
        message.m5497a(1, ReqType.DATA, 1);
        message.f6124x = 1;
        message.f6125y = Build.VERSION.SDK_INT + "";
        message.f6119s = str4;
        message.f6114n = Constants.TARGET_CONTROL;
        message.f6120t = 1;
        message.f6122v = str2;
        message.f6123w = UtilityImpl.m5739a(str2, str3, UtilityImpl.getDeviceId(context));
        message.f6081D = 221;
        message.f6080C = str6;
        message.f6119s = str4;
        message.f6082E = str5;
        message.f6086I = Build.MODEL;
        message.f6087J = Build.BRAND;
        message.f6092O = KEY_BINDAPP;
        message.f6101X = str;
        message.f6079B = new JsonUtility.JsonObjectBuilder().put("notifyEnable", UtilityImpl.m5770k(context)).put("romInfo", RomInfoCollecter.getCollecter().collect()).build().toString();
        return message;
    }

    /* renamed from: a */
    public static Message m5489a(AbstractC1940b abstractC1940b, Intent intent) {
        StringBuilder sbM1765j = C0948f6.m1765j("buildUnbindApp1");
        sbM1765j.append(UtilityImpl.m5740a(new Exception()));
        ALog.m5728e("Msg", sbM1765j.toString(), new Object[0]);
        Message messageM5490a = null;
        try {
            String stringExtra = intent.getStringExtra(Constants.KEY_PACKAGE_NAME);
            intent.getStringExtra(Constants.KEY_USER_ID);
            intent.getStringExtra("sid");
            intent.getStringExtra(Constants.KEY_ANTI_BRUSH_COOKIE);
            messageM5490a = m5490a(abstractC1940b, stringExtra);
            m5499a(abstractC1940b, messageM5490a);
            return messageM5490a;
        } catch (Exception e) {
            ALog.m5728e("Msg", "buildUnbindApp1", e.getMessage());
            return messageM5490a;
        }
    }

    /* renamed from: a */
    public static Message m5490a(AbstractC1940b abstractC1940b, String str) {
        Message message = null;
        try {
            ALog.m5728e("Msg", "buildUnbindApp" + UtilityImpl.m5740a(new Exception()), new Object[0]);
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            Message message2 = new Message();
            try {
                message2.f6093P = 1;
                message2.m5497a(1, ReqType.DATA, 1);
                message2.f6119s = str;
                message2.f6114n = Constants.TARGET_CONTROL;
                message2.f6120t = 2;
                message2.f6119s = str;
                message2.f6081D = 221;
                message2.f6092O = KEY_UNBINDAPP;
                m5499a(abstractC1940b, message2);
                return message2;
            } catch (Exception e) {
                e = e;
                message = message2;
                ALog.m5728e("Msg", "buildUnbindApp", e.getMessage());
                return message;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* renamed from: a */
    public static Message m5494a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        Message message = new Message();
        message.f6093P = 1;
        message.m5497a(1, ReqType.DATA, 1);
        message.f6119s = str;
        message.f6085H = str2;
        message.f6114n = Constants.TARGET_CONTROL;
        message.f6120t = 5;
        message.f6119s = str;
        message.f6085H = str2;
        message.f6081D = 221;
        message.f6092O = KEY_BINDSERVICE;
        return message;
    }

    /* renamed from: a */
    public static Message m5495a(String str, String str2, String str3, int i) {
        Message message = new Message();
        try {
            message.f6106f = new URL(str3);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        message.f6114n = Constants.TARGET_SERVICE_ST;
        message.m5497a(1, ReqType.DATA, 0);
        message.f6120t = 100;
        message.f6091N = ("0|" + i + "|" + str + "|" + AdapterUtilityImpl.getDeviceId(GlobalClientInfo.getContext()) + "|" + str2).getBytes();
        return message;
    }

    /* renamed from: a */
    public static Message m5492a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Message message = new Message();
        message.f6093P = 1;
        message.m5497a(1, ReqType.DATA, 1);
        message.f6119s = str;
        message.f6114n = Constants.TARGET_CONTROL;
        message.f6120t = 4;
        message.f6081D = 221;
        message.f6092O = KEY_UNBINDUSER;
        return message;
    }

    /* renamed from: a */
    public static Message m5486a(AbstractC1940b abstractC1940b, Context context, String str, ACCSManager.AccsRequest accsRequest) {
        return m5487a(abstractC1940b, context, str, accsRequest, true);
    }

    /* renamed from: a */
    public static Message m5487a(AbstractC1940b abstractC1940b, Context context, String str, ACCSManager.AccsRequest accsRequest, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Message message = new Message();
        message.f6093P = 1;
        message.m5497a(1, ReqType.DATA, 1);
        message.f6120t = 100;
        message.f6119s = str;
        message.f6085H = accsRequest.serviceId;
        message.f6084G = accsRequest.userId;
        message.f6091N = accsRequest.data;
        StringBuilder sbM1769n = C0948f6.m1769n(Constants.TARGET_SERVICE_PRE, TextUtils.isEmpty(accsRequest.targetServiceName) ? accsRequest.serviceId : accsRequest.targetServiceName, "|");
        String str2 = accsRequest.target;
        if (str2 == null) {
            str2 = "";
        }
        sbM1769n.append(str2);
        message.f6114n = sbM1769n.toString();
        message.f6092O = accsRequest.dataId;
        message.f6099V = accsRequest.businessId;
        int i = accsRequest.timeout;
        if (i > 0) {
            message.f6096S = i;
        }
        if (z) {
            m5500a(abstractC1940b, message, accsRequest);
        } else {
            message.f6106f = accsRequest.host;
        }
        m5498a(message, GlobalClientInfo.getInstance(context).getSid(abstractC1940b.f6221m), GlobalClientInfo.getInstance(context).getUserId(abstractC1940b.f6221m), abstractC1940b.f6217i.getStoreId(), GlobalClientInfo.f6060b, accsRequest.businessId, accsRequest.tag);
        NetPerformanceMonitor netPerformanceMonitor = new NetPerformanceMonitor();
        message.f6100W = netPerformanceMonitor;
        netPerformanceMonitor.setMsgType(0);
        message.f6100W.setDataId(accsRequest.dataId);
        message.f6100W.setServiceId(accsRequest.serviceId);
        NetPerformanceMonitor netPerformanceMonitor2 = message.f6100W;
        URL url = message.f6106f;
        netPerformanceMonitor2.setHost(url != null ? url.toString() : "");
        message.f6101X = abstractC1940b.f6221m;
        return message;
    }

    /* renamed from: a */
    public static Message m5488a(AbstractC1940b abstractC1940b, Context context, String str, String str2, ACCSManager.AccsRequest accsRequest, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Message message = new Message();
        message.f6093P = 1;
        message.m5497a(1, ReqType.REQ, 1);
        message.f6120t = 100;
        message.f6119s = str;
        message.f6085H = accsRequest.serviceId;
        message.f6084G = accsRequest.userId;
        message.f6091N = accsRequest.data;
        StringBuilder sbM1769n = C0948f6.m1769n(str2, TextUtils.isEmpty(accsRequest.targetServiceName) ? accsRequest.serviceId : accsRequest.targetServiceName, "|");
        String str3 = accsRequest.target;
        if (str3 == null) {
            str3 = "";
        }
        sbM1769n.append(str3);
        message.f6114n = sbM1769n.toString();
        message.f6092O = accsRequest.dataId;
        message.f6099V = accsRequest.businessId;
        message.f6101X = abstractC1940b.f6221m;
        int i = accsRequest.timeout;
        if (i > 0) {
            message.f6096S = i;
        }
        if (z) {
            m5500a(abstractC1940b, message, accsRequest);
        } else {
            message.f6106f = accsRequest.host;
        }
        m5498a(message, GlobalClientInfo.getInstance(context).getSid(abstractC1940b.f6221m), GlobalClientInfo.getInstance(context).getUserId(abstractC1940b.f6221m), abstractC1940b.f6217i.getStoreId(), GlobalClientInfo.f6060b, accsRequest.businessId, accsRequest.tag);
        NetPerformanceMonitor netPerformanceMonitor = new NetPerformanceMonitor();
        message.f6100W = netPerformanceMonitor;
        netPerformanceMonitor.setDataId(accsRequest.dataId);
        message.f6100W.setServiceId(accsRequest.serviceId);
        NetPerformanceMonitor netPerformanceMonitor2 = message.f6100W;
        URL url = message.f6106f;
        netPerformanceMonitor2.setHost(url != null ? url.toString() : "");
        message.f6101X = abstractC1940b.f6221m;
        return message;
    }

    /* renamed from: a */
    public static void m5500a(AbstractC1940b abstractC1940b, Message message, ACCSManager.AccsRequest accsRequest) {
        URL url = accsRequest.host;
        if (url == null) {
            try {
                message.f6106f = new URL(abstractC1940b.mo5634b((String) null));
                return;
            } catch (MalformedURLException e) {
                ALog.m5727e("Msg", "setUnit", e, new Object[0]);
                e.printStackTrace();
                return;
            }
        }
        message.f6106f = url;
    }

    /* renamed from: a */
    public static void m5499a(AbstractC1940b abstractC1940b, Message message) {
        try {
            message.f6106f = new URL(abstractC1940b.mo5634b((String) null));
        } catch (Exception e) {
            ALog.m5727e("Msg", "setControlHost", e, new Object[0]);
        }
    }

    /* renamed from: a */
    public static Message m5491a(AbstractC1940b abstractC1940b, String str, String str2, String str3, boolean z, short s, String str4, Map<Integer, String> map) {
        Message message = new Message();
        message.f6093P = 1;
        message.m5501a(s, z);
        message.f6115o = str;
        message.f6114n = str2;
        message.f6117q = str3;
        message.f6103c = true;
        message.f6118r = map;
        try {
            try {
                if (TextUtils.isEmpty(str4)) {
                    message.f6106f = new URL(abstractC1940b.mo5634b((String) null));
                } else {
                    message.f6106f = new URL(str4);
                }
                message.f6101X = abstractC1940b.f6221m;
                if (message.f6106f == null) {
                    message.f6106f = new URL(abstractC1940b.mo5634b((String) null));
                }
            } catch (Throwable th) {
                try {
                    ALog.m5727e("Msg", "buildPushAck", th, new Object[0]);
                    if (message.f6106f == null) {
                        message.f6106f = new URL(abstractC1940b.mo5634b((String) null));
                    }
                } catch (Throwable th2) {
                    if (message.f6106f == null) {
                        try {
                            message.f6106f = new URL(abstractC1940b.mo5634b((String) null));
                        } catch (MalformedURLException e) {
                            e.printStackTrace();
                        }
                    }
                    throw th2;
                }
            }
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
        }
        return message;
    }

    /* renamed from: a */
    public static Message m5493a(String str, int i) {
        Message message = new Message();
        message.m5497a(1, ReqType.ACK, 0);
        message.f6120t = Integer.valueOf(i);
        message.f6119s = str;
        return message;
    }

    /* renamed from: a */
    public static void m5498a(Message message, String str, String str2, String str3, String str4, String str5, String str6) {
        if (TextUtils.isEmpty(str5) && TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str6) && str4 == null) {
            return;
        }
        message.f6118r = new HashMap();
        if (str5 != null && UtilityImpl.m5735a(str5) <= 1023) {
            Map<Integer, String> map = message.f6118r;
            TaoBaseService.ExtHeaderType extHeaderType = TaoBaseService.ExtHeaderType.TYPE_BUSINESS;
            map.put(0, str5);
        }
        if (str != null && UtilityImpl.m5735a(str) <= 1023) {
            Map<Integer, String> map2 = message.f6118r;
            TaoBaseService.ExtHeaderType extHeaderType2 = TaoBaseService.ExtHeaderType.TYPE_SID;
            map2.put(1, str);
        }
        if (str2 != null && UtilityImpl.m5735a(str2) <= 1023) {
            Map<Integer, String> map3 = message.f6118r;
            TaoBaseService.ExtHeaderType extHeaderType3 = TaoBaseService.ExtHeaderType.TYPE_USERID;
            map3.put(2, str2);
        }
        if (str6 != null && UtilityImpl.m5735a(str6) <= 1023) {
            Map<Integer, String> map4 = message.f6118r;
            TaoBaseService.ExtHeaderType extHeaderType4 = TaoBaseService.ExtHeaderType.TYPE_TAG;
            map4.put(4, str6);
        }
        if (str4 != null && UtilityImpl.m5735a(str4) <= 1023) {
            Map<Integer, String> map5 = message.f6118r;
            TaoBaseService.ExtHeaderType extHeaderType5 = TaoBaseService.ExtHeaderType.TYPE_COOKIE;
            map5.put(3, str4);
        }
        if (str3 == null || UtilityImpl.m5735a(str3) > 1023) {
            return;
        }
        message.f6118r.put(19, str3);
    }

    /* renamed from: a */
    private void m5497a(int i, ReqType reqType, int i2) {
        this.f6116p = i;
        if (i != 2) {
            this.f6111k = (short) (((((i & 1) << 4) | (reqType.ordinal() << 2)) | i2) << 11);
        }
    }

    /* renamed from: a */
    private void m5501a(short s, boolean z) {
        this.f6116p = 1;
        this.f6111k = s;
        short s2 = (short) (s & (-16385));
        this.f6111k = s2;
        short s3 = (short) (s2 | 8192);
        this.f6111k = s3;
        short s4 = (short) (s3 & (-2049));
        this.f6111k = s4;
        short s5 = (short) (s4 & (-65));
        this.f6111k = s5;
        if (z) {
            this.f6111k = (short) (s5 | 32);
        }
    }
}
