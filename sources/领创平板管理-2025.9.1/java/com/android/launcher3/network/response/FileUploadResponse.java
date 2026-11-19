package com.android.launcher3.network.response;

import com.android.launcher3.model.FileUpload;

/* loaded from: classes.dex */
public class FileUploadResponse {
    public int code;
    public FileUpload data;

    public int getCode() {
        return this.code;
    }

    public FileUpload getData() {
        return this.data;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setData(FileUpload fileUpload) {
        this.data = fileUpload;
    }
}
