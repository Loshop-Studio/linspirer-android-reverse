package com.android.launcher3.network.params;

import android.content.Context;

/* loaded from: classes.dex */
public class ReportCommandParams extends Params {
    public int active;
    public String command;

    public ReportCommandParams(Context context) {
        super(context);
    }

    public int getActive() {
        return this.active;
    }

    public String getCommand() {
        return this.command;
    }

    public void setActive(int i) {
        this.active = i;
    }

    public void setCommand(String str) {
        this.command = str;
    }
}
