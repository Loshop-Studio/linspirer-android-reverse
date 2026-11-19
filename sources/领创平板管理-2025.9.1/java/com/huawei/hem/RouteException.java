package com.huawei.hem;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: RouteException.java */
/* renamed from: com.huawei.hem.il */
/* loaded from: classes.dex */
public final class RouteException extends RuntimeException {
    public IOException firstException;
    public IOException lastException;

    public RouteException(IOException iOException) {
        super(iOException);
        this.firstException = iOException;
        this.lastException = iOException;
    }

    public void addConnectException(IOException iOException) {
        IOException iOException2 = this.firstException;
        Method method = C1314tk.f3824j;
        if (method != null) {
            try {
                method.invoke(iOException2, iOException);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        this.lastException = iOException;
    }

    public IOException getFirstConnectException() {
        return this.firstException;
    }

    public IOException getLastConnectException() {
        return this.lastException;
    }
}
