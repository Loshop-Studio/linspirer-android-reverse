package com.android.launcher3.network.params;

import android.content.Context;
import java.util.List;

/* loaded from: classes.dex */
public class ListParams<T> extends Params {
    public List<T> reportlist;

    public ListParams(Context context) {
        super(context);
    }

    public List<T> getReportlist() {
        return this.reportlist;
    }

    public void setReportlist(List<T> list) {
        this.reportlist = list;
    }
}
