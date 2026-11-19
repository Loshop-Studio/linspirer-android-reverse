package com.android.launcher3.model;

/* loaded from: classes.dex */
public class RubbishFileInfo {
    public String filePath;
    public boolean selected;

    public RubbishFileInfo(String str, boolean z) {
        this.filePath = str;
        this.selected = z;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setSelected(boolean z) {
        this.selected = z;
    }
}
