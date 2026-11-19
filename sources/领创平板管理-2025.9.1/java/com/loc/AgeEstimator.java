package com.loc;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.huawei.hem.C0994h1;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: AgeEstimator.java */
/* renamed from: com.loc.dv */
/* loaded from: classes.dex */
public abstract class AgeEstimator<T> {

    /* renamed from: a */
    public String f5450a;

    /* renamed from: b */
    public File f5451b;

    /* renamed from: e */
    public Handler f5454e;

    /* renamed from: f */
    public String f5455f;

    /* renamed from: g */
    public boolean f5456g;

    /* renamed from: c */
    public boolean f5452c = false;

    /* renamed from: d */
    public Map<String, a> f5453d = new ConcurrentHashMap();

    /* renamed from: h */
    public Runnable f5457h = new Runnable() { // from class: com.loc.dv.2
        @Override // java.lang.Runnable
        public final void run() throws IOException {
            if (AgeEstimator.this.f5452c) {
                if (AgeEstimator.this.f5456g) {
                    AgeEstimator.this.m4709e();
                    AgeEstimator.m4710e(AgeEstimator.this);
                }
                if (AgeEstimator.this.f5454e != null) {
                    AgeEstimator.this.f5454e.postDelayed(AgeEstimator.this.f5457h, 60000L);
                }
            }
        }
    };

    /* compiled from: AgeEstimator.java */
    /* renamed from: com.loc.dv$a */
    public static class a {

        /* renamed from: a */
        public int f5460a;

        /* renamed from: b */
        public long f5461b;

        /* renamed from: c */
        public long f5462c;

        public a(int i, long j, long j2) {
            this.f5460a = i;
            this.f5461b = j;
            this.f5462c = j2;
        }
    }

