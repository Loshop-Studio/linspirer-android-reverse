package com.liulishuo.filedownloader.message;

import com.huawei.hem.FileDownloadUtils;

/* loaded from: classes.dex */
public interface BlockCompleteMessage {

    public static class BlockCompleteMessageImpl extends MessageSnapshot implements BlockCompleteMessage {

        /* renamed from: c */
        public final MessageSnapshot f4806c;

        public BlockCompleteMessageImpl(MessageSnapshot messageSnapshot) {
            super(messageSnapshot.f4819a);
            if (messageSnapshot.mo2112a() != -3) {
                throw new IllegalArgumentException(FileDownloadUtils.m1955e("can't create the block complete message for id[%d], status[%d]", Integer.valueOf(messageSnapshot.f4819a), Byte.valueOf(messageSnapshot.mo2112a())));
            }
            this.f4806c = messageSnapshot;
        }

        @Override // com.huawei.hem.InterfaceC1034ig
        /* renamed from: a */
        public byte mo2112a() {
            return (byte) 4;
        }

        @Override // com.liulishuo.filedownloader.message.BlockCompleteMessage
        /* renamed from: c */
        public MessageSnapshot mo3914c() {
            return this.f4806c;
        }
    }

    /* renamed from: c */
    MessageSnapshot mo3914c();
}
