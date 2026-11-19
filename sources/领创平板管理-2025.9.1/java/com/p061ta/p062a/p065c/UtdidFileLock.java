package com.p061ta.p062a.p065c;

import com.p061ta.p062a.p064b.UtdidFileLocations;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

/* renamed from: com.ta.a.c.c */
/* loaded from: classes.dex */
public class UtdidFileLock {

    /* renamed from: a */
    public static File f5997a;

    /* renamed from: a */
    public static FileChannel f5998a;

    /* renamed from: a */
    public static FileLock f5999a;

    /* renamed from: b */
    public static File f6000b;

    /* renamed from: c */
    public static synchronized void m5394c() {
        UtCallsiteLogger.m5408e();
        if (f5997a == null) {
            f5997a = new File(UtdidFileLocations.m5379c());
        }
        if (!f5997a.exists()) {
            try {
                f5997a.createNewFile();
            } catch (Exception unused) {
                return;
            }
        }
        if (f5998a == null) {
            try {
                f5998a = new RandomAccessFile(f5997a, "rw").getChannel();
            } catch (Exception unused2) {
                return;
            }
        }
        try {
            f5999a = f5998a.lock();
        } catch (Throwable unused3) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x001b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void m5395d() {
        /*
            java.lang.Class<com.ta.a.c.c> r0 = com.p061ta.p062a.p065c.C1879c.class
            monitor-enter(r0)
            com.p061ta.p062a.p065c.C1882f.m5408e()     // Catch: java.lang.Throwable -> L29
            java.nio.channels.FileLock r1 = com.p061ta.p062a.p065c.C1879c.f5999a     // Catch: java.lang.Throwable -> L29
            r2 = 0
            if (r1 == 0) goto L17
            java.nio.channels.FileLock r1 = com.p061ta.p062a.p065c.C1879c.f5999a     // Catch: java.lang.Exception -> L10 java.lang.Throwable -> L13
            r1.release()     // Catch: java.lang.Exception -> L10 java.lang.Throwable -> L13
        L10:
            com.p061ta.p062a.p065c.C1879c.f5999a = r2     // Catch: java.lang.Throwable -> L29
            goto L17
        L13:
            r1 = move-exception
            com.p061ta.p062a.p065c.C1879c.f5999a = r2     // Catch: java.lang.Throwable -> L29
            throw r1     // Catch: java.lang.Throwable -> L29
        L17:
            java.nio.channels.FileChannel r1 = com.p061ta.p062a.p065c.C1879c.f5998a     // Catch: java.lang.Throwable -> L29
            if (r1 == 0) goto L27
            java.nio.channels.FileChannel r1 = com.p061ta.p062a.p065c.C1879c.f5998a     // Catch: java.lang.Exception -> L20 java.lang.Throwable -> L23
            r1.close()     // Catch: java.lang.Exception -> L20 java.lang.Throwable -> L23
        L20:
            com.p061ta.p062a.p065c.C1879c.f5998a = r2     // Catch: java.lang.Throwable -> L29
            goto L27
        L23:
            r1 = move-exception
            com.p061ta.p062a.p065c.C1879c.f5998a = r2     // Catch: java.lang.Throwable -> L29
            throw r1     // Catch: java.lang.Throwable -> L29
        L27:
            monitor-exit(r0)
            return
        L29:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p061ta.p062a.p065c.C1879c.m5395d():void");
    }
}
