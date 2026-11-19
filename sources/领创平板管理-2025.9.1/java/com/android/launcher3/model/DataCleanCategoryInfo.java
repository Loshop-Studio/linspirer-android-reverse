package com.android.launcher3.model;

/* loaded from: classes.dex */
public class DataCleanCategoryInfo {
    public String desc;
    public int number;
    public boolean select;

    public DataCleanCategoryInfo() {
    }

    public String getDesc() {
        return this.desc;
    }

    public int getNumber() {
        return this.number;
    }

    public boolean isSelect() {
        return this.select;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setNumber(int i) {
        this.number = i;
    }

    public void setSelect(boolean z) {
        this.select = z;
    }

    public DataCleanCategoryInfo(String str, int i, boolean z) {
        this.desc = str;
        this.number = i;
        this.select = z;
    }
}
