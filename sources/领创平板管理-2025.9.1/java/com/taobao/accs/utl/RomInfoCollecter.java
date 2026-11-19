package com.taobao.accs.utl;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public abstract class RomInfoCollecter {
    public RomInfoCollecter mNextCollecter;

    public static RomInfoCollecter getCollecter() {
        return new RomInfoCollectorAdapter();
    }

    public abstract String collect();
}
