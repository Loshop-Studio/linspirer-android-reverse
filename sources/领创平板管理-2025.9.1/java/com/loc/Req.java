package com.loc;

import android.annotation.SuppressLint;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: Req.java */
@SuppressLint({"NewApi"})
/* renamed from: com.loc.en */
/* loaded from: classes.dex */
public final class Req {

    /* renamed from: I */
    public static String f5667I;

    /* renamed from: K */
    public static String f5668K;

    /* renamed from: a */
    public String f5687a = "1";

    /* renamed from: b */
    public short f5688b = 0;

    /* renamed from: c */
    public String f5689c = null;

    /* renamed from: d */
    public String f5690d = null;

    /* renamed from: e */
    public String f5691e = null;

    /* renamed from: f */
    public String f5692f = null;

    /* renamed from: g */
    public String f5693g = null;

    /* renamed from: h */
    public String f5694h = null;

    /* renamed from: i */
    public String f5695i = null;

    /* renamed from: j */
    public String f5696j = null;

    /* renamed from: k */
    public String f5697k = null;

    /* renamed from: l */
    public String f5698l = null;

    /* renamed from: m */
    public String f5699m = null;

    /* renamed from: n */
    public String f5700n = null;

    /* renamed from: o */
    public String f5701o = null;

    /* renamed from: p */
    public String f5702p = null;

    /* renamed from: q */
    public String f5703q = null;

    /* renamed from: r */
    public String f5704r = null;

    /* renamed from: s */
    public String f5705s = null;

    /* renamed from: t */
    public String f5706t = null;

    /* renamed from: u */
    public String f5707u = null;

    /* renamed from: v */
    public String f5708v = null;

    /* renamed from: w */
    public String f5709w = null;

    /* renamed from: x */
    public String f5710x = null;

    /* renamed from: y */
    public String f5711y = null;

    /* renamed from: z */
    public int f5712z = 0;

    /* renamed from: A */
    public ArrayList<Cgi> f5669A = new ArrayList<>();

    /* renamed from: B */
    public ArrayList<Cgi> f5670B = new ArrayList<>();

    /* renamed from: C */
    public String f5671C = null;

    /* renamed from: D */
    public String f5672D = null;

    /* renamed from: E */
    public ArrayList<AmapWifi> f5673E = new ArrayList<>();

    /* renamed from: F */
    public String f5674F = null;

    /* renamed from: G */
    public String f5675G = null;

    /* renamed from: H */
    public byte[] f5676H = null;

    /* renamed from: Q */
    public byte[] f5683Q = null;

    /* renamed from: R */
    public int f5684R = 0;

    /* renamed from: J */
    public String f5677J = null;

    /* renamed from: L */
    public String f5678L = null;

    /* renamed from: M */
    public String f5679M = null;

    /* renamed from: N */
    public String f5680N = null;

    /* renamed from: O */
    public int f5681O = 0;

    /* renamed from: S */
    public List<HistoryLocation> f5685S = null;

    /* renamed from: T */
    public List<Cgi> f5686T = new ArrayList();

    /* renamed from: P */
    public final int f5682P = 3;

