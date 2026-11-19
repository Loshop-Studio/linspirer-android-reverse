package com.liulishuo.filedownloader.model;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hem.C1010hh;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.android.agoo.common.AgooConstants;

/* loaded from: classes.dex */
public class FileDownloadModel implements Parcelable {
    public static final Parcelable.Creator<FileDownloadModel> CREATOR = new C1708a();

    /* renamed from: a */
    public int f4834a;

    /* renamed from: b */
    public String f4835b;

    /* renamed from: c */
    public String f4836c;

    /* renamed from: d */
    public boolean f4837d;

    /* renamed from: e */
    public String f4838e;

    /* renamed from: f */
    public final AtomicInteger f4839f;

    /* renamed from: g */
    public final AtomicLong f4840g;

    /* renamed from: h */
    public long f4841h;

    /* renamed from: i */
    public String f4842i;

    /* renamed from: j */
    public String f4843j;

    /* renamed from: k */
    public int f4844k;

    /* renamed from: l */
    public boolean f4845l;

    /* renamed from: com.liulishuo.filedownloader.model.FileDownloadModel$a */
    public static class C1708a implements Parcelable.Creator<FileDownloadModel> {
        @Override // android.os.Parcelable.Creator
        public FileDownloadModel createFromParcel(Parcel parcel) {
            return new FileDownloadModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FileDownloadModel[] newArray(int i) {
            return new FileDownloadModel[i];
        }
    }

    public FileDownloadModel() {
        this.f4840g = new AtomicLong();
        this.f4839f = new AtomicInteger();
    }

    /* renamed from: a */
    public long m3926a() {
        return this.f4840g.get();
    }

    /* renamed from: b */
    public byte m3927b() {
        return (byte) this.f4839f.get();
    }

    /* renamed from: c */
    public String m3928c() {
        return C1010hh.m1961k(this.f4836c, this.f4837d, this.f4838e);
    }

    /* renamed from: d */
    public String m3929d() {
        if (m3928c() == null) {
            return null;
        }
        return C1010hh.m1955e("%s.temp", m3928c());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public void m3930e(byte b) {
        this.f4839f.set(b);
    }

    /* renamed from: f */
    public void m3931f(long j) {
        this.f4845l = j > 2147483647L;
        this.f4841h = j;
    }

    /* renamed from: g */
    public ContentValues m3932g() {
        String str;
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(this.f4834a));
        contentValues.put(AgooConstants.OPEN_URL, this.f4835b);
        contentValues.put("path", this.f4836c);
        contentValues.put("status", Byte.valueOf(m3927b()));
        contentValues.put("sofar", Long.valueOf(m3926a()));
        contentValues.put("total", Long.valueOf(this.f4841h));
        contentValues.put("errMsg", this.f4842i);
        contentValues.put("etag", this.f4843j);
        contentValues.put("connectionCount", Integer.valueOf(this.f4844k));
        contentValues.put("pathAsDirectory", Boolean.valueOf(this.f4837d));
        if (this.f4837d && (str = this.f4838e) != null) {
            contentValues.put("filename", str);
        }
        return contentValues;
    }

    public String toString() {
        return C1010hh.m1955e("id[%d], url[%s], path[%s], status[%d], sofar[%s], total[%d], etag[%s], %s", Integer.valueOf(this.f4834a), this.f4835b, this.f4836c, Integer.valueOf(this.f4839f.get()), this.f4840g, Long.valueOf(this.f4841h), this.f4843j, super.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4834a);
        parcel.writeString(this.f4835b);
        parcel.writeString(this.f4836c);
        parcel.writeByte(this.f4837d ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f4838e);
        parcel.writeByte((byte) this.f4839f.get());
        parcel.writeLong(this.f4840g.get());
        parcel.writeLong(this.f4841h);
        parcel.writeString(this.f4842i);
        parcel.writeString(this.f4843j);
        parcel.writeInt(this.f4844k);
        parcel.writeByte(this.f4845l ? (byte) 1 : (byte) 0);
    }

    public FileDownloadModel(Parcel parcel) {
        this.f4834a = parcel.readInt();
        this.f4835b = parcel.readString();
        this.f4836c = parcel.readString();
        this.f4837d = parcel.readByte() != 0;
        this.f4838e = parcel.readString();
        this.f4839f = new AtomicInteger(parcel.readByte());
        this.f4840g = new AtomicLong(parcel.readLong());
        this.f4841h = parcel.readLong();
        this.f4842i = parcel.readString();
        this.f4843j = parcel.readString();
        this.f4844k = parcel.readInt();
        this.f4845l = parcel.readByte() != 0;
    }
}
