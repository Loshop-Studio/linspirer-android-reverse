package com.liulishuo.filedownloader.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class FileDownloadHeader implements Parcelable {
    public static final Parcelable.Creator<FileDownloadHeader> CREATOR = new C1707a();

    /* renamed from: a */
    public HashMap<String, List<String>> f4833a;

    /* renamed from: com.liulishuo.filedownloader.model.FileDownloadHeader$a */
    public static class C1707a implements Parcelable.Creator<FileDownloadHeader> {
        @Override // android.os.Parcelable.Creator
        public FileDownloadHeader createFromParcel(Parcel parcel) {
            return new FileDownloadHeader(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FileDownloadHeader[] newArray(int i) {
            return new FileDownloadHeader[i];
        }
    }

    public FileDownloadHeader() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f4833a.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeMap(this.f4833a);
    }

    public FileDownloadHeader(Parcel parcel) {
        this.f4833a = parcel.readHashMap(String.class.getClassLoader());
    }
}
