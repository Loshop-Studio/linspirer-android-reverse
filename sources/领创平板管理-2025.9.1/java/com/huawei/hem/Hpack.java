package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import anet.channel.util.HttpConstant;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.Huffman;
import com.huawei.hms.framework.network.grs.GrsManager;
import com.taobao.accs.common.Constants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Hpack.java */
/* renamed from: com.huawei.hem.yl */
/* loaded from: classes.dex */
public final class Hpack {

    /* renamed from: a */
    public static final Http2Header[] f4233a = {new Http2Header(Http2Header.f4090i, ""), new Http2Header(Http2Header.f4087f, "GET"), new Http2Header(Http2Header.f4087f, "POST"), new Http2Header(Http2Header.f4088g, GrsManager.SEPARATOR), new Http2Header(Http2Header.f4088g, "/index.html"), new Http2Header(Http2Header.f4089h, HttpConstant.HTTP), new Http2Header(Http2Header.f4089h, HttpConstant.HTTPS), new Http2Header(Http2Header.f4086e, "200"), new Http2Header(Http2Header.f4086e, "204"), new Http2Header(Http2Header.f4086e, "206"), new Http2Header(Http2Header.f4086e, "304"), new Http2Header(Http2Header.f4086e, "400"), new Http2Header(Http2Header.f4086e, "404"), new Http2Header(Http2Header.f4086e, "500"), new Http2Header("accept-charset", ""), new Http2Header("accept-encoding", "gzip, deflate"), new Http2Header("accept-language", ""), new Http2Header("accept-ranges", ""), new Http2Header("accept", ""), new Http2Header("access-control-allow-origin", ""), new Http2Header("age", ""), new Http2Header("allow", ""), new Http2Header("authorization", ""), new Http2Header("cache-control", ""), new Http2Header("content-disposition", ""), new Http2Header("content-encoding", ""), new Http2Header("content-language", ""), new Http2Header("content-length", ""), new Http2Header("content-location", ""), new Http2Header("content-range", ""), new Http2Header("content-type", ""), new Http2Header("cookie", ""), new Http2Header("date", ""), new Http2Header("etag", ""), new Http2Header("expect", ""), new Http2Header("expires", ""), new Http2Header("from", ""), new Http2Header(Constants.KEY_HOST, ""), new Http2Header("if-match", ""), new Http2Header("if-modified-since", ""), new Http2Header("if-none-match", ""), new Http2Header("if-range", ""), new Http2Header("if-unmodified-since", ""), new Http2Header("last-modified", ""), new Http2Header("link", ""), new Http2Header("location", ""), new Http2Header("max-forwards", ""), new Http2Header("proxy-authenticate", ""), new Http2Header("proxy-authorization", ""), new Http2Header("range", ""), new Http2Header("referer", ""), new Http2Header("refresh", ""), new Http2Header("retry-after", ""), new Http2Header("server", ""), new Http2Header("set-cookie", ""), new Http2Header("strict-transport-security", ""), new Http2Header("transfer-encoding", ""), new Http2Header("user-agent", ""), new Http2Header("vary", ""), new Http2Header("via", ""), new Http2Header("www-authenticate", "")};

    /* renamed from: b */
    public static final Map<ByteString, Integer> f4234b;

    /* compiled from: Hpack.java */
    /* renamed from: com.huawei.hem.yl$a */
    public static final class a {

        /* renamed from: b */
        public final BufferedSource f4236b;

        /* renamed from: c */
        public final int f4237c;

        /* renamed from: d */
        public int f4238d;

        /* renamed from: a */
        public final List<Http2Header> f4235a = new ArrayList();

        /* renamed from: e */
        public Http2Header[] f4239e = new Http2Header[8];

        /* renamed from: f */
        public int f4240f = 7;

        /* renamed from: g */
        public int f4241g = 0;

        /* renamed from: h */
        public int f4242h = 0;

        public a(int i, Source interfaceC0836ao) {
            this.f4237c = i;
            this.f4238d = i;
            this.f4236b = C1267rn.m2670b(interfaceC0836ao);
        }

        /* renamed from: a */
        public final void m3119a() {
            Arrays.fill(this.f4239e, (Object) null);
            this.f4240f = this.f4239e.length - 1;
            this.f4241g = 0;
            this.f4242h = 0;
        }

        /* renamed from: b */
        public final int m3120b(int i) {
            return this.f4240f + 1 + i;
        }

        /* renamed from: c */
        public final int m3121c(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.f4239e.length;
                while (true) {
                    length--;
                    if (length < this.f4240f || i <= 0) {
                        break;
                    }
                    Http2Header[] c1415xlArr = this.f4239e;
                    i -= c1415xlArr[length].f4093c;
                    this.f4242h -= c1415xlArr[length].f4093c;
                    this.f4241g--;
                    i2++;
                }
                Http2Header[] c1415xlArr2 = this.f4239e;
                int i3 = this.f4240f;
                System.arraycopy(c1415xlArr2, i3 + 1, c1415xlArr2, i3 + 1 + i2, this.f4241g);
                this.f4240f += i2;
            }
            return i2;
        }