    /* renamed from: a */
    public static int m4964a(String str, byte[] bArr, int i) {
        try {
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "Req", "copyContentWithByteLen");
            bArr[i] = 0;
        }
        if (TextUtils.isEmpty(str)) {
            bArr[i] = 0;
            return i + 1;
        }
        byte[] bytes = str.getBytes("GBK");
        int length = bytes.length;
        if (length > 127) {
            length = 127;
        }
        bArr[i] = (byte) length;
        int i2 = i + 1;
        System.arraycopy(bytes, 0, bArr, i2, length);
        return i2 + length;
    }

    /* renamed from: a */
    public static void m4965a(Cgi c1816dy, List<Cgi> list) {
        if (c1816dy == null || list == null) {
            return;
        }
        int size = list.size();
        if (size == 0) {
            list.add(c1816dy);
            return;
        }
        long jMin = RecyclerView.FOREVER_NS;
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        while (true) {
            if (i >= size) {
                i2 = i3;
                break;
            }
            Cgi c1816dy2 = list.get(i);
            if (c1816dy.m4739c() == null || !c1816dy.m4739c().equals(c1816dy2.m4739c())) {
                jMin = Math.min(jMin, c1816dy2.f5503t);
                if (jMin == c1816dy2.f5503t) {
                    i3 = i;
                }
                i++;
            } else {
                int i4 = c1816dy.f5502s;
                if (i4 != c1816dy2.f5502s) {
                    c1816dy2.f5503t = c1816dy.f5503t;
                    c1816dy2.f5502s = i4;
                }
            }
        }
        if (i2 >= 0) {
            if (size < 3) {
                list.add(c1816dy);
            } else {
                if (c1816dy.f5503t <= jMin || i2 >= size) {
                    return;
                }
                list.remove(i2);
                list.add(c1816dy);
            }
        }
    }

    /* renamed from: a */
    private void m4966a(ArrayList<Cgi> arrayList, ArrayList<Cgi> arrayList2) {
        if (arrayList2 != null) {
            Iterator<Cgi> it = arrayList2.iterator();
            while (it.hasNext()) {
                Cgi next = it.next();
                if (next.f5501r && next.f5497n) {
                    m4965a(next, this.f5686T);
                    return;
                }
            }
        }
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        m4965a(arrayList.get(0), this.f5686T);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000f A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:4:0x000c, B:10:0x001c, B:12:0x001f, B:14:0x0028, B:15:0x0030, B:6:0x000f, B:8:0x0014), top: B:20:0x000c }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private byte[] m4967a(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.String r0 = ":"
            java.lang.String[] r0 = r7.split(r0)
            r1 = 6
            byte[] r2 = new byte[r1]
            r3 = 0
            if (r0 == 0) goto Lf
            int r4 = r0.length     // Catch: java.lang.Throwable -> L3e
            if (r4 == r1) goto L1b
        Lf:
            java.lang.String[] r0 = new java.lang.String[r1]     // Catch: java.lang.Throwable -> L3e
            r4 = r3
        L12:
            if (r4 >= r1) goto L1b
            java.lang.String r5 = "0"
            r0[r4] = r5     // Catch: java.lang.Throwable -> L3e
            int r4 = r4 + 1
            goto L12
        L1b:
            r1 = r3
        L1c:
            int r4 = r0.length     // Catch: java.lang.Throwable -> L3e
            if (r1 >= r4) goto L50
            r4 = r0[r1]     // Catch: java.lang.Throwable -> L3e
            int r4 = r4.length()     // Catch: java.lang.Throwable -> L3e
            r5 = 2
            if (r4 <= r5) goto L30
            r4 = r0[r1]     // Catch: java.lang.Throwable -> L3e
            java.lang.String r4 = r4.substring(r3, r5)     // Catch: java.lang.Throwable -> L3e
            r0[r1] = r4     // Catch: java.lang.Throwable -> L3e
        L30:
            r4 = r0[r1]     // Catch: java.lang.Throwable -> L3e
            r5 = 16
            int r4 = java.lang.Integer.parseInt(r4, r5)     // Catch: java.lang.Throwable -> L3e
            byte r4 = (byte) r4     // Catch: java.lang.Throwable -> L3e
            r2[r1] = r4     // Catch: java.lang.Throwable -> L3e
            int r1 = r1 + 1
            goto L1c
        L3e:
            r0 = move-exception
            java.lang.String r1 = "getMacBa "
            java.lang.String r7 = r1.concat(r7)
            java.lang.String r1 = "Req"
            com.loc.C1834ep.m5014a(r0, r1, r7)
            java.lang.String r7 = "00:00:00:00:00:00"
            byte[] r2 = r6.m4967a(r7)
        L50:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1832en.m4967a(java.lang.String):byte[]");
    }

    /* renamed from: b */
    private void m4968b() {
        String[] strArr = new String[27];
        strArr[0] = this.f5687a;
        strArr[1] = this.f5689c;
        strArr[2] = this.f5690d;
        strArr[3] = this.f5691e;
        strArr[4] = this.f5692f;
        strArr[5] = this.f5693g;
        strArr[6] = this.f5694h;
        strArr[7] = this.f5695i;
        strArr[8] = this.f5698l;
        strArr[9] = this.f5699m;
        strArr[10] = this.f5700n;
        strArr[11] = this.f5701o;
        strArr[12] = this.f5702p;
        strArr[13] = this.f5703q;
        strArr[14] = this.f5704r;
        strArr[15] = this.f5705s;
        strArr[16] = this.f5706t;
        strArr[17] = this.f5707u;
        strArr[18] = this.f5708v;
        strArr[19] = this.f5709w;
        strArr[20] = this.f5710x;
        strArr[21] = this.f5672D;
        strArr[22] = this.f5674F;
        strArr[23] = this.f5675G;
        strArr[24] = f5667I;
        strArr[25] = this.f5679M;
        strArr[26] = this.f5680N;
        for (int i = 0; i < 27; i++) {
            if (TextUtils.isEmpty(strArr[i])) {
                strArr[i] = "";
            }
        }
        if (TextUtils.isEmpty(this.f5696j) || (!MessageService.MSG_DB_READY_REPORT.equals(this.f5696j) && !MessageService.MSG_DB_NOTIFY_CLICK.equals(this.f5696j))) {
            this.f5696j = MessageService.MSG_DB_READY_REPORT;
        }
        if (TextUtils.isEmpty(this.f5697k) || (!MessageService.MSG_DB_READY_REPORT.equals(this.f5697k) && !"1".equals(this.f5697k))) {
            this.f5697k = MessageService.MSG_DB_READY_REPORT;
        }
        if (TextUtils.isEmpty(this.f5711y) || (!"1".equals(this.f5711y) && !MessageService.MSG_DB_NOTIFY_CLICK.equals(this.f5711y))) {
            this.f5711y = MessageService.MSG_DB_READY_REPORT;
        }
        if (!CgiManager.m4751a(this.f5712z)) {
            this.f5712z = 0;
        }
        if (this.f5676H == null) {
            this.f5676H = new byte[0];
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4969a(android.content.Context r19, boolean r20, boolean r21, com.loc.CgiManager r22, com.loc.WifiManagerWrapper r23, android.net.ConnectivityManager r24, java.lang.String r25, com.loc.HistoryLocationRecorder r26) {
        /*
            Method dump skipped, instructions count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1832en.m4969a(android.content.Context, boolean, boolean, com.loc.dz, com.loc.ed, android.net.ConnectivityManager, java.lang.String, com.loc.eb):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0346 A[PHI: r0
      0x0346: PHI (r0v50 int) = (r0v49 int), (r0v49 int), (r0v159 int) binds: [B:129:0x0329, B:131:0x032e, B:351:0x0346] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0600  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0606  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x06b8  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x06bb A[Catch: all -> 0x06ce, TryCatch #10 {all -> 0x06ce, blocks: (B:261:0x06ad, B:265:0x06bb, B:266:0x06c0), top: B:371:0x06ad }] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x06c0 A[Catch: all -> 0x06ce, TRY_LEAVE, TryCatch #10 {all -> 0x06ce, blocks: (B:261:0x06ad, B:265:0x06bb, B:266:0x06c0), top: B:371:0x06ad }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x06e1 A[Catch: all -> 0x0704, TRY_LEAVE, TryCatch #3 {all -> 0x0704, blocks: (B:271:0x06d9, B:273:0x06e1), top: B:358:0x06d9 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x071c  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x071e  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x072d  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0747  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0824  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x08c9  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x06f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0215 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0255  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m4970a() throws java.io.UnsupportedEncodingException {
        /*
            Method dump skipped, instructions count: 2299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1832en.m4970a():byte[]");
    }
}
