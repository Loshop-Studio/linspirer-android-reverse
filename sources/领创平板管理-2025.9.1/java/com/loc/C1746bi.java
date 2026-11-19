package com.loc;

import java.io.File;

/* compiled from: FileNumUpdateStrategy.java */
/* renamed from: com.loc.bi */
/* loaded from: classes.dex */
public final class C1746bi extends AbstractC1750bm {

    /* renamed from: a */
    public int f5106a;

    /* renamed from: b */
    public String f5107b;

    public C1746bi(String str, AbstractC1750bm abstractC1750bm) {
        super(abstractC1750bm);
        this.f5106a = 30;
        this.f5107b = str;
    }

    /* renamed from: a */
    public static int m4207a(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                return file.list().length;
            }
            return 0;
        } catch (Throwable th) {
            C1862w.m5333b(th, "fus", "gfn");
            return 0;
        }
    }

    @Override // com.loc.AbstractC1750bm
    /* renamed from: a */
    public final boolean mo4208a() {
        return m4207a(this.f5107b) >= this.f5106a;
    }
}