        /* renamed from: d */
        public final ByteString m3122d(int i) throws IOException {
            if (i >= 0 && i <= Hpack.f4233a.length - 1) {
                return Hpack.f4233a[i].f4091a;
            }
            int iM3120b = m3120b(i - Hpack.f4233a.length);
            if (iM3120b >= 0) {
                Http2Header[] c1415xlArr = this.f4239e;
                if (iM3120b < c1415xlArr.length) {
                    return c1415xlArr[iM3120b].f4091a;
                }
            }
            StringBuilder sbM1765j = CompilerOutline.m1765j("Header index too large ");
            sbM1765j.append(i + 1);
            throw new IOException(sbM1765j.toString());
        }

        /* renamed from: e */
        public final void m3123e(int i, Http2Header c1415xl) {
            this.f4235a.add(c1415xl);
            int i2 = c1415xl.f4093c;
            if (i != -1) {
                i2 -= this.f4239e[(this.f4240f + 1) + i].f4093c;
            }
            int i3 = this.f4238d;
            if (i2 > i3) {
                m3119a();
                return;
            }
            int iM3121c = m3121c((this.f4242h + i2) - i3);
            if (i == -1) {
                int i4 = this.f4241g + 1;
                Http2Header[] c1415xlArr = this.f4239e;
                if (i4 > c1415xlArr.length) {
                    Http2Header[] c1415xlArr2 = new Http2Header[c1415xlArr.length * 2];
                    System.arraycopy(c1415xlArr, 0, c1415xlArr2, c1415xlArr.length, c1415xlArr.length);
                    this.f4240f = this.f4239e.length - 1;
                    this.f4239e = c1415xlArr2;
                }
                int i5 = this.f4240f;
                this.f4240f = i5 - 1;
                this.f4239e[i5] = c1415xl;
                this.f4241g++;
            } else {
                this.f4239e[this.f4240f + 1 + i + iM3121c + i] = c1415xl;
            }
            this.f4242h += i2;
        }

