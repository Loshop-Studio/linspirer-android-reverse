package com.taobao.accs.utl;

import com.taobao.accs.utl.AccsLogAdapter;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.i */
/* loaded from: classes.dex */
public class AccsLogConfiguration implements AccsLogAdapter.a {

    /* renamed from: a */
    public c[] f6394a;

    /* renamed from: b */
    public final int f6395b;

    /* renamed from: c */
    public String[] f6396c;

    /* renamed from: d */
    public long[] f6397d;

    /* renamed from: e */
    public int f6398e;

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.utl.i$a */
    public static class a implements c {

        /* renamed from: a */
        public String f6399a;

        public a(String str) {
            this.f6399a = str;
        }

        @Override // com.taobao.accs.utl.C1981i.c
        /* renamed from: a */
        public boolean mo5794a(String str) {
            return str != null && str.contains(this.f6399a);
        }
    }

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.utl.i$b */
    public static class b {

        /* renamed from: a */
        public static final AccsLogConfiguration f6400a = new AccsLogConfiguration();
    }

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.utl.i$c */
    public interface c {
        /* renamed from: a */
        boolean mo5794a(String str);
    }

    /* renamed from: a */
    public static AccsLogConfiguration m5789a() {
        return b.f6400a;
    }

    /* renamed from: b */
    private void m5791b(String str) {
        int i = this.f6398e % 5;
        this.f6396c[i] = str;
        this.f6397d[i] = System.currentTimeMillis() / 1000;
        this.f6398e = i + 1;
    }

    public AccsLogConfiguration() {
        this.f6395b = 5;
        this.f6396c = new String[5];
        this.f6397d = new long[5];
        this.f6398e = 0;
        for (int i = 0; i < 5; i++) {
            this.f6396c[i] = null;
            this.f6397d[i] = 0;
        }
        this.f6394a = new c[]{new a("send msg time out"), new a("errorCode::"), new a("errorId::"), new a("TNET_JNI_ERR_LOAD_SO_FAIL")};
    }

    @Override // com.taobao.accs.utl.C1983k.a
    /* renamed from: a */
    public void mo5792a(String str) {
        try {
            if (m5790a(str, this.f6394a)) {
                m5791b(str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    private boolean m5790a(String str, c[] cVarArr) {
        for (c cVar : cVarArr) {
            if (cVar.mo5794a(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public String m5793b() {
        StringBuilder sb = new StringBuilder();
        sb.append(System.currentTimeMillis() / 1000);
        sb.append(" ");
        try {
            int i = ((this.f6398e - 1) % 5) + 5;
            for (int i2 = 0; i2 < 5; i2++) {
                int i3 = (i - i2) % 5;
                if (this.f6396c[i3] == null) {
                    break;
                }
                sb.append(this.f6397d[i3]);
                sb.append(" ");
                sb.append(this.f6396c[i3]);
                sb.append(" ");
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return sb.toString();
    }
}
