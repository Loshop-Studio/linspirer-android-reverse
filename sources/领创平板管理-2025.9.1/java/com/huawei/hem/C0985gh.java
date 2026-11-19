package com.huawei.hem;

/* compiled from: FileDownloadProperties.java */
/* renamed from: com.huawei.hem.gh */
/* loaded from: classes.dex */
public class C0985gh {

    /* renamed from: a */
    public final int f2775a;

    /* renamed from: b */
    public final long f2776b;

    /* renamed from: c */
    public final boolean f2777c;

    /* renamed from: d */
    public final boolean f2778d;

    /* renamed from: e */
    public final int f2779e;

    /* renamed from: f */
    public final boolean f2780f;

    /* renamed from: g */
    public final boolean f2781g;

    /* renamed from: h */
    public final boolean f2782h;

    /* compiled from: FileDownloadProperties.java */
    /* renamed from: com.huawei.hem.gh$b */
    public static class b {

        /* renamed from: a */
        public static final C0985gh f2783a = new C0985gh(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:158:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008e A[Catch: all -> 0x01ce, TRY_LEAVE, TryCatch #6 {all -> 0x01ce, blocks: (B:7:0x0029, B:8:0x0030, B:9:0x0034, B:10:0x003a, B:11:0x0040, B:12:0x0046, B:13:0x004a, B:14:0x004e, B:51:0x0089, B:54:0x008e), top: B:144:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0146  */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0985gh() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0985gh.<init>():void");
    }

    /* renamed from: a */
    public static int m1874a(int i) {
        if (i > 12) {
            C0959fh.m1821e(C0985gh.class, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto", Integer.valueOf(i), 12, 12);
            return 12;
        }
        if (i >= 1) {
            return i;
        }
        C0959fh.m1821e(C0985gh.class, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto", Integer.valueOf(i), 1, 1);
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:157:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0093 A[Catch: all -> 0x0066, TRY_LEAVE, TryCatch #5 {all -> 0x0066, blocks: (B:7:0x0029, B:8:0x0030, B:9:0x0034, B:10:0x003a, B:11:0x0040, B:12:0x0046, B:13:0x004a, B:14:0x004e, B:51:0x008e, B:54:0x0093), top: B:139:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x014b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0985gh(com.huawei.hem.C0985gh.a r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0985gh.<init>(com.huawei.hem.gh$a):void");
    }
}
