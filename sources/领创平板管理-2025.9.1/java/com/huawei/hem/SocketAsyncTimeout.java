package com.huawei.hem;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* compiled from: Okio.java */
/* renamed from: com.huawei.hem.sn */
/* loaded from: classes.dex */
public final class SocketAsyncTimeout extends OkioAsyncTimeout {

    /* renamed from: k */
    public final /* synthetic */ Socket f3736k;

    public SocketAsyncTimeout(Socket socket) {
        this.f3736k = socket;
    }

    @Override // com.huawei.hem.C0965fn
    /* renamed from: l */
    public IOException mo1840l(@Nullable IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // com.huawei.hem.C0965fn
    /* renamed from: m */
    public void mo1841m() throws IOException {
        try {
            this.f3736k.close();
        } catch (AssertionError e) {
            if (!OkioStreamFactory.m2671c(e)) {
                throw e;
            }
            Logger logger = OkioStreamFactory.f3649a;
            Level level = Level.WARNING;
            StringBuilder sbM1765j = CompilerOutline.m1765j("Failed to close timed out socket ");
            sbM1765j.append(this.f3736k);
            logger.log(level, sbM1765j.toString(), (Throwable) e);
        } catch (Exception e2) {
            Logger logger2 = OkioStreamFactory.f3649a;
            Level level2 = Level.WARNING;
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("Failed to close timed out socket ");
            sbM1765j2.append(this.f3736k);
            logger2.log(level2, sbM1765j2.toString(), (Throwable) e2);
        }
    }
}
