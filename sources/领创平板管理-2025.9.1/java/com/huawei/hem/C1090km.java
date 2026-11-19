package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import com.alibaba.sdk.android.tbrest.request.BizRequest;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.C0834am;
import com.huawei.hem.C0834am.f;
import com.huawei.hem.C1116lm;
import com.huawei.hem.C1440yl;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: Http2Reader.java */
/* renamed from: com.huawei.hem.km */
/* loaded from: classes.dex */
public final class C1090km implements Closeable {

    /* renamed from: e */
    public static final Logger f3135e = Logger.getLogger(C1465zl.class.getName());

    /* renamed from: a */
    public final InterfaceC1066jn f3136a;

    /* renamed from: b */
    public final a f3137b;

    /* renamed from: c */
    public final boolean f3138c;

    /* renamed from: d */
    public final C1440yl.a f3139d;

    /* compiled from: Http2Reader.java */
    /* renamed from: com.huawei.hem.km$a */
    public static final class a implements InterfaceC0836ao {

        /* renamed from: a */
        public final InterfaceC1066jn f3140a;

        /* renamed from: b */
        public int f3141b;

        /* renamed from: c */
        public byte f3142c;

        /* renamed from: d */
        public int f3143d;

        /* renamed from: e */
        public int f3144e;

        /* renamed from: f */
        public short f3145f;

        public a(InterfaceC1066jn interfaceC1066jn) {
            this.f3140a = interfaceC1066jn;
        }

        @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // com.huawei.hem.InterfaceC0836ao
        /* renamed from: e */
        public long mo1380e(C1016hn c1016hn, long j) {
            int i;
            int i2;
            do {
                int i3 = this.f3144e;
                if (i3 != 0) {
                    long jMo1380e = this.f3140a.mo1380e(c1016hn, Math.min(j, i3));
                    if (jMo1380e == -1) {
                        return -1L;
                    }
                    this.f3144e = (int) (this.f3144e - jMo1380e);
                    return jMo1380e;
                }
                this.f3140a.skip(this.f3145f);
                this.f3145f = (short) 0;
                if ((this.f3142c & 4) != 0) {
                    return -1L;
                }
                i = this.f3143d;
                int iM2213h = C1090km.m2213h(this.f3140a);
                this.f3144e = iM2213h;
                this.f3141b = iM2213h;
                byte b = (byte) (this.f3140a.readByte() & Base64.EQUALS_SIGN_ENC);
                this.f3142c = (byte) (this.f3140a.readByte() & Base64.EQUALS_SIGN_ENC);
                if (C1090km.f3135e.isLoggable(Level.FINE)) {
                    C1090km.f3135e.fine(C1465zl.m3175a(true, this.f3143d, this.f3141b, b, this.f3142c));
                }
                i2 = this.f3140a.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                this.f3143d = i2;
                if (b != 9) {
                    C1465zl.m3177c("%s != TYPE_CONTINUATION", Byte.valueOf(b));
                    throw null;
                }
            } while (i2 == i);
            C1465zl.m3177c("TYPE_CONTINUATION streamId changed", new Object[0]);
            throw null;
        }

        @Override // com.huawei.hem.InterfaceC0836ao
        /* renamed from: n */
        public C0862bo mo1381n() {
            return this.f3140a.mo1381n();
        }
    }

    /* compiled from: Http2Reader.java */
    /* renamed from: com.huawei.hem.km$b */
    public interface b {
    }

    public C1090km(InterfaceC1066jn interfaceC1066jn, boolean z) {
        this.f3136a = interfaceC1066jn;
        this.f3138c = z;
        a aVar = new a(interfaceC1066jn);
        this.f3137b = aVar;
        this.f3139d = new C1440yl.a(4096, aVar);
    }

