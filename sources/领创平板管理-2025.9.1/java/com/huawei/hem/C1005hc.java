package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Comparator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;

/* compiled from: FileLoggerService.java */
/* renamed from: com.huawei.hem.hc */
/* loaded from: classes.dex */
public class C1005hc {

    /* renamed from: c */
    public static final Comparator<File> f2821c = new a();

    /* renamed from: a */
    public final BlockingQueue<c> f2822a = new LinkedBlockingDeque();

    /* renamed from: b */
    public volatile boolean f2823b;

    /* compiled from: FileLoggerService.java */
    /* renamed from: com.huawei.hem.hc$a */
    public static class a implements Comparator<File> {
        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            long jLastModified = file.lastModified();
            long jLastModified2 = file2.lastModified();
            if (jLastModified < jLastModified2) {
                return -1;
            }
            return jLastModified == jLastModified2 ? 0 : 1;
        }
    }

    /* compiled from: FileLoggerService.java */
    /* renamed from: com.huawei.hem.hc$b */
    public static class b {

        /* renamed from: a */
        public static final C1005hc f2824a = new C1005hc();
    }

    /* compiled from: FileLoggerService.java */
    /* renamed from: com.huawei.hem.hc$c */
    public static class c {

        /* renamed from: a */
        public final String f2825a;

        /* renamed from: b */
        public final String f2826b;

        /* renamed from: c */
        public final String f2827c;

        /* renamed from: d */
        public final int f2828d = 0;

        /* renamed from: e */
        public final int f2829e = 0;

        /* renamed from: f */
        public long f2830f;

        /* renamed from: g */
        public boolean f2831g;

        /* compiled from: FileLoggerService.java */
        /* renamed from: com.huawei.hem.hc$c$a */
        public static class a {

            /* renamed from: a */
            public Context f2832a;

            /* renamed from: b */
            public String f2833b;

            /* renamed from: c */
            public String f2834c;

            /* renamed from: d */
            public String f2835d;

            /* renamed from: e */
            public long f2836e;

            /* renamed from: f */
            public boolean f2837f;
        }

        public c(a aVar) {
            this.f2825a = aVar.f2833b;
            this.f2826b = aVar.f2834c;
            this.f2827c = aVar.f2835d;
            this.f2830f = aVar.f2836e;
            this.f2831g = aVar.f2837f;
        }
    }

    /* compiled from: FileLoggerService.java */
    /* renamed from: com.huawei.hem.hc$d */
    public class d extends Thread {

        /* renamed from: a */
        public BufferedWriter f2838a;

        /* renamed from: b */
        public String f2839b;

        /* renamed from: c */
        public long f2840c;

        /* compiled from: FileLoggerService.java */
        /* renamed from: com.huawei.hem.hc$d$a */
        public class a implements Thread.UncaughtExceptionHandler {
            public a() {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                th.printStackTrace();
                C1005hc.this.f2823b = false;
            }
        }

        public d(a aVar) {
        }

        /* renamed from: a */
        public final void m1942a() throws IOException {
            BufferedWriter bufferedWriter = this.f2838a;
            if (bufferedWriter != null) {
                try {
                    bufferedWriter.close();
                } catch (IOException e) {
                    StringBuilder sbM1765j = C0948f6.m1765j("close writer exception:");
                    sbM1765j.append(e.getMessage());
                    C0850bc.m1393c(sbM1765j.toString());
                }
                this.f2838a = null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m1943b(com.huawei.hem.C1005hc.c r7) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 334
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1005hc.d.m1943b(com.huawei.hem.hc$c):void");
        }

        /* renamed from: c */
        public final void m1944c() {
            File[] fileArrListFiles;
            if (TextUtils.isEmpty(this.f2839b)) {
                return;
            }
            long j = this.f2840c;
            long length = 0;
            if (j <= 0) {
                throw new IllegalStateException(C0948f6.m1755M("invalid max total size: ", j));
            }
            File parentFile = new File(this.f2839b).getParentFile();
            if (parentFile == null || (fileArrListFiles = parentFile.listFiles()) == null) {
                return;
            }
            for (File file : fileArrListFiles) {
                length += file.length();
            }
            if (length <= j) {
                return;
            }
            Arrays.sort(fileArrListFiles, C1005hc.f2821c);
            long j2 = length;
            for (File file2 : fileArrListFiles) {
                long length2 = file2.length();
                if (file2.delete()) {
                    j2 -= length2;
                    if (j2 <= j) {
                        break;
                    }
                }
            }
            C0850bc.m1392b("house keeping complete: total size [" + length + "-> " + j2);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws InterruptedException, IOException {
            super.run();
            Thread.currentThread().setUncaughtExceptionHandler(new a());
            while (true) {
                try {
                    c cVarTake = C1005hc.this.f2822a.take();
                    m1943b(cVarTake);
                    this.f2840c = cVarTake.f2830f;
                    while (true) {
                        c cVarPoll = C1005hc.this.f2822a.poll(2L, TimeUnit.SECONDS);
                        if (cVarPoll != null) {
                            m1943b(cVarPoll);
                            this.f2840c = cVarPoll.f2830f;
                        }
                    }
                    m1942a();
                    m1944c();
                } catch (InterruptedException unused) {
                    C0850bc.m1393c("file logger service thread is interrupted");
                    C0850bc.m1392b("file logger service thread stopped");
                    C1005hc.this.f2823b = false;
                    return;
                }
            }
        }
    }
}
