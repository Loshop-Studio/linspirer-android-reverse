package com.loc;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;

/* compiled from: ALLog.java */
/* renamed from: com.loc.dh */
/* loaded from: classes.dex */
public final class ALLog {
    /* renamed from: a */
    public static void m4567a(Throwable th) {
        if (AmapContext.f5210a) {
            m4568b(th);
        }
    }

    /* renamed from: b */
    public static String m4568b(Throwable th) {
        if (th == null) {
            return "";
        }
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            if (cause instanceof UnknownHostException) {
                return "";
            }
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }
}
