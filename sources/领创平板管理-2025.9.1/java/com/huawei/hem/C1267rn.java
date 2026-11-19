package com.huawei.hem;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* compiled from: Okio.java */
/* renamed from: com.huawei.hem.rn */
/* loaded from: classes.dex */
public final class C1267rn {

    /* renamed from: a */
    public static final Logger f3649a = Logger.getLogger(C1267rn.class.getName());

    /* compiled from: Okio.java */
    /* renamed from: com.huawei.hem.rn$a */
    public class a implements InterfaceC0836ao {

        /* renamed from: a */
        public final /* synthetic */ C0862bo f3650a;

        /* renamed from: b */
        public final /* synthetic */ InputStream f3651b;

        public a(C0862bo c0862bo, InputStream inputStream) {
            this.f3650a = c0862bo;
            this.f3651b = inputStream;
        }

        @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f3651b.close();
        }

        @Override // com.huawei.hem.InterfaceC0836ao
        /* renamed from: e */
        public long mo1380e(C1016hn c1016hn, long j) {
            if (j < 0) {
                throw new IllegalArgumentException(C0948f6.m1755M("byteCount < 0: ", j));
            }
            if (j == 0) {
                return 0L;
            }
            try {
                this.f3650a.mo1431f();
                C1392wn c1392wnM1984N = c1016hn.m1984N(1);
                int i = this.f3651b.read(c1392wnM1984N.f4031a, c1392wnM1984N.f4033c, (int) Math.min(j, 8192 - c1392wnM1984N.f4033c));
                if (i == -1) {
                    return -1L;
                }
                c1392wnM1984N.f4033c += i;
                long j2 = i;
                c1016hn.f2884b += j2;
                return j2;
            } catch (AssertionError e) {
                if (C1267rn.m2671c(e)) {
                    throw new IOException(e);
                }
                throw e;
            }
        }

        @Override // com.huawei.hem.InterfaceC0836ao
        /* renamed from: n */
        public C0862bo mo1381n() {
            return this.f3650a;
        }

        public String toString() {
            StringBuilder sbM1765j = C0948f6.m1765j("source(");
            sbM1765j.append(this.f3651b);
            sbM1765j.append(")");
            return sbM1765j.toString();
        }
    }

    /* renamed from: a */
    public static InterfaceC1041in m2669a(InterfaceC1467zn interfaceC1467zn) {
        return new C1342un(interfaceC1467zn);
    }

    /* renamed from: b */
    public static InterfaceC1066jn m2670b(InterfaceC0836ao interfaceC0836ao) {
        return new C1367vn(interfaceC0836ao);
    }

    /* renamed from: c */
    public static boolean m2671c(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: d */
    public static InterfaceC1467zn m2672d(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        C1292sn c1292sn = new C1292sn(socket);
        OutputStream outputStream = socket.getOutputStream();
        if (outputStream != null) {
            return new C0913dn(c1292sn, new C1242qn(c1292sn, outputStream));
        }
        throw new IllegalArgumentException("out == null");
    }

    /* renamed from: e */
    public static InterfaceC0836ao m2673e(File file) {
        if (file != null) {
            return m2674f(new FileInputStream(file), new C0862bo());
        }
        throw new IllegalArgumentException("file == null");
    }

    /* renamed from: f */
    public static InterfaceC0836ao m2674f(InputStream inputStream, C0862bo c0862bo) {
        if (inputStream != null) {
            return new a(c0862bo, inputStream);
        }
        throw new IllegalArgumentException("in == null");
    }

    /* renamed from: g */
    public static InterfaceC0836ao m2675g(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        C1292sn c1292sn = new C1292sn(socket);
        return new C0939en(c1292sn, m2674f(socket.getInputStream(), c1292sn));
    }
}
