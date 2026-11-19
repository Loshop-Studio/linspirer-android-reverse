package com.huawei.hem;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: HttpDate.java */
/* renamed from: com.huawei.hem.ol */
/* loaded from: classes.dex */
public final class C1190ol {

    /* renamed from: a */
    public static final ThreadLocal<DateFormat> f3412a = new a();

    /* renamed from: b */
    public static final String[] f3413b;

    /* renamed from: c */
    public static final DateFormat[] f3414c;

    /* compiled from: HttpDate.java */
    /* renamed from: com.huawei.hem.ol$a */
    public class a extends ThreadLocal<DateFormat> {
        @Override // java.lang.ThreadLocal
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(C1314tk.f3822h);
            return simpleDateFormat;
        }
    }

    static {
        String[] strArr = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
        f3413b = strArr;
        f3414c = new DateFormat[strArr.length];
    }

    /* renamed from: a */
    public static Date m2451a(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date date = f3412a.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return date;
        }
        synchronized (f3413b) {
            int length = f3413b.length;
            for (int i = 0; i < length; i++) {
                DateFormat simpleDateFormat = f3414c[i];
                if (simpleDateFormat == null) {
                    simpleDateFormat = new SimpleDateFormat(f3413b[i], Locale.US);
                    simpleDateFormat.setTimeZone(C1314tk.f3822h);
                    f3414c[i] = simpleDateFormat;
                }
                parsePosition.setIndex(0);
                Date date2 = simpleDateFormat.parse(str, parsePosition);
                if (parsePosition.getIndex() != 0) {
                    return date2;
                }
            }
            return null;
        }
    }
}
