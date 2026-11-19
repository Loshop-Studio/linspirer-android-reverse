package com.android.launcher3.network.params;

import android.content.Context;
import java.util.List;

/* loaded from: classes.dex */
public class CheckUpdateParams extends Params {
    public List<String> packages;

    public CheckUpdateParams(Context context) {
        super(context);
    }

    public List<String> getPackages() {
        return this.packages;
    }

    public void setPackages(List<String> list) {
        this.packages = list;
    }
}
