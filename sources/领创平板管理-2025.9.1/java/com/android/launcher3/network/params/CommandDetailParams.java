package com.android.launcher3.network.params;

import android.content.Context;

/* loaded from: classes.dex */
public class CommandDetailParams extends Params {
    public int type;

    public CommandDetailParams(Context context) {
        super(context);
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }
}
