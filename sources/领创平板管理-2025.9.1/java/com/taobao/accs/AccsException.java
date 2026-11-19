package com.taobao.accs;

import com.huawei.hem.C0948f6;
import java.io.PrintStream;
import java.io.PrintWriter;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AccsException extends Exception {
    public int mErrorCode;

    public AccsException(int i) {
        this.mErrorCode = i;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        StringBuilder sbM1765j = C0948f6.m1765j("errorCode = ");
        sbM1765j.append(this.mErrorCode);
        printStream.println(sbM1765j.toString());
        super.printStackTrace(printStream);
    }

    public AccsException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        StringBuilder sbM1765j = C0948f6.m1765j("errorCode = ");
        sbM1765j.append(this.mErrorCode);
        printWriter.println(sbM1765j.toString());
        super.printStackTrace(printWriter);
    }

    public AccsException(String str, int i) {
        super(str);
        this.mErrorCode = i;
    }

    public AccsException(String str, Throwable th, int i) {
        super(str, th);
        this.mErrorCode = i;
    }

    public AccsException(Throwable th, int i) {
        super(th);
        this.mErrorCode = i;
    }
}
