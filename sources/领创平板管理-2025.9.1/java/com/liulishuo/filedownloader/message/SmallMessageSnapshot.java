package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import com.huawei.hem.InterfaceC1009hg;
import com.liulishuo.filedownloader.message.MessageSnapshot;

/* loaded from: classes.dex */
public abstract class SmallMessageSnapshot extends MessageSnapshot {

    public static class CompletedFlowDirectlySnapshot extends CompletedSnapshot implements InterfaceC1009hg {
        public CompletedFlowDirectlySnapshot(int i, boolean z, int i2) {
            super(i, z, i2);
        }
    }

    public static class PausedSnapshot extends PendingMessageSnapshot {
        public PausedSnapshot(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.PendingMessageSnapshot, com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) -2;
        }
    }

    public static class WarnFlowDirectlySnapshot extends WarnMessageSnapshot implements InterfaceC1009hg {
        public WarnFlowDirectlySnapshot(int i, int i2, int i3) {
            super(i, i2, i3);
        }
    }

    public static class WarnMessageSnapshot extends PendingMessageSnapshot implements MessageSnapshot.InterfaceC1705b {
        public WarnMessageSnapshot(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.PendingMessageSnapshot, com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) -4;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot.InterfaceC1705b
        /* renamed from: b */
        public MessageSnapshot mo3925b() {
            return new PendingMessageSnapshot(this.f4819a, this.f4829c, this.f4830d);
        }

        public WarnMessageSnapshot(Parcel parcel) {
            super(parcel);
        }
    }

    public SmallMessageSnapshot(int i) {
        super(i);
        this.f4820b = false;
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: f */
    public long mo3922f() {
        return mo3915i();
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: g */
    public long mo3917g() {
        return mo3916j();
    }

    public static class ProgressMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: c */
        public final int f4831c;

        public ProgressMessageSnapshot(int i, int i2) {
            super(i);
            this.f4831c = i2;
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
        /* renamed from: i */
        public int mo3915i() {
            return this.f4831c;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.f4820b ? (byte) 1 : (byte) 0);
            parcel.writeByte(mo2112a());
            parcel.writeInt(this.f4819a);
            parcel.writeInt(this.f4831c);
        }

        public ProgressMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f4831c = parcel.readInt();
        }
    }

    public static class RetryMessageSnapshot extends ErrorMessageSnapshot {

        /* renamed from: e */
        public final int f4832e;

        public RetryMessageSnapshot(int i, int i2, Throwable th, int i3) {
            super(i, i2, th);
            this.f4832e = i3;
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.ErrorMessageSnapshot, com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) 5;
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: h */
        public int mo3924h() {
            return this.f4832e;
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4832e);
        }

        public RetryMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f4832e = parcel.readInt();
        }
    }

    public static class CompletedSnapshot extends SmallMessageSnapshot {

        /* renamed from: c */
        public final boolean f4821c;

        /* renamed from: d */
        public final int f4822d;

        public CompletedSnapshot(int i, boolean z, int i2) {
            super(i);
            this.f4821c = z;
            this.f4822d = i2;
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
        /* renamed from: j */
        public int mo3916j() {
            return this.f4822d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public boolean mo3918m() {
            return this.f4821c;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.f4820b ? (byte) 1 : (byte) 0);
            parcel.writeByte(mo2112a());
            parcel.writeInt(this.f4819a);
            parcel.writeByte(this.f4821c ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.f4822d);
        }

        public CompletedSnapshot(Parcel parcel) {
            super(parcel);
            this.f4821c = parcel.readByte() != 0;
            this.f4822d = parcel.readInt();
        }
    }

    public static class ErrorMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: c */
        public final int f4827c;

        /* renamed from: d */
        public final Throwable f4828d;

        public ErrorMessageSnapshot(int i, int i2, Throwable th) {
            super(i);
            this.f4827c = i2;
            this.f4828d = th;
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
        /* renamed from: i */
        public int mo3915i() {
            return this.f4827c;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public Throwable mo3923k() {
            return this.f4828d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.f4820b ? (byte) 1 : (byte) 0);
            parcel.writeByte(mo2112a());
            parcel.writeInt(this.f4819a);
            parcel.writeInt(this.f4827c);
            parcel.writeSerializable(this.f4828d);
        }

        public ErrorMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f4827c = parcel.readInt();
            this.f4828d = (Throwable) parcel.readSerializable();
        }
    }

    public static class PendingMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: c */
        public final int f4829c;

        /* renamed from: d */
        public final int f4830d;

        public PendingMessageSnapshot(int i, int i2, int i3) {
            super(i);
            this.f4829c = i2;
            this.f4830d = i3;
        }

        @Override // com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) 1;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: i */
        public int mo3915i() {
            return this.f4829c;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: j */
        public int mo3916j() {
            return this.f4830d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.f4820b ? (byte) 1 : (byte) 0);
            parcel.writeByte(mo2112a());
            parcel.writeInt(this.f4819a);
            parcel.writeInt(this.f4829c);
            parcel.writeInt(this.f4830d);
        }

        public PendingMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f4829c = parcel.readInt();
            this.f4830d = parcel.readInt();
        }
    }

    public SmallMessageSnapshot(Parcel parcel) {
        super(parcel);
    }

    public static class ConnectedMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: c */
        public final boolean f4823c;

        /* renamed from: d */
        public final int f4824d;

        /* renamed from: e */
        public final String f4825e;

        /* renamed from: f */
        public final String f4826f;

        public ConnectedMessageSnapshot(int i, boolean z, int i2, String str, String str2) {
            super(i);
            this.f4823c = z;
            this.f4824d = i2;
            this.f4825e = str;
            this.f4826f = str2;
        }

        @Override // com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) 2;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: d */
        public String mo3919d() {
            return this.f4825e;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: e */
        public String mo3920e() {
            return this.f4826f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: j */
        public int mo3916j() {
            return this.f4824d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: l */
        public boolean mo3921l() {
            return this.f4823c;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.f4820b ? (byte) 1 : (byte) 0);
            parcel.writeByte(mo2112a());
            parcel.writeInt(this.f4819a);
            parcel.writeByte(this.f4823c ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.f4824d);
            parcel.writeString(this.f4825e);
            parcel.writeString(this.f4826f);
        }

        public ConnectedMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f4823c = parcel.readByte() != 0;
            this.f4824d = parcel.readInt();
            this.f4825e = parcel.readString();
            this.f4826f = parcel.readString();
        }
    }
}
