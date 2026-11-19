package com.android.launcher3.model;

import java.util.List;

/* loaded from: classes.dex */
public class OtgSet {
    public List<PvList> pv_list;
    public int status;

    public List<PvList> getPv_list() {
        return this.pv_list;
    }

    public int getStatus() {
        return this.status;
    }

    public void setPv_list(List<PvList> list) {
        this.pv_list = list;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}