        /* renamed from: f */
        public ByteString m3124f() {
            int i = this.f4236b.readByte() & Base64.EQUALS_SIGN_ENC;
            boolean z = (i & 128) == 128;
            int iM3125g = m3125g(i, 127);
            if (!z) {
                return this.f4236b.mo1997b(iM3125g);
            }
            Huffman c1166nm = Huffman.f3358d;
            byte[] bArrMo1971A = this.f4236b.mo1971A(iM3125g);
            if (c1166nm == null) {
                throw null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i2 = 0;
            Huffman.a aVar = c1166nm.f3359a;
            int i3 = 0;
            for (byte b : bArrMo1971A) {
                i3 = (i3 << 8) | (b & Base64.EQUALS_SIGN_ENC);
                i2 += 8;
                while (i2 >= 8) {
                    int i4 = i2 - 8;
                    aVar = aVar.f3360a[(i3 >>> i4) & 255];
                    if (aVar.f3360a == null) {
                        byteArrayOutputStream.write(aVar.f3361b);
                        i2 -= aVar.f3362c;
                        aVar = c1166nm.f3359a;
                    } else {
                        i2 = i4;
                    }
                }
            }
            while (i2 > 0) {
                Huffman.a aVar2 = aVar.f3360a[(i3 << (8 - i2)) & 255];
                if (aVar2.f3360a != null || aVar2.f3362c > i2) {
                    break;
                }
                byteArrayOutputStream.write(aVar2.f3361b);
                i2 -= aVar2.f3362c;
                aVar = c1166nm.f3359a;
            }
            return ByteString.m2224of(byteArrayOutputStream.toByteArray());
        }

        /* renamed from: g */
        public int m3125g(int i, int i2) {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int i5 = this.f4236b.readByte() & Base64.EQUALS_SIGN_ENC;
                if ((i5 & 128) == 0) {
                    return i2 + (i5 << i4);
                }
                i2 += (i5 & 127) << i4;
                i4 += 7;
            }
        }
    }

    /* compiled from: Hpack.java */
    /* renamed from: com.huawei.hem.yl$b */
    public static final class b {

        /* renamed from: a */
        public final OkioBuffer f4243a;

        /* renamed from: d */
        public boolean f4246d;

        /* renamed from: c */
        public int f4245c = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

        /* renamed from: f */
        public Http2Header[] f4248f = new Http2Header[8];

        /* renamed from: g */
        public int f4249g = 7;

        /* renamed from: h */
        public int f4250h = 0;

        /* renamed from: i */
        public int f4251i = 0;

        /* renamed from: e */
        public int f4247e = 4096;

        /* renamed from: b */
        public final boolean f4244b = true;

        public b(OkioBuffer c1016hn) {
            this.f4243a = c1016hn;
        }

        /* renamed from: a */
        public final void m3126a() {
            Arrays.fill(this.f4248f, (Object) null);
            this.f4249g = this.f4248f.length - 1;
            this.f4250h = 0;
            this.f4251i = 0;
        }

        /* renamed from: b */
        public final int m3127b(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.f4248f.length;
                while (true) {
                    length--;
                    if (length < this.f4249g || i <= 0) {
                        break;
                    }
                    Http2Header[] c1415xlArr = this.f4248f;
                    i -= c1415xlArr[length].f4093c;
                    this.f4251i -= c1415xlArr[length].f4093c;
                    this.f4250h--;
                    i2++;
                }
                Http2Header[] c1415xlArr2 = this.f4248f;
                int i3 = this.f4249g;
                System.arraycopy(c1415xlArr2, i3 + 1, c1415xlArr2, i3 + 1 + i2, this.f4250h);
                Http2Header[] c1415xlArr3 = this.f4248f;
                int i4 = this.f4249g;
                Arrays.fill(c1415xlArr3, i4 + 1, i4 + 1 + i2, (Object) null);
                this.f4249g += i2;
            }
            return i2;
        }

        /* renamed from: c */
        public final void m3128c(Http2Header c1415xl) {
            int i = c1415xl.f4093c;
            int i2 = this.f4247e;
            if (i > i2) {
                m3126a();
                return;
            }
            m3127b((this.f4251i + i) - i2);
            int i3 = this.f4250h + 1;
            Http2Header[] c1415xlArr = this.f4248f;
            if (i3 > c1415xlArr.length) {
                Http2Header[] c1415xlArr2 = new Http2Header[c1415xlArr.length * 2];
                System.arraycopy(c1415xlArr, 0, c1415xlArr2, c1415xlArr.length, c1415xlArr.length);
                this.f4249g = this.f4248f.length - 1;
                this.f4248f = c1415xlArr2;
            }
            int i4 = this.f4249g;
            this.f4249g = i4 - 1;
            this.f4248f[i4] = c1415xl;
            this.f4250h++;
            this.f4251i += i;
        }

        /* renamed from: d */
        public void m3129d(ByteString c1091kn) {
            if (this.f4244b) {
                if (Huffman.f3358d == null) {
                    throw null;
                }
                long j = 0;
                long j2 = 0;
                for (int i = 0; i < c1091kn.size(); i++) {
                    j2 += Huffman.f3357c[c1091kn.getByte(i) & Base64.EQUALS_SIGN_ENC];
                }
                if (((int) ((j2 + 7) >> 3)) < c1091kn.size()) {
                    OkioBuffer c1016hn = new OkioBuffer();
                    if (Huffman.f3358d == null) {
                        throw null;
                    }
                    int i2 = 0;
                    for (int i3 = 0; i3 < c1091kn.size(); i3++) {
                        int i4 = c1091kn.getByte(i3) & Base64.EQUALS_SIGN_ENC;
                        int i5 = Huffman.f3356b[i4];
                        byte b = Huffman.f3357c[i4];
                        j = (j << b) | i5;
                        i2 += b;
                        while (i2 >= 8) {
                            i2 -= 8;
                            c1016hn.mo2018z((int) (j >> i2));
                        }
                    }
                    if (i2 > 0) {
                        c1016hn.mo2018z((int) ((255 >>> i2) | (j << (8 - i2))));
                    }
                    ByteString c1091knM2001g = c1016hn.m2001g();
                    m3131f(c1091knM2001g.size(), 127, 128);
                    this.f4243a.m1985O(c1091knM2001g);
                    return;
                }
            }
            m3131f(c1091kn.size(), 127, 0);
            this.f4243a.m1985O(c1091kn);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00b1  */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m3130e(java.util.List<com.huawei.hem.Http2Header> r14) {
            /*
                Method dump skipped, instructions count: 237
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1440yl.b.m3130e(java.util.List):void");
        }

        /* renamed from: f */
        public void m3131f(int i, int i2, int i3) {
            if (i < i2) {
                this.f4243a.m1988R(i | i3);
                return;
            }
            this.f4243a.m1988R(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.f4243a.m1988R(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.f4243a.m1988R(i4);
        }
    }

    static {
        int i = 0;
        LinkedHashMap linkedHashMap = new LinkedHashMap(f4233a.length);
        while (true) {
            Http2Header[] c1415xlArr = f4233a;
            if (i >= c1415xlArr.length) {
                f4234b = Collections.unmodifiableMap(linkedHashMap);
                return;
            } else {
                if (!linkedHashMap.containsKey(c1415xlArr[i].f4091a)) {
                    linkedHashMap.put(f4233a[i].f4091a, Integer.valueOf(i));
                }
                i++;
            }
        }
    }

    /* renamed from: a */
    public static ByteString m3118a(ByteString c1091kn) {
        int size = c1091kn.size();
        for (int i = 0; i < size; i++) {
            byte b2 = c1091kn.getByte(i);
            if (b2 >= 65 && b2 <= 90) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("PROTOCOL_ERROR response malformed: mixed case name: ");
                sbM1765j.append(c1091kn.utf8());
                throw new IOException(sbM1765j.toString());
            }
        }
        return c1091kn;
    }
}
