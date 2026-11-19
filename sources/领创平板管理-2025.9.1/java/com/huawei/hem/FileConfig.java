package com.huawei.hem;

import android.content.Context;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: FileConfig.java */
/* renamed from: com.huawei.hem.fc */
/* loaded from: classes.dex */
public class FileConfig {

    /* renamed from: a */
    public final b f2646a;

    /* compiled from: FileConfig.java */
    /* renamed from: com.huawei.hem.fc$b */
    public static class b {

        /* renamed from: a */
        public final Context f2647a;

        /* renamed from: b */
        public FileFormatter f2648b;

        /* renamed from: c */
        public String f2649c;

        /* renamed from: d */
        public String f2650d;

        /* renamed from: e */
        public boolean f2651e;

        /* renamed from: f */
        public long f2652f = 10485760;

        public b(Context context) {
            this.f2647a = context.getApplicationContext();
        }
    }

    /* compiled from: FileConfig.java */
    /* renamed from: com.huawei.hem.fc$c */
    public static class c implements FileFormatter {

        /* renamed from: a */
        public final ThreadLocal<SimpleDateFormat> f2653a = new a(this);

        /* renamed from: b */
        public final ThreadLocal<SimpleDateFormat> f2654b = new b(this);

        /* renamed from: c */
        public final ThreadLocal<Date> f2655c = new C2071c(this);

        /* compiled from: FileConfig.java */
        /* renamed from: com.huawei.hem.fc$c$a */
        public class a extends ThreadLocal<SimpleDateFormat> {
            public a(c cVar) {
            }

            @Override // java.lang.ThreadLocal
            public SimpleDateFormat initialValue() {
                return new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.ENGLISH);
            }
        }

        /* compiled from: FileConfig.java */
        /* renamed from: com.huawei.hem.fc$c$b */
        public class b extends ThreadLocal<SimpleDateFormat> {
            public b(c cVar) {
            }

            @Override // java.lang.ThreadLocal
            public SimpleDateFormat initialValue() {
                return new SimpleDateFormat("MM_dd", Locale.ENGLISH);
            }
        }

        /* compiled from: FileConfig.java */
        /* renamed from: com.huawei.hem.fc$c$c, reason: collision with other inner class name */
        public class C2071c extends ThreadLocal<Date> {
            public C2071c(c cVar) {
            }

            @Override // java.lang.ThreadLocal
            public Date initialValue() {
                return new Date();
            }
        }
    }

    public FileConfig(b bVar, a aVar) {
        this.f2646a = bVar;
    }
}