    public AgeEstimator(Context context, String str, Handler handler) {
        this.f5455f = null;
        if (context == null) {
            return;
        }
        this.f5454e = handler;
        this.f5450a = TextUtils.isEmpty(str) ? "unknow" : str;
        this.f5455f = C1841ew.m5156m(context);
        try {
            this.f5451b = new File(context.getFilesDir().getPath(), this.f5450a);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        m4707d();
    }

    /* renamed from: a */
    public static int m4702a(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    /* renamed from: b */
    private void m4704b(T t, long j) {
        if (t == null || mo4722d((AgeEstimator<T>) t) < 0) {
            return;
        }
        String strMo4719b = mo4719b((AgeEstimator<T>) t);
        a aVar = this.f5453d.get(strMo4719b);
        if (aVar == null) {
            mo4715a((AgeEstimator<T>) t, j);
            this.f5453d.put(strMo4719b, new a(mo4720c((AgeEstimator<T>) t), mo4722d((AgeEstimator<T>) t), j));
            this.f5456g = true;
            return;
        }
        aVar.f5462c = j;
        if (aVar.f5460a == mo4720c((AgeEstimator<T>) t)) {
            mo4715a((AgeEstimator<T>) t, aVar.f5461b);
            return;
        }
        mo4715a((AgeEstimator<T>) t, j);
        aVar.f5460a = mo4720c((AgeEstimator<T>) t);
        aVar.f5461b = mo4722d((AgeEstimator<T>) t);
        this.f5456g = true;
    }

    /* renamed from: d */
    private void m4707d() {
        try {
            StringBuilder sb = new StringBuilder("restore from：\n");
            Iterator<String> it = C1841ew.m5111a(this.f5451b).iterator();
            while (it.hasNext()) {
                try {
                    String str = new String(C1823ee.m4877b(C0994h1.m1934e(it.next()), this.f5455f), "UTF-8");
                    sb.append(str);
                    sb.append("\n");
                    String[] strArrSplit = str.split(",");
                    this.f5453d.put(strArrSplit[0], new a(Integer.parseInt(strArrSplit[1]), Long.parseLong(strArrSplit[2]), strArrSplit.length >= 4 ? Long.parseLong(strArrSplit[3]) : C1841ew.m5127b()));
                } catch (Throwable th) {
                    if (this.f5451b.exists()) {
                        this.f5451b.delete();
                    }
                    th.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m4709e() throws IOException {
        if (mo4721c() > 0) {
            this.f5453d.size();
            if (mo4718b() > 0) {
                long jM5127b = C1841ew.m5127b();
                Iterator<Map.Entry<String, a>> it = this.f5453d.entrySet().iterator();
                while (it.hasNext()) {
                    if (jM5127b - this.f5453d.get(it.next().getKey()).f5462c > mo4718b()) {
                        it.remove();
                    }
                }
            }
            if (this.f5453d.size() > mo4721c()) {
                ArrayList arrayList = new ArrayList(this.f5453d.keySet());
                Collections.sort(arrayList, new Comparator<String>() { // from class: com.loc.dv.1
                    /* JADX INFO: Access modifiers changed from: private */
                    @Override // java.util.Comparator
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(String str, String str2) {
                        return AgeEstimator.m4702a(((a) AgeEstimator.this.f5453d.get(str2)).f5462c, ((a) AgeEstimator.this.f5453d.get(str)).f5462c);
                    }
                });
                for (int iMo4721c = (int) mo4721c(); iMo4721c < arrayList.size(); iMo4721c++) {
                    this.f5453d.remove(arrayList.get(iMo4721c));
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, a> entry : this.f5453d.entrySet()) {
            try {
                sb.append(C0994h1.m1933d(C1823ee.m4874a((entry.getKey() + "," + entry.getValue().f5460a + "," + entry.getValue().f5461b + "," + entry.getValue().f5462c).getBytes("UTF-8"), this.f5455f)) + "\n");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        String string = sb.toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        C1841ew.m5112a(this.f5451b, string);
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m4710e(AgeEstimator abstractC1813dv) {
        abstractC1813dv.f5456g = false;
        return false;
    }

    /* renamed from: a */
    public final void m4713a() {
        Handler handler;
        if (!this.f5452c && (handler = this.f5454e) != null) {
            handler.removeCallbacks(this.f5457h);
            this.f5454e.postDelayed(this.f5457h, 60000L);
        }
        this.f5452c = true;
    }

    /* renamed from: a */
    public final void m4714a(T t) {
        m4704b(t, C1841ew.m5127b());
    }

    /* renamed from: a */
    public abstract void mo4715a(T t, long j);

    /* renamed from: a */
    public final void m4716a(List<T> list) {
        long jM5127b = C1841ew.m5127b();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            m4704b(it.next(), jM5127b);
        }
        if (this.f5453d.size() >= list.size()) {
            this.f5456g = true;
        }
        if (this.f5453d.size() > 16384 || mo4721c() <= 0) {
            this.f5453d.clear();
            for (T t : list) {
                this.f5453d.put(mo4719b((AgeEstimator<T>) t), new a(mo4720c((AgeEstimator<T>) t), mo4722d((AgeEstimator<T>) t), jM5127b));
            }
        }
    }

    /* renamed from: a */
    public final void m4717a(boolean z) {
        Handler handler = this.f5454e;
        if (handler != null) {
            handler.removeCallbacks(this.f5457h);
        }
        if (!z) {
            this.f5457h.run();
        }
        this.f5452c = false;
    }

    /* renamed from: b */
    public abstract long mo4718b();

    /* renamed from: b */
    public abstract String mo4719b(T t);

    /* renamed from: c */
    public abstract int mo4720c(T t);

    /* renamed from: c */
    public abstract long mo4721c();

    /* renamed from: d */
    public abstract long mo4722d(T t);

    /* renamed from: e */
    public final long m4723e(T t) {
        return (C1841ew.m5127b() - mo4722d((AgeEstimator<T>) t)) / 1000;
    }
}
