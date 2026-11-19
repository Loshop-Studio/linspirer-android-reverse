package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import android.support.v7.widget.ActivityChooserView;
import com.huawei.hem.InterfaceC1009hg;
import com.liulishuo.filedownloader.message.MessageSnapshot;

/* loaded from: classes.dex */
public abstract class LargeMessageSnapshot extends MessageSnapshot {

    public static class CompletedFlowDirectlySnapshot extends CompletedSnapshot implements InterfaceC1009hg {
        public CompletedFlowDirectlySnapshot(int i, boolean z, long j) {
            super(i, z, j);
        }
    }

    public static class PausedSnapshot extends PendingMessageSnapshot {
        public PausedSnapshot(int i, long j, long j2) {
            super(i, j, j2);
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.PendingMessageSnapshot, com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) -2;
        }
    }

    public static class WarnFlowDirectlySnapshot extends WarnMessageSnapshot implements InterfaceC1009hg {
        public WarnFlowDirectlySnapshot(int i, long j, long j2) {
            super(i, j, j2);
        }
    }

    public static class WarnMessageSnapshot extends PendingMessageSnapshot implements MessageSnapshot.InterfaceC1705b {
        public WarnMessageSnapshot(int i, long j, long j2) {
            super(i, j, j2);
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.PendingMessageSnapshot, com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) -4;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot.InterfaceC1705b
        /* renamed from: b */
        public MessageSnapshot mo3925b() {
            return new PendingMessageSnapshot(this.f4819a, this.f4815c, this.f4816d);
        }

        public WarnMessageSnapshot(Parcel parcel) {
            super(parcel);
        }
    }

    public LargeMessageSnapshot(int i) {
        super(i);
        this.f4820b = true;
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: i */
    public int mo3915i() {
        return mo3922f() > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) mo3922f();
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: j */
    public int mo3916j() {
        return mo3917g() > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) mo3917g();
    }

    public static class ProgressMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: c */
        public final long f4817c;

        public ProgressMessageSnapshot(int i, long j) {
            super(i);
            this.f4817c = j;
        }

        @Override // com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) 3;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: f */
        public long mo3922f() {
            return this.f4817c;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.f4820b ? (byte) 1 : (byte) 0);
            parcel.writeByte(mo2112a());
            parcel.writeInt(this.f4819a);
            parcel.writeLong(this.f4817c);
        }

        public ProgressMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f4817c = parcel.readLong();
        }
    }

    public static class RetryMessageSnapshot extends ErrorMessageSnapshot {

        /* renamed from: e */
        public final int f4818e;

        public RetryMessageSnapshot(int i, long j, Throwable th, int i2) {
            super(i, j, th);
            this.f4818e = i2;
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.ErrorMessageSnapshot, com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) 5;
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: h */
        public int mo3924h() {
            return this.f4818e;
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4818e);
        }

        public RetryMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f4818e = parcel.readInt();
        }
    }

    public static class CompletedSnapshot extends LargeMessageSnapshot {

        /* renamed from: c */
        public final boolean f4807c;

        /* renamed from: d */
        public final long f4808d;

        public CompletedSnapshot(int i, boolean z, long j) {
            super(i);
            this.f4807c = z;
            this.f4808d = j;
        }

        @Override // com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) -3;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: g */
        public long mo3917g() {
            return this.f4808d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public boolean mo3918m() {
            return this.f4807c;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.f4820b ? (byte) 1 : (byte) 0);
            parcel.writeByte(mo2112a());
            parcel.writeInt(this.f4819a);
            parcel.writeByte(this.f4807c ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f4808d);
        }

        public CompletedSnapshot(Parcel parcel) {
            super(parcel);
            this.f4807c = parcel.readByte() != 0;
            this.f4808d = parcel.readLong();
        }
    }

    public static class ErrorMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: c */
        public final long f4813c;

        /* renamed from: d */
        public final Throwable f4814d;

        public ErrorMessageSnapshot(int i, long j, Throwable th) {
            super(i);
            this.f4813c = j;
            this.f4814d = th;
        }

        @Override // com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) -1;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: f */
        public long mo3922f() {
            return this.f4813c;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public Throwable mo3923k() {
            return this.f4814d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.f4820b ? (byte) 1 : (byte) 0);
            parcel.writeByte(mo2112a());
            parcel.writeInt(this.f4819a);
            parcel.writeLong(this.f4813c);
            parcel.writeSerializable(this.f4814d);
        }

        public ErrorMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f4813c = parcel.readLong();
            this.f4814d = (Throwable) parcel.readSerializable();
        }
    }

    public static class PendingMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: c */
        public final long f4815c;

        /* renamed from: d */
        public final long f4816d;

        public PendingMessageSnapshot(int i, long j, long j2) {
            super(i);
            this.f4815c = j;
            this.f4816d = j2;
        }

        @Override // com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) 1;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: f */
        public long mo3922f() {
            return this.f4815c;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: g */
        public long mo3917g() {
            return this.f4816d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.f4820b ? (byte) 1 : (byte) 0);
            parcel.writeByte(mo2112a());
            parcel.writeInt(this.f4819a);
            parcel.writeLong(this.f4815c);
            parcel.writeLong(this.f4816d);
        }

        public PendingMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f4815c = parcel.readLong();
            this.f4816d = parcel.readLong();
        }
    }

    public LargeMessageSnapshot(Parcel parcel) {
        super(parcel);
    }

    public static class ConnectedMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: c */
        public final boolean f4809c;

        /* renamed from: d */
        public final long f4810d;

        /* renamed from: e */
        public final String f4811e;

        /* renamed from: f */
        public final String f4812f;

        public ConnectedMessageSnapshot(int i, boolean z, long j, String str, String str2) {
            super(i);
            this.f4809c = z;
            this.f4810d = j;
            this.f4811e = str;
            this.f4812f = str2;
        }

        @Override // com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) 2;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: d */
        public String mo3919d() {
            return this.f4811e;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: e */
        public String mo3920e() {
            return this.f4812f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: g */
        public long mo3917g() {
            return this.f4810d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: l */
        public boolean mo3921l() {
            return this.f4809c;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.f4820b ? (byte) 1 : (byte) 0);
            parcel.writeByte(mo2112a());
            parcel.writeInt(this.f4819a);
            parcel.writeByte(this.f4809c ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f4810d);
            parcel.writeString(this.f4811e);
            parcel.writeString(this.f4812f);
        }

        public ConnectedMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f4809c = parcel.readByte() != 0;
            this.f4810d = parcel.readLong();
            this.f4811e = parcel.readString();
            this.f4812f = parcel.readString();
        }
    }
}
