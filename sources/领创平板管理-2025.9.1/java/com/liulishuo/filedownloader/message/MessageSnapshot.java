package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hem.FileDownloadUtils;
import com.huawei.hem.IMessageSnapshot;

/* loaded from: classes.dex */
public abstract class MessageSnapshot implements IMessageSnapshot, Parcelable {
    public static final Parcelable.Creator<MessageSnapshot> CREATOR = new DownloadSnapshotParcelCreator();

    /* renamed from: a */
    public final int f4819a;

    /* renamed from: b */
    public boolean f4820b;

    public static class StartedMessageSnapshot extends MessageSnapshot {
        public StartedMessageSnapshot(int i) {
            super(i);
        }

        @Override // com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) 6;
        }

        public StartedMessageSnapshot(Parcel parcel) {
            super(parcel);
        }
    }

    /* renamed from: com.liulishuo.filedownloader.message.MessageSnapshot$a */
    public static class DownloadSnapshotParcelCreator implements Parcelable.Creator<MessageSnapshot> {
        /* JADX WARN: Removed duplicated region for block: B:46:0x0093  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0096  */
        @Override // android.os.Parcelable.Creator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.liulishuo.filedownloader.message.MessageSnapshot createFromParcel(android.os.Parcel r5) {
            /*
                r4 = this;
                byte r0 = r5.readByte()
                r1 = 1
                if (r0 != r1) goto L9
                r0 = r1
                goto La
            L9:
                r0 = 0
            La:
                byte r2 = r5.readByte()
                r3 = -4
                if (r2 == r3) goto L83
                r3 = -3
                if (r2 == r3) goto L75
                r3 = -1
                if (r2 == r3) goto L67
                if (r2 == r1) goto L59
                r1 = 2
                if (r2 == r1) goto L4b
                r1 = 3
                if (r2 == r1) goto L3d
                r1 = 5
                if (r2 == r1) goto L2f
                r1 = 6
                if (r2 == r1) goto L28
                r5 = 0
                goto L91
            L28:
                com.liulishuo.filedownloader.message.MessageSnapshot$StartedMessageSnapshot r1 = new com.liulishuo.filedownloader.message.MessageSnapshot$StartedMessageSnapshot
                r1.<init>(r5)
                goto L90
            L2f:
                if (r0 == 0) goto L37
                com.liulishuo.filedownloader.message.LargeMessageSnapshot$RetryMessageSnapshot r1 = new com.liulishuo.filedownloader.message.LargeMessageSnapshot$RetryMessageSnapshot
                r1.<init>(r5)
                goto L90
            L37:
                com.liulishuo.filedownloader.message.SmallMessageSnapshot$RetryMessageSnapshot r1 = new com.liulishuo.filedownloader.message.SmallMessageSnapshot$RetryMessageSnapshot
                r1.<init>(r5)
                goto L90
            L3d:
                if (r0 == 0) goto L45
                com.liulishuo.filedownloader.message.LargeMessageSnapshot$ProgressMessageSnapshot r1 = new com.liulishuo.filedownloader.message.LargeMessageSnapshot$ProgressMessageSnapshot
                r1.<init>(r5)
                goto L90
            L45:
                com.liulishuo.filedownloader.message.SmallMessageSnapshot$ProgressMessageSnapshot r1 = new com.liulishuo.filedownloader.message.SmallMessageSnapshot$ProgressMessageSnapshot
                r1.<init>(r5)
                goto L90
            L4b:
                if (r0 == 0) goto L53
                com.liulishuo.filedownloader.message.LargeMessageSnapshot$ConnectedMessageSnapshot r1 = new com.liulishuo.filedownloader.message.LargeMessageSnapshot$ConnectedMessageSnapshot
                r1.<init>(r5)
                goto L90
            L53:
                com.liulishuo.filedownloader.message.SmallMessageSnapshot$ConnectedMessageSnapshot r1 = new com.liulishuo.filedownloader.message.SmallMessageSnapshot$ConnectedMessageSnapshot
                r1.<init>(r5)
                goto L90
            L59:
                if (r0 == 0) goto L61
                com.liulishuo.filedownloader.message.LargeMessageSnapshot$PendingMessageSnapshot r1 = new com.liulishuo.filedownloader.message.LargeMessageSnapshot$PendingMessageSnapshot
                r1.<init>(r5)
                goto L90
            L61:
                com.liulishuo.filedownloader.message.SmallMessageSnapshot$PendingMessageSnapshot r1 = new com.liulishuo.filedownloader.message.SmallMessageSnapshot$PendingMessageSnapshot
                r1.<init>(r5)
                goto L90
            L67:
                if (r0 == 0) goto L6f
                com.liulishuo.filedownloader.message.LargeMessageSnapshot$ErrorMessageSnapshot r1 = new com.liulishuo.filedownloader.message.LargeMessageSnapshot$ErrorMessageSnapshot
                r1.<init>(r5)
                goto L90
            L6f:
                com.liulishuo.filedownloader.message.SmallMessageSnapshot$ErrorMessageSnapshot r1 = new com.liulishuo.filedownloader.message.SmallMessageSnapshot$ErrorMessageSnapshot
                r1.<init>(r5)
                goto L90
            L75:
                if (r0 == 0) goto L7d
                com.liulishuo.filedownloader.message.LargeMessageSnapshot$CompletedSnapshot r1 = new com.liulishuo.filedownloader.message.LargeMessageSnapshot$CompletedSnapshot
                r1.<init>(r5)
                goto L90
            L7d:
                com.liulishuo.filedownloader.message.SmallMessageSnapshot$CompletedSnapshot r1 = new com.liulishuo.filedownloader.message.SmallMessageSnapshot$CompletedSnapshot
                r1.<init>(r5)
                goto L90
            L83:
                if (r0 == 0) goto L8b
                com.liulishuo.filedownloader.message.LargeMessageSnapshot$WarnMessageSnapshot r1 = new com.liulishuo.filedownloader.message.LargeMessageSnapshot$WarnMessageSnapshot
                r1.<init>(r5)
                goto L90
            L8b:
                com.liulishuo.filedownloader.message.SmallMessageSnapshot$WarnMessageSnapshot r1 = new com.liulishuo.filedownloader.message.SmallMessageSnapshot$WarnMessageSnapshot
                r1.<init>(r5)
            L90:
                r5 = r1
            L91:
                if (r5 == 0) goto L96
                r5.f4820b = r0
                return r5
            L96:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r0 = "Can't restore the snapshot because unknown status: "
                java.lang.String r0 = com.huawei.hem.C0948f6.m1754L(r0, r2)
                r5.<init>(r0)
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.message.MessageSnapshot.C1704a.createFromParcel(android.os.Parcel):java.lang.Object");
        }

        @Override // android.os.Parcelable.Creator
        public MessageSnapshot[] newArray(int i) {
            return new MessageSnapshot[i];
        }
    }

    /* renamed from: com.liulishuo.filedownloader.message.MessageSnapshot$b */
    public interface SnapshotFlagContract {
        /* renamed from: b */
        MessageSnapshot mo3925b();
    }

    /* renamed from: com.liulishuo.filedownloader.message.MessageSnapshot$c */
    public static class DownloadSnapshotStateException extends IllegalStateException {
        public DownloadSnapshotStateException(String str, MessageSnapshot messageSnapshot) {
            super(FileDownloadUtils.m1955e("There isn't a field for '%s' in this message %d %d %s", str, Integer.valueOf(messageSnapshot.f4819a), Byte.valueOf(messageSnapshot.mo2112a()), messageSnapshot.getClass().getName()));
        }
    }

    public MessageSnapshot(int i) {
        this.f4819a = i;
    }

    /* renamed from: d */
    public String mo3919d() {
        throw new DownloadSnapshotStateException("getEtag", this);
    }

    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String mo3920e() {
        throw new DownloadSnapshotStateException("getFileName", this);
    }

    /* renamed from: f */
    public long mo3922f() {
        throw new DownloadSnapshotStateException("getLargeSofarBytes", this);
    }

    /* renamed from: g */
    public long mo3917g() {
        throw new DownloadSnapshotStateException("getLargeTotalBytes", this);
    }

    /* renamed from: h */
    public int mo3924h() {
        throw new DownloadSnapshotStateException("getRetryingTimes", this);
    }

    /* renamed from: i */
    public int mo3915i() {
        throw new DownloadSnapshotStateException("getSmallSofarBytes", this);
    }

    /* renamed from: j */
    public int mo3916j() {
        throw new DownloadSnapshotStateException("getSmallTotalBytes", this);
    }

    /* renamed from: k */
    public Throwable mo3923k() {
        throw new DownloadSnapshotStateException("getThrowable", this);
    }

    /* renamed from: l */
    public boolean mo3921l() {
        throw new DownloadSnapshotStateException("isResuming", this);
    }

    /* renamed from: m */
    public boolean mo3918m() {
        throw new DownloadSnapshotStateException("isReusedDownloadedFile", this);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.f4820b ? (byte) 1 : (byte) 0);
        parcel.writeByte(mo2112a());
        parcel.writeInt(this.f4819a);
    }

    public MessageSnapshot(Parcel parcel) {
        this.f4819a = parcel.readInt();
    }
}
