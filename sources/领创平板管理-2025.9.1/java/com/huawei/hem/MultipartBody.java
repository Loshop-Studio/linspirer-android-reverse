package com.huawei.hem;

import anet.channel.util.HttpConstant;
import com.alibaba.sdk.android.tbrest.request.BizRequest;
import com.bumptech.glide.disklrucache.StrictLineReader;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Nullable;

/* compiled from: MultipartBody.java */
/* renamed from: com.huawei.hem.ck */
/* loaded from: classes.dex */
public final class MultipartBody extends AbstractC1063jk {

    /* renamed from: e */
    public static final OkHttpMediaType f2342e = OkHttpMediaType.m1421a("multipart/mixed");

    /* renamed from: f */
    public static final OkHttpMediaType f2343f;

    /* renamed from: g */
    public static final byte[] f2344g;

    /* renamed from: h */
    public static final byte[] f2345h;

    /* renamed from: i */
    public static final byte[] f2346i;

    /* renamed from: a */
    public final ByteString f2347a;

    /* renamed from: b */
    public final OkHttpMediaType f2348b;

    /* renamed from: c */
    public final List<b> f2349c;

    /* renamed from: d */
    public long f2350d = -1;

    /* compiled from: MultipartBody.java */
    /* renamed from: com.huawei.hem.ck$a */
    public static final class a {

        /* renamed from: a */
        public final ByteString f2351a;

        /* renamed from: b */
        public OkHttpMediaType f2352b;

        /* renamed from: c */
        public final List<b> f2353c;

        public a() {
            String string = UUID.randomUUID().toString();
            this.f2352b = MultipartBody.f2342e;
            this.f2353c = new ArrayList();
            this.f2351a = ByteString.encodeUtf8(string);
        }

        /* renamed from: a */
        public a m1538a(@Nullable C1438yj c1438yj, AbstractC1063jk abstractC1063jk) {
            if (c1438yj.m3110c(HttpConstant.CONTENT_TYPE) != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (c1438yj.m3110c(HttpConstant.CONTENT_LENGTH) != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Length");
            }
            this.f2353c.add(new b(c1438yj, abstractC1063jk));
            return this;
        }

        /* renamed from: b */
        public a m1539b(OkHttpMediaType c0858bk) {
            if (c0858bk == null) {
                throw new NullPointerException("type == null");
            }
            if (c0858bk.f2308b.equals("multipart")) {
                this.f2352b = c0858bk;
                return this;
            }
            throw new IllegalArgumentException("multipart != " + c0858bk);
        }
    }

    /* compiled from: MultipartBody.java */
    /* renamed from: com.huawei.hem.ck$b */
    public static final class b {

        /* renamed from: a */
        @Nullable
        public final C1438yj f2354a;

        /* renamed from: b */
        public final AbstractC1063jk f2355b;

        public b(@Nullable C1438yj c1438yj, AbstractC1063jk abstractC1063jk) {
            this.f2354a = c1438yj;
            this.f2355b = abstractC1063jk;
        }
    }

    static {
        OkHttpMediaType.m1421a("multipart/alternative");
        OkHttpMediaType.m1421a("multipart/digest");
        OkHttpMediaType.m1421a("multipart/parallel");
        f2343f = OkHttpMediaType.m1421a("multipart/form-data");
        f2344g = new byte[]{58, BizRequest.FLAGS_GET_CONFIG};
        f2345h = new byte[]{StrictLineReader.f2110CR, 10};
        f2346i = new byte[]{45, 45};
    }

    public MultipartBody(ByteString c1091kn, OkHttpMediaType c0858bk, List<b> list) {
        this.f2347a = c1091kn;
        this.f2348b = OkHttpMediaType.m1421a(c0858bk + "; boundary=" + c1091kn.utf8());
        this.f2349c = C1314tk.m2759n(list);
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: a */
    public long mo1534a() {
        long j = this.f2350d;
        if (j != -1) {
            return j;
        }
        long jM1537f = m1537f(null, true);
        this.f2350d = jM1537f;
        return jM1537f;
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: b */
    public OkHttpMediaType mo1535b() {
        return this.f2348b;
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: e */
    public void mo1536e(BufferedSink interfaceC1041in) {
        m1537f(interfaceC1041in, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public final long m1537f(@Nullable BufferedSink interfaceC1041in, boolean z) {
        OkioBuffer c1016hn;
        if (z) {
            interfaceC1041in = new OkioBuffer();
            c1016hn = interfaceC1041in;
        } else {
            c1016hn = 0;
        }
        int size = this.f2349c.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            b bVar = this.f2349c.get(i);
            C1438yj c1438yj = bVar.f2354a;
            AbstractC1063jk abstractC1063jk = bVar.f2355b;
            interfaceC1041in.mo1972B(f2346i);
            interfaceC1041in.mo1973C(this.f2347a);
            interfaceC1041in.mo1972B(f2345h);
            if (c1438yj != null) {
                int iM3113g = c1438yj.m3113g();
                for (int i2 = 0; i2 < iM3113g; i2++) {
                    interfaceC1041in.mo1978H(c1438yj.m3111d(i2)).mo1972B(f2344g).mo1978H(c1438yj.m3114h(i2)).mo1972B(f2345h);
                }
            }
            OkHttpMediaType c0858bkMo1535b = abstractC1063jk.mo1535b();
            if (c0858bkMo1535b != null) {
                interfaceC1041in.mo1978H("Content-Type: ").mo1978H(c0858bkMo1535b.f2307a).mo1972B(f2345h);
            }
            long jMo1534a = abstractC1063jk.mo1534a();
            if (jMo1534a != -1) {
                interfaceC1041in.mo1978H("Content-Length: ").mo1979I(jMo1534a).mo1972B(f2345h);
            } else if (z) {
                c1016hn.m1996a();
                return -1L;
            }
            interfaceC1041in.mo1972B(f2345h);
            if (z) {
                j += jMo1534a;
            } else {
                abstractC1063jk.mo1536e(interfaceC1041in);
            }
            interfaceC1041in.mo1972B(f2345h);
        }
        interfaceC1041in.mo1972B(f2346i);
        interfaceC1041in.mo1973C(this.f2347a);
        interfaceC1041in.mo1972B(f2346i);
        interfaceC1041in.mo1972B(f2345h);
        if (!z) {
            return j;
        }
        long j2 = j + c1016hn.f2884b;
        c1016hn.m1996a();
        return j2;
    }
}
