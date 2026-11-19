package com.alibaba.sdk.android.logger.p014b;

import com.alibaba.sdk.android.logger.ILogger;
import com.alibaba.sdk.android.logger.LogLevel;
import com.alibaba.sdk.android.logger.interceptor.InterfaceC0546d;
import com.alibaba.sdk.android.logger.p013a.C0534a;
import java.util.ArrayList;

/* renamed from: com.alibaba.sdk.android.logger.b.h */
/* loaded from: classes.dex */
public class C0542h implements InterfaceC0546d {

    /* renamed from: a */
    public static final String[] f981a = {"null"};

    /* renamed from: b */
    public static final String[] f982b = {"[]"};

    /* renamed from: c */
    public C0534a f983c;

    public C0542h(C0534a c0534a) {
        this.f983c = c0534a;
    }

    /* renamed from: a */
    private String[] m687a(Object[] objArr) {
        if (objArr == null) {
            return f981a;
        }
        if (objArr.length == 0) {
            return f982b;
        }
        String[] strArr = new String[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            strArr[i] = this.f983c.m674a(objArr[i]);
        }
        return strArr;
    }

    /* renamed from: a */
    private String[] m688a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : strArr) {
            if (str == null) {
                str = "";
            }
            if (z) {
                z = false;
            } else {
                sb.append(" ");
            }
            if (str.contains("\n")) {
                String[] strArrSplit = str.split("\n");
                for (int i = 0; i < strArrSplit.length; i++) {
                    sb.append(strArrSplit[i]);
                    if (i < strArrSplit.length - 1) {
                        arrayList.add(sb.toString());
                        sb = new StringBuilder();
                    } else if (i == strArrSplit.length - 1 && str.endsWith("\n")) {
                        arrayList.add(sb.toString());
                        sb = new StringBuilder();
                        z = true;
                    }
                }
            } else {
                sb.append(str);
            }
        }
        arrayList.add(sb.toString());
        return (String[]) arrayList.toArray(new String[0]);
    }

    @Override // com.alibaba.sdk.android.logger.interceptor.InterfaceC0546d
    /* renamed from: a */
    public void mo689a(LogLevel logLevel, String str, Object[] objArr, ILogger iLogger) {
        for (String str2 : m688a(m687a(objArr))) {
            iLogger.print(logLevel, str, str2);
        }
    }
}
