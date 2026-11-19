package com.taobao.accs.utl;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.e */
/* loaded from: classes.dex */
public class RomInfoCollectorAdapter extends RomInfoCollecter {
    @Override // com.taobao.accs.utl.RomInfoCollecter
    public String collect() throws ClassNotFoundException {
        RomInfoCollecter romInfoCollecter;
        String strM5765g = UtilityImpl.m5765g();
        return (strM5765g != null || (romInfoCollecter = this.mNextCollecter) == null) ? strM5765g : romInfoCollecter.collect();
    }
}
