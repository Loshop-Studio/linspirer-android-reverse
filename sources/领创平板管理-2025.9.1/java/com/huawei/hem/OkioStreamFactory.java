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
public final class OkioStreamFactory {

    /* renamed from: a */
    public static final Logger f3649a = Logger.getLogger(OkioStreamFactory.class.getName());

    /* compiled from: Okio.java */
    /* renamed from: com.huawei.hem.rn$a */
    public class a implements Source {

        /* renamed from: a */
        public final /* synthetic */ Timeout f3650a;

        /* renamed from: b */
        public final /* synthetic */ InputStream f3651b;

        public a(Timeout c0862bo, InputStream inputStream) {
            this.f3650a = c0862bo;
            this.f3651b = inputStream;
        }

        @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f3651b.close();
        }

        @Override // com.huawei.hem.InterfaceC0836ao
        /* renamed from: e */
        public long mo1380e(OkioBuffer c1016hn, long j) {
            if (j < 0) {
                throw new IllegalArgumentException(CompilerOutline.m1755M("byteCount < 0: ", j));
            }
            if (j == 0) {
                return 0L;
            }
            try {
                this.f3650a.mo1431f();
                OkioSegment c1392wnM1984N = c1016hn.m1984N(1);
                int i = this.f3651b.read(c1392wnM1984N.f4031a, c1392wnM1984N.f4033c, (int) Math.min(j, 8192 - c1392wnM1984N.f4033c));
                if (i == -1) {
                    return -1L;
                }
                c1392wnM1984N.f4033c += i;
                long j2 = i;
                c1016hn.f2884b += j2;
                return j2;
            } catch (AssertionError e) {
                if (OkioStreamFactory.m2671c(e)) {
                    throw new IOException(e);
                }
                throw e;
            }
        }

        @Override // com.huawei.hem.InterfaceC0836ao
        /* renamed from: n */
        public Timeout mo1381n() {
            return this.f3650a;
        }

        public String toString() {
            StringBuilder sbM1765j = CompilerOutline.m1765j("source(");
            sbM1765j.append(this.f3651b);
            sbM1765j.append(")");
            return sbM1765j.toString();
        }
    }

    /* renamed from: a */
    public static BufferedSink m2669a(Sink interfaceC1467zn) {
        return new RealBufferedSink(interfaceC1467zn);
    }

    /* renamed from: b */
    public static BufferedSource m2670b(Source interfaceC0836ao) {
        return new RealBufferedSource(interfaceC0836ao);
    }

    /* renamed from: c */
    public static boolean m2671c(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: d */
    public static Sink m2672d(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        SocketAsyncTimeout c1292sn = new SocketAsyncTimeout(socket);
        OutputStream outputStream = socket.getOutputStream();
        if (outputStream != null) {
            return new AsyncTimeoutSink(c1292sn, new OkioOutputStreamSink(c1292sn, outputStream));
        }
        throw new IllegalArgumentException("out == null");
    }

    /* renamed from: e */
    public static Source m2673e(File file) {
        if (file != null) {
            return m2674f(new FileInputStream(file), new Timeout());
        }
        throw new IllegalArgumentException("file == null");
    }

    /* renamed from: f */
    public static Source m2674f(InputStream inputStream, Timeout c0862bo) {
        if (inputStream != null) {
            return new a(c0862bo, inputStream);
        }
        throw new IllegalArgumentException("in == null");
    }

    /* renamed from: g */
    public static Source m2675g(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        SocketAsyncTimeout c1292sn = new SocketAsyncTimeout(socket);
        return new AsyncTimeoutSource(c1292sn, m2674f(socket.getInputStream(), c1292sn));
    }
}
