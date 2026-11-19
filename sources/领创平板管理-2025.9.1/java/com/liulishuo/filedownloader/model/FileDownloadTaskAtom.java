package com.liulishuo.filedownloader.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class FileDownloadTaskAtom implements Parcelable {
    public static final Parcelable.Creator<FileDownloadTaskAtom> CREATOR = new DownloadAtomParcelCreator();

    /* renamed from: a */
    public String f4846a;

    /* renamed from: b */
    public String f4847b;

    /* renamed from: c */
    public long f4848c;

    /* renamed from: com.liulishuo.filedownloader.model.FileDownloadTaskAtom$a */
    public static class DownloadAtomParcelCreator implements Parcelable.Creator<FileDownloadTaskAtom> {
        @Override // android.os.Parcelable.Creator
        public FileDownloadTaskAtom createFromParcel(Parcel parcel) {
            return new FileDownloadTaskAtom(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FileDownloadTaskAtom[] newArray(int i) {
            return new FileDownloadTaskAtom[i];
        }
    }

    public FileDownloadTaskAtom(Parcel parcel) {
        this.f4846a = parcel.readString();
        this.f4847b = parcel.readString();
        this.f4848c = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4846a);
        parcel.writeString(this.f4847b);
        parcel.writeLong(this.f4848c);
    }
}