    /* renamed from: a */
    public static int m2212a(int i, byte b2, short s) {
        if ((b2 & 8) != 0) {
            i--;
        }
        if (s <= i) {
            return (short) (i - s);
        }
        C1465zl.m3177c("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
        throw null;
    }

    /* renamed from: h */
    public static int m2213h(InterfaceC1066jn interfaceC1066jn) {
        return (interfaceC1066jn.readByte() & Base64.EQUALS_SIGN_ENC) | ((interfaceC1066jn.readByte() & Base64.EQUALS_SIGN_ENC) << 16) | ((interfaceC1066jn.readByte() & Base64.EQUALS_SIGN_ENC) << 8);
    }

    /* renamed from: c */
    public boolean m2214c(boolean z, b bVar) throws IOException {
        boolean z2;
        boolean z3;
        long j;
        try {
            this.f3136a.mo1977G(9L);
            int iM2213h = m2213h(this.f3136a);
            if (iM2213h < 0 || iM2213h > 16384) {
                C1465zl.m3177c("FRAME_SIZE_ERROR: %s", Integer.valueOf(iM2213h));
                throw null;
            }
            byte b2 = (byte) (this.f3136a.readByte() & Base64.EQUALS_SIGN_ENC);
            if (z && b2 != 4) {
                C1465zl.m3177c("Expected a SETTINGS frame but was %s", Byte.valueOf(b2));
                throw null;
            }
            byte b3 = (byte) (this.f3136a.readByte() & Base64.EQUALS_SIGN_ENC);
            int i = this.f3136a.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            if (f3135e.isLoggable(Level.FINE)) {
                f3135e.fine(C1465zl.m3175a(true, i, iM2213h, b2, b3));
            }
            switch (b2) {
                case 0:
                    if (i == 0) {
                        C1465zl.m3177c("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
                        throw null;
                    }
                    boolean z4 = (b3 & 1) != 0;
                    if ((b3 & BizRequest.FLAGS_GET_CONFIG) != 0) {
                        C1465zl.m3177c("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
                        throw null;
                    }
                    short s = (b3 & 8) != 0 ? (short) (this.f3136a.readByte() & Base64.EQUALS_SIGN_ENC) : (short) 0;
                    int iM2212a = m2212a(iM2213h, b3, s);
                    InterfaceC1066jn interfaceC1066jn = this.f3136a;
                    C0834am.g gVar = (C0834am.g) bVar;
                    if (C0834am.this.m1370g(i)) {
                        C0834am c0834am = C0834am.this;
                        if (c0834am == null) {
                            throw null;
                        }
                        C1016hn c1016hn = new C1016hn();
                        long j2 = iM2212a;
                        interfaceC1066jn.mo1977G(j2);
                        interfaceC1066jn.mo1380e(c1016hn, j2);
                        if (c1016hn.f2884b != j2) {
                            throw new IOException(c1016hn.f2884b + " != " + iM2212a);
                        }
                        c0834am.m1369f(new C0938em(c0834am, "OkHttp %s Push Data[%s]", new Object[]{c0834am.f2220d, Integer.valueOf(i)}, i, c1016hn, iM2212a, z4));
                    } else {
                        C1116lm c1116lmM1367c = C0834am.this.m1367c(i);
                        if (c1116lmM1367c == null) {
                            C0834am.this.m1364N(i, EnumC1390wl.PROTOCOL_ERROR);
                            long j3 = iM2212a;
                            C0834am.this.m1373j(j3);
                            interfaceC1066jn.skip(j3);
                        } else {
                            C1116lm.b bVar2 = c1116lmM1367c.f3207g;
                            long j4 = iM2212a;
                            if (bVar2 == null) {
                                throw null;
                            }
                            while (true) {
                                if (j4 > 0) {
                                    synchronized (C1116lm.this) {
                                        z2 = bVar2.f3222f;
                                        z3 = bVar2.f3218b.f2884b + j4 > bVar2.f3219c;
                                    }
                                    if (z3) {
                                        interfaceC1066jn.skip(j4);
                                        C1116lm.this.m2331e(EnumC1390wl.FLOW_CONTROL_ERROR);
                                    } else if (z2) {
                                        interfaceC1066jn.skip(j4);
                                    } else {
                                        long jMo1380e = interfaceC1066jn.mo1380e(bVar2.f3217a, j4);
                                        if (jMo1380e == -1) {
                                            throw new EOFException();
                                        }
                                        j4 -= jMo1380e;
                                        synchronized (C1116lm.this) {
                                            if (bVar2.f3221e) {
                                                j = bVar2.f3217a.f2884b;
                                                bVar2.f3217a.m1996a();
                                            } else {
                                                boolean z5 = bVar2.f3218b.f2884b == 0;
                                                bVar2.f3218b.mo2009q(bVar2.f3217a);
                                                if (z5) {
                                                    C1116lm.this.notifyAll();
                                                }
                                                j = 0;
                                            }
                                        }
                                        if (j > 0) {
                                            bVar2.m2338a(j);
                                        }
                                    }
                                }
                            }
                            if (z4) {
                                c1116lmM1367c.m2335i(C1314tk.f3817c, true);
                            }
                        }
                    }
                    this.f3136a.skip(s);
                    return true;
                case 1:
                    if (i == 0) {
                        C1465zl.m3177c("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
                        throw null;
                    }
                    boolean z6 = (b3 & 1) != 0;
                    short s2 = (b3 & 8) != 0 ? (short) (this.f3136a.readByte() & Base64.EQUALS_SIGN_ENC) : (short) 0;
                    if ((b3 & BizRequest.FLAGS_GET_CONFIG) != 0) {
                        m2219j(bVar, i);
                        iM2213h -= 5;
                    }
                    List<C1415xl> listM2217g = m2217g(m2212a(iM2213h, b3, s2), s2, b3, i);
                    C0834am.g gVar2 = (C0834am.g) bVar;
                    if (C0834am.this.m1370g(i)) {
                        C0834am c0834am2 = C0834am.this;
                        if (c0834am2 == null) {
                            throw null;
                        }
                        c0834am2.m1369f(new C0912dm(c0834am2, "OkHttp %s Push Headers[%s]", new Object[]{c0834am2.f2220d, Integer.valueOf(i)}, i, listM2217g, z6));
                        return true;
                    }
                    synchronized (C0834am.this) {
                        C1116lm c1116lmM1367c2 = C0834am.this.m1367c(i);
                        if (c1116lmM1367c2 != null) {
                            c1116lmM1367c2.m2335i(C1314tk.m2744B(listM2217g), z6);
                        } else if (!C0834am.this.f2223g) {
                            if (i > C0834am.this.f2221e) {
                                if (i % 2 != C0834am.this.f2222f % 2) {
                                    C1116lm c1116lm = new C1116lm(i, C0834am.this, false, z6, C1314tk.m2744B(listM2217g));
                                    C0834am.this.f2221e = i;
                                    C0834am.this.f2219c.put(Integer.valueOf(i), c1116lm);
                                    C0834am.f2216y.execute(new C0990gm(gVar2, "OkHttp %s stream %d", new Object[]{C0834am.this.f2220d, Integer.valueOf(i)}, c1116lm));
                                }
                            }
                        }
                    }
                    return true;
                case 2:
                    if (iM2213h != 5) {
                        C1465zl.m3177c("TYPE_PRIORITY length: %d != 5", Integer.valueOf(iM2213h));
                        throw null;
                    }
                    if (i != 0) {
                        m2219j(bVar, i);
                        return true;
                    }
                    C1465zl.m3177c("TYPE_PRIORITY streamId == 0", new Object[0]);
                    throw null;
                case 3:
                    if (iM2213h != 4) {
                        C1465zl.m3177c("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(iM2213h));
                        throw null;
                    }
                    if (i == 0) {
                        C1465zl.m3177c("TYPE_RST_STREAM streamId == 0", new Object[0]);
                        throw null;
                    }
                    int i2 = this.f3136a.readInt();
                    EnumC1390wl enumC1390wlFromHttp2 = EnumC1390wl.fromHttp2(i2);
                    if (enumC1390wlFromHttp2 == null) {
                        C1465zl.m3177c("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i2));
                        throw null;
                    }
                    C0834am.g gVar3 = (C0834am.g) bVar;
                    if (C0834am.this.m1370g(i)) {
                        C0834am c0834am3 = C0834am.this;
                        c0834am3.m1369f(new C0964fm(c0834am3, "OkHttp %s Push Reset[%s]", new Object[]{c0834am3.f2220d, Integer.valueOf(i)}, i, enumC1390wlFromHttp2));
                    } else {
                        C1116lm c1116lmM1371h = C0834am.this.m1371h(i);
                        if (c1116lmM1371h != null) {
                            synchronized (c1116lmM1371h) {
                                if (c1116lmM1371h.f3211k == null) {
                                    c1116lmM1371h.f3211k = enumC1390wlFromHttp2;
                                    c1116lmM1371h.notifyAll();
                                }
                            }
                        }
                    }
                    return true;
                case 4:
                    if (i != 0) {
                        C1465zl.m3177c("TYPE_SETTINGS streamId != 0", new Object[0]);
                        throw null;
                    }
                    if ((b3 & 1) != 0) {
                        if (iM2213h != 0) {
                            C1465zl.m3177c("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                            throw null;
                        }
                        if (((C0834am.g) bVar) == null) {
                            throw null;
                        }
                        return true;
                    }
                    if (iM2213h % 6 != 0) {
                        C1465zl.m3177c("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(iM2213h));
                        throw null;
                    }
                    C1216pm c1216pm = new C1216pm();
                    for (int i3 = 0; i3 < iM2213h; i3 += 6) {
                        int i4 = this.f3136a.readShort() & 65535;
                        int i5 = this.f3136a.readInt();
                        if (i4 == 2) {
                            if (i5 != 0 && i5 != 1) {
                                C1465zl.m3177c("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                                throw null;
                            }
                        } else if (i4 == 3) {
                            i4 = 4;
                        } else if (i4 == 4) {
                            i4 = 7;
                            if (i5 < 0) {
                                C1465zl.m3177c("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                                throw null;
                            }
                        } else if (i4 == 5 && (i5 < 16384 || i5 > 16777215)) {
                            C1465zl.m3177c("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i5));
                            throw null;
                        }
                        c1216pm.m2497b(i4, i5);
                    }
                    C0834am.g gVar4 = (C0834am.g) bVar;
                    if (gVar4 == null) {
                        throw null;
                    }
                    C0834am.this.f2224h.execute(new C1015hm(gVar4, "OkHttp %s ACK Settings", new Object[]{C0834am.this.f2220d}, false, c1216pm));
                    return true;
                case 5:
                    m2220k(bVar, iM2213h, b3, i);
                    return true;
                case 6:
                    m2218i(bVar, iM2213h, b3, i);
                    return true;
                case 7:
                    m2216f(bVar, iM2213h, i);
                    return true;
                case 8:
                    m2221l(bVar, iM2213h, i);
                    return true;
                default:
                    this.f3136a.skip(iM2213h);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3136a.close();
    }

    /* renamed from: d */
    public void m2215d(b bVar) {
        if (this.f3138c) {
            if (m2214c(true, bVar)) {
                return;
            }
            C1465zl.m3177c("Required SETTINGS preface not received", new Object[0]);
            throw null;
        }
        C1091kn c1091knMo1997b = this.f3136a.mo1997b(C1465zl.f4327a.size());
        if (f3135e.isLoggable(Level.FINE)) {
            f3135e.fine(C1314tk.m2756k("<< CONNECTION %s", c1091knMo1997b.hex()));
        }
        if (C1465zl.f4327a.equals(c1091knMo1997b)) {
            return;
        }
        C1465zl.m3177c("Expected a connection header but was %s", c1091knMo1997b.utf8());
        throw null;
    }

    /* renamed from: f */
    public final void m2216f(b bVar, int i, int i2) {
        C1116lm[] c1116lmArr;
        if (i < 8) {
            C1465zl.m3177c("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
            throw null;
        }
        if (i2 != 0) {
            C1465zl.m3177c("TYPE_GOAWAY streamId != 0", new Object[0]);
            throw null;
        }
        int i3 = this.f3136a.readInt();
        int i4 = this.f3136a.readInt();
        int i5 = i - 8;
        if (EnumC1390wl.fromHttp2(i4) == null) {
            C1465zl.m3177c("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i4));
            throw null;
        }
        C1091kn c1091knMo1997b = C1091kn.EMPTY;
        if (i5 > 0) {
            c1091knMo1997b = this.f3136a.mo1997b(i5);
        }
        C0834am.g gVar = (C0834am.g) bVar;
        if (gVar == null) {
            throw null;
        }
        c1091knMo1997b.size();
        synchronized (C0834am.this) {
            c1116lmArr = (C1116lm[]) C0834am.this.f2219c.values().toArray(new C1116lm[C0834am.this.f2219c.size()]);
            C0834am.this.f2223g = true;
        }
        for (C1116lm c1116lm : c1116lmArr) {
            if (c1116lm.f3203c > i3 && c1116lm.m2333g()) {
                EnumC1390wl enumC1390wl = EnumC1390wl.REFUSED_STREAM;
                synchronized (c1116lm) {
                    if (c1116lm.f3211k == null) {
                        c1116lm.f3211k = enumC1390wl;
                        c1116lm.notifyAll();
                    }
                }
                C0834am.this.m1371h(c1116lm.f3203c);
            }
        }
    }

    /* renamed from: g */
    public final List<C1415xl> m2217g(int i, short s, byte b2, int i2) throws IOException {
        a aVar = this.f3137b;
        aVar.f3144e = i;
        aVar.f3141b = i;
        aVar.f3145f = s;
        aVar.f3142c = b2;
        aVar.f3143d = i2;
        C1440yl.a aVar2 = this.f3139d;
        while (!aVar2.f4236b.mo2017y()) {
            int i3 = aVar2.f4236b.readByte() & Base64.EQUALS_SIGN_ENC;
            if (i3 == 128) {
                throw new IOException("index == 0");
            }
            if ((i3 & 128) == 128) {
                int iM3125g = aVar2.m3125g(i3, 127) - 1;
                if (!(iM3125g >= 0 && iM3125g <= C1440yl.f4233a.length - 1)) {
                    int iM3120b = aVar2.m3120b(iM3125g - C1440yl.f4233a.length);
                    if (iM3120b >= 0) {
                        C1415xl[] c1415xlArr = aVar2.f4239e;
                        if (iM3120b < c1415xlArr.length) {
                            aVar2.f4235a.add(c1415xlArr[iM3120b]);
                        }
                    }
                    StringBuilder sbM1765j = C0948f6.m1765j("Header index too large ");
                    sbM1765j.append(iM3125g + 1);
                    throw new IOException(sbM1765j.toString());
                }
                aVar2.f4235a.add(C1440yl.f4233a[iM3125g]);
            } else if (i3 == 64) {
                C1091kn c1091knM3124f = aVar2.m3124f();
                C1440yl.m3118a(c1091knM3124f);
                aVar2.m3123e(-1, new C1415xl(c1091knM3124f, aVar2.m3124f()));
            } else if ((i3 & 64) == 64) {
                aVar2.m3123e(-1, new C1415xl(aVar2.m3122d(aVar2.m3125g(i3, 63) - 1), aVar2.m3124f()));
            } else if ((i3 & 32) == 32) {
                int iM3125g2 = aVar2.m3125g(i3, 31);
                aVar2.f4238d = iM3125g2;
                if (iM3125g2 < 0 || iM3125g2 > aVar2.f4237c) {
                    StringBuilder sbM1765j2 = C0948f6.m1765j("Invalid dynamic table size update ");
                    sbM1765j2.append(aVar2.f4238d);
                    throw new IOException(sbM1765j2.toString());
                }
                int i4 = aVar2.f4242h;
                if (iM3125g2 < i4) {
                    if (iM3125g2 == 0) {
                        aVar2.m3119a();
                    } else {
                        aVar2.m3121c(i4 - iM3125g2);
                    }
                }
            } else if (i3 == 16 || i3 == 0) {
                C1091kn c1091knM3124f2 = aVar2.m3124f();
                C1440yl.m3118a(c1091knM3124f2);
                aVar2.f4235a.add(new C1415xl(c1091knM3124f2, aVar2.m3124f()));
            } else {
                aVar2.f4235a.add(new C1415xl(aVar2.m3122d(aVar2.m3125g(i3, 15) - 1), aVar2.m3124f()));
            }
        }
        C1440yl.a aVar3 = this.f3139d;
        if (aVar3 == null) {
            throw null;
        }
        ArrayList arrayList = new ArrayList(aVar3.f4235a);
        aVar3.f4235a.clear();
        return arrayList;
    }

    /* renamed from: i */
    public final void m2218i(b bVar, int i, byte b2, int i2) {
        if (i != 8) {
            C1465zl.m3177c("TYPE_PING length != 8: %s", Integer.valueOf(i));
            throw null;
        }
        if (i2 != 0) {
            C1465zl.m3177c("TYPE_PING streamId != 0", new Object[0]);
            throw null;
        }
        int i3 = this.f3136a.readInt();
        int i4 = this.f3136a.readInt();
        boolean z = (b2 & 1) != 0;
        C0834am.g gVar = (C0834am.g) bVar;
        if (gVar == null) {
            throw null;
        }
        if (!z) {
            try {
                C0834am.this.f2224h.execute(C0834am.this.new f(true, i3, i4));
                return;
            } catch (RejectedExecutionException unused) {
                return;
            }
        }
        synchronized (C0834am.this) {
            try {
                if (i3 == 1) {
                    C0834am.this.f2228l++;
                } else if (i3 == 2) {
                    C0834am.this.f2230n++;
                } else if (i3 == 3) {
                    C0834am.this.f2231o++;
                    C0834am.this.notifyAll();
                }
            } finally {
            }
        }
    }

    /* renamed from: j */
    public final void m2219j(b bVar, int i) {
        int i2 = this.f3136a.readInt() & Integer.MIN_VALUE;
        this.f3136a.readByte();
        if (((C0834am.g) bVar) == null) {
            throw null;
        }
    }

    /* renamed from: k */
    public final void m2220k(b bVar, int i, byte b2, int i2) throws IOException {
        if (i2 == 0) {
            C1465zl.m3177c("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            throw null;
        }
        short s = (b2 & 8) != 0 ? (short) (this.f3136a.readByte() & Base64.EQUALS_SIGN_ENC) : (short) 0;
        int i3 = this.f3136a.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        List<C1415xl> listM2217g = m2217g(m2212a(i - 4, b2, s), s, b2, i2);
        C0834am c0834am = C0834am.this;
        synchronized (c0834am) {
            if (c0834am.f2240x.contains(Integer.valueOf(i3))) {
                c0834am.m1364N(i3, EnumC1390wl.PROTOCOL_ERROR);
                return;
            }
            c0834am.f2240x.add(Integer.valueOf(i3));
            try {
                c0834am.m1369f(new C0886cm(c0834am, "OkHttp %s Push Request[%s]", new Object[]{c0834am.f2220d, Integer.valueOf(i3)}, i3, listM2217g));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    /* renamed from: l */
    public final void m2221l(b bVar, int i, int i2) {
        if (i != 4) {
            C1465zl.m3177c("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
            throw null;
        }
        long j = this.f3136a.readInt() & 2147483647L;
        if (j == 0) {
            C1465zl.m3177c("windowSizeIncrement was 0", Long.valueOf(j));
            throw null;
        }
        C0834am.g gVar = (C0834am.g) bVar;
        if (i2 == 0) {
            synchronized (C0834am.this) {
                C0834am.this.f2234r += j;
                C0834am.this.notifyAll();
            }
            return;
        }
        C1116lm c1116lmM1367c = C0834am.this.m1367c(i2);
        if (c1116lmM1367c != null) {
            synchronized (c1116lmM1367c) {
                c1116lmM1367c.f3202b += j;
                if (j > 0) {
                    c1116lmM1367c.notifyAll();
                }
            }
        }
    }
}
